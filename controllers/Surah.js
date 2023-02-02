import nama_surah from "../models/Surah.js";

export const getSurah = async(req,res) =>{
    try {
        const response = await nama_surah.findAll();
        res.status(200).json(response)
    } catch (error) {
        res.status(500).json({msg:error.message})
    }

}
