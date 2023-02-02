import express from "express";
import {
    getSiswa,
    getSiswaById,
    createSiswa,
    updateSiswa,
    deleteSiswa,
    getSiswaByIdguru,
} from "../controllers/Siswa.js"
import { verifyUser } from "../middleware/AuthUser.js";

const router = express.Router();

router.get('/siswa',verifyUser,getSiswa)

router.get('/view/siswa',getSiswa)

router.get('/siswa/:id',verifyUser,getSiswaById)
router.get('/guru/siswa/:id',getSiswaByIdguru)


router.post('/siswa',verifyUser,createSiswa)

router.patch('/siswa/:id',verifyUser,updateSiswa)


router.delete('/siswa/:id',verifyUser,deleteSiswa)

export default router;