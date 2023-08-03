import user from "../models/UserModel.js";
import argon2 from "argon2";

export const Login = async(req,res)=>{
    const User = await user.findOne({
        where:{
            npycode : req.body.npycode
        }
    });
    if(!User) return res.status(404).json({msg:"User Tidak Ditemukan"})
    const match = await argon2.verify(User.password, req.body.password)
    if (!match) return res.status(400).json({msg:"Password Salah"});
    req.session.userId= User.uuid;
    const id = User.id
    const uuid = User.uuid
    const name = User.name
    const npycode = User.npycode
    const role = User.role
    res.status(200).json({uuid,name,npycode,role,id});

}
export const Me = async(req,res)=>{
    if (!req.session.userId) return res.status(401).json({msg:"Mohon login ke akun anda"})
    const User = await user.findOne({
        attributes:["id","uuid","name","npycode","role"],
        where:{
            uuid : req.session.userId
        }
    });
    if(!User) return res.status(404).json({msg:"User Tidak Ditemukan"})
    res.status(200).json(User)

}

export const Logout = async(req,res)=>{
    req.session.destroy((err)=>{
        if (err) return res.status(400).json({msg:"Tidak dapat keluar"})
        res.status(200).json({msg:"Anda telah keluar"})
    })
}