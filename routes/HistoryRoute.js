import express from "express"
import {getHistory,
    getHistoryById,
    tambahHistory,
    deletehistory,
    deletehistory1
} from "../controllers/History.js";

const router = express.Router();

router.get('/history/siswa',getHistory)
router.post('/history/tambah',tambahHistory)
router.get('/history/siswa/:id',getHistoryById)
router.delete('/history/delete/:id',deletehistory) //mendelete seluruh history
router.delete('/history1/delete/:id',deletehistory1) //mendelete satu history

export default router;