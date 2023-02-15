import express from "express"
import {getHistory,
    getHistoryById,
    tambahHistory
} from "../controllers/History.js";

const router = express.Router();

router.get('/history/siswa',getHistory)
router.post('/history/tambah',tambahHistory)
router.get('/history/siswa/:id',getHistoryById)

export default router;