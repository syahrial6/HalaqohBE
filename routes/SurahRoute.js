import express from "express";
import {getSurah} from "../controllers/Surah.js"

const router = express.Router();

router.get('/surah',getSurah);

export default router;