import express from "express";
import {
    getSiswa,
    getSiswaById,
    createSiswa,
    updateSiswa,
    deleteSiswa,
    getSiswaByIdguru,
    getSiswa2,
    getSiswaberanda
} from "../controllers/Siswa.js"
import { verifyUser } from "../middleware/AuthUser.js";

const router = express.Router();

router.get('/siswa',verifyUser,getSiswa)
router.get('/siswa2',verifyUser,getSiswa2)

router.get('/view/siswa',getSiswa)

router.get('/siswa/:id',getSiswaById)
router.get('/beranda/siswa/:id',getSiswaberanda)
router.get('/guru/siswa/:id',getSiswaByIdguru)


router.post('/siswa',verifyUser,createSiswa)

router.patch('/siswa/:id',verifyUser,updateSiswa)


router.delete('/siswa/:id',verifyUser,deleteSiswa)

export default router;