import user from "../models/UserModel.js";
import argon2 from "argon2";

export const Login = async(req,res)=>{
    const User = await user.findOne({
        where:{
            email : req.body.email
        }
    });
    if(!User) return res.status(404).json({msg:"User Tidak aDA"})
    const match = await argon2.verify(User.password, req.body.password)
    if (!match) return res.status(400).json({msg:"Wrong Password"});
    req.session.userId= User.uuid;
    const id = User.id
    const uuid = User.uuid
    const name = User.name
    const email = User.email
    const role = User.role
    res.status(200).json({uuid,name,email,role,id});

}
export const Me = async(req,res)=>{
    if (!req.session.userId) return res.status(401).json({msg:"Mohon login ke akun anda"})
    const User = await user.findOne({
        attributes:["id","uuid","name","email","role"],
        where:{
            uuid : req.session.userId
        }
    });
    if(!User) return res.status(404).json({msg:"User Tidak aDA"})
    res.status(200).json(User)

}

export const Logout = async(req,res)=>{
    req.session.destroy((err)=>{
        if (err) return res.status(400).json({msg:"Tidak dapat keluar"})
        res.status(200).json({msg:"Anda telah keluar"})
    })
}