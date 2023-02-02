import user from "../models/UserModel.js";

export const verifyUser = async(req,res,next)=>{
    if (!req.session.userId) return res.status(401).json({msg:"Mohon login ke akun anda"})
    const User = await user.findOne({
        where:{
            uuid : req.session.userId
        }
    });
    if(!User) return res.status(404).json({msg:"User Tidak aDA"})
    req.userId = User.id;
    req.role = User.role;
    next();

}
export const adminOnly = async(req,res,next)=>{
    const User = await user.findOne({
        where:{
            uuid : req.session.userId
        }
    });
    if(!User) return res.status(404).json({msg:"User Tidak aDA"})
    if(User.role!== "admin") return res.status(403).json({msg:"Dilarang Masuk"})
    next();

}