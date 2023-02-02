import siswa from "../models/SiswaModel.js";
import user from "../models/UserModel.js";
import {Op, where} from "sequelize";


export const getSiswa = async(req,res) =>{
    try {
        let response;
        const search = req.query.search_query || "";
        if (req.role==="admin"){
            response = await siswa.findAll({
                where:{
                    [Op.or]: [{name:{
                        [Op.like]: '%'+search+'%'
                    }}, {kelas:{
                        [Op.like]: '%'+search+'%'
                    }}
                ]
                },
                include:[{
                    model: user,
                    attributes:["name","email"]
                }],
                order:[
                    ['id', 'DESC']
                ]
            });
        }else{
            response = await siswa.findAll({
                where:{
                    [Op.or]: [{name:{
                        [Op.like]: '%'+search+'%'
                    }}, {kelas:{
                        [Op.like]: '%'+search+'%'
                    }}]
                },
                include:[{
                    model: user,
                    attributes:["name","email"]
                }],
                order:[
                    ['id', 'DESC']
                ]
            });
        }
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({msg:error.message})
    }
}



export const getSiswaberanda = async(req,res) =>{
    try {
        let response;
        if (req.role==="admin"){
            response = await siswa.findAll({
                attributes:["uuid","name","kelas","hafalan","createdAt","ayat","updatedAt"],
                include:[{
                    model: user,
                    attributes:["name","email"]
                }]
            })
        }else{
            response = await siswa.findAll({
                attributes:["uuid","name","kelas","hafalan","createdAt","ayat","updatedAt"],
                where:{
                    userId: req.userId
                },
                include:[{
                    model: user,
                    attributes:["name","email"]
                }]
            })
        }
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({msg:error.message})
    }
}

export const getSiswaById = async(req,res) =>{
    try {
        const Siswa = await siswa.findOne({
            where: {
                uuid: req.params.id
            }
        });
        if (!Siswa) return res.status(404).json({msg:"Data tidak ada"})
        let response;
        if (req.role==="admin"){
            response = await siswa.findOne({
                attributes:["uuid","name","kelas","hafalan","createdAt","ayat","updatedAt"],
                where: {
                    id: Siswa.id
                },
                include:[{
                    model: user,
                    attributes:["name","email"]
                }]
            })
        }else{
            response = await siswa.findOne({
                attributes:["uuid","name","kelas","hafalan","ayat","createdAt"],
                where:{
                    [Op.and]:[{id:Siswa.id},{userId:req.userId}]
                },
                include:[{
                    model: user,
                    attributes:["name","email"]
                }]
            })
        }
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({msg:error.message})
    }

}

export const getSiswaByIdguru = async(req,res) =>{
    try {
        let response;
            response = await siswa.findAll({
                attributes:["uuid","name","kelas","hafalan","ayat","updatedAt"],
                where:{
                    userId: req.params.id
                },
                include:[{
                    model: user,
                    attributes:["name","email"]
                }]
            })
        
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({msg:error.message})
    }

}

export const createSiswa = async(req,res) =>{
    const {name,kelas,hafalan,ayat} = req.body
    try { 
        await siswa.create({
            name:name,
            kelas:kelas,
            hafalan:hafalan,
            ayat:ayat,
            userId : req.userId
        });
        res.status(201).json({msg:"Data Ditambahkan"})
        
    } catch (error) {
        res.status(500).json({msg:error.message})
    }

}

export const updateSiswa = async(req,res) =>{
    try {
        const Siswa = await siswa.findOne({
            where: {
                uuid: req.params.id
            }
        });
        if (!Siswa) return res.status(404).json({msg:"Data tidak ada"})
        const {name,kelas,hafalan,ayat} = req.body
        if (req.role==="admin"){
            await siswa.update({name,kelas,hafalan,ayat},{
                where:{
                    id:Siswa.id
                }
                })
        }else{
            if(req.userId!==Siswa.userId) return res.status(403).json({msg:"Akses Dilarang"})
            await siswa.update({name,kelas,hafalan,ayat},{
                where:{
                    [Op.and]:[{id:Siswa.id},{userId:req.userId}]
                }
                })
        }
        res.status(200).json({msg:"Update Berhasil"});
    } catch (error) {
        res.status(500).json({msg:error.message})
    }
    

}

export const deleteSiswa = async(req,res) =>{
    try {
        const Siswa = await siswa.findOne({
            where: {
                uuid: req.params.id
            }
        });
        if (!Siswa) return res.status(404).json({msg:"Data tidak ada"})
        const {name,kelas,hafalan} = req.body
        if (req.role=== "admin"){
            await siswa.destroy({
                where:{
                    id:Siswa.id
                }
                })
        }else{
            if(req.userId !== Siswa.userId) return res.status(403).json({msg:"Akses Dilarang"})
            await siswa.destroy({
                where:{
                    [Op.and]:[{id:Siswa.id},{userId:req.userId}]
                }
                })
        }
        res.status(200).json({msg:"Hapus Berhasil"});
    } catch (error) {
        res.status(500).json({msg:error.message})
    }
    

}