import express from "express";
import {
    getUser,
    getUserById,
    createUser,
    updateUser,
    deleteUser,
    getUserberanda
} from "../controllers/User.js"
import { verifyUser,adminOnly } from "../middleware/AuthUser.js";

const router = express.Router();

router.get('/users', getUser)

router.get('/users/beranda',getUser)

router.get('/users/:id',getUserById)


router.post('/users',createUser)

router.patch('/users/:id',verifyUser,adminOnly,updateUser)


router.delete('/users/:id',verifyUser,adminOnly,deleteUser)

export default router;