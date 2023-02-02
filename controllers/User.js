import user from "../models/UserModel.js"
import argon2 from "argon2";


export const getUser = async(req,res) =>{
    try {
        const response = await user.findAll({
            attributes:["id","uuid","name","nama_lengkap","email","role"]
        });
        res.status(200).json(response)
    } catch (error) {
        res.status(500).json({msg:error.message})
    }

}

export const getUserberanda = async(req,res) =>{
    try {
        const response = await user.findAll({
            attributes:["id","uuid","name","nama_lengkap","email","role"]
        });
        res.status(200).json(response)
    } catch (error) {
        res.status(500).json({msg:error.message})
    }

}

export const getUserById = async(req,res) =>{
    try {
        const response = await user.findOne({
            attributes:["uuid","name","nama_lengkap","email","role"],
            where:{
                uuid : req.params.id
            }
        });
        res.status(200).json(response)
    } catch (error) {
        res.status(500).json({msg:error.message})
    }

}

export const createUser = async(req,res) =>{
    const {name,nama_lengkap,email,password,confPassword,role} = req.body;
    if (password !== confPassword) return res.status(400).json({msg:"Password dan konfirmasi Password tidak sama"})
    const hashPassword = await argon2.hash(password);
    try {
        await user.create({
            name : name,
            nama_lengkap : nama_lengkap,
            email : email,
            password : hashPassword,
            role : role
        })
        res.status(201).json({msg:"Register Berhasil"})
    } catch (error) {
        res.status(400).json({msg:error.message})
    }

}

export const updateUser = async(req,res) =>{
    const User = await user.findOne({
        where:{
            uuid : req.params.id
        }
    });
    if(!User) return res.status(404).json({msg:"User Tidak aDA"})
    const {name,email,nama_lengkap,password,confPassword,role} = req.body;
    let hashPassword;
    if(password==="" || password===null){
        hashPassword = User.password
    }else{
        hashPassword = await argon2.hash(password);
    }
    if (password !== confPassword) return res.status(400).json({msg:"Password dan konfirmasi Password tidak sama"})
    try {
        await user.update({
            name : name,
            nama_lengkap : nama_lengkap,
            email : email,
            password : hashPassword,
            role : role
        },{
            where:{
                id:User.id
            }
        })
        res.status(200).json({msg:"Update Berhasil"})
    } catch (error) {
        res.status(400).json({msg:error.message})
    }

}

export const deleteUser = async(req,res) =>{
    const User = await user.findOne({
        where:{
            uuid : req.params.id
        }
    });
    if(!User) return res.status(404).json({msg:"User Tidak aDA"})
    try {
        await User.destroy({
            where:{
                id:user.id
            }
        })
        res.status(200).json({msg:"Delete Berhasil"})
    } catch (error) {
        res.status(400).json({msg:error.message})
    }
}