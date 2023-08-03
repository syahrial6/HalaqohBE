import siswa from "../models/SiswaModel.js";
import user from "../models/UserModel.js";
import history from "../models/History.js";
import { Op, where } from "sequelize";

export const getHistory = async (req, res) => {
    try {
        let response;
        response = await history.findAll({
            attributes: ["name", "kelas", "hafalan", "ayat", "updatedAt", "siswaId"]
        })
        if (response.length == 0) {
            res.status(200).json("Array Kosong")
        }
        else {
            res.status(200).json(response);
        }

    } catch (error) {
        res.status(500).json({ msg: error.message })
    }
}

export const getHistoryById = async (req, res) => {
    try {
        const History = await history.findAll({
            where: {
                siswaId: req.params.id
            }
        });
        if (!History) return res.status(404).json({ msg: "Data tidak ada" })
        let response;
        if (req.role === "admin") {
            response = await history.findAll({
                attributes: ["uuid", "id", "name", "kelas", "hafalan", "createdAt", "ayat", "updatedAt"],
                where: {
                    id: History.id
                }
            })
        } else {
            response = await history.findAll({
                attributes: ["uuid", "id", "name", "kelas", "hafalan", "ayat", "updatedAt"],
                where: {
                    siswaId: req.params.id
                },

            })
        }
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({ msg: error.message })
    }
}

export const tambahHistory = async (req, res) => {
    const { name, kelas, hafalan, ayat, siswaId } = req.body
    try {
        await history.create({
            name: name,
            kelas: kelas,
            hafalan: hafalan,
            ayat: ayat,
            siswaId: siswaId
        });
        res.status(201).json({ msg: "Data Ditambahkan" })

    } catch (error) {
        res.status(500).json({ msg: error.message })
    }
}

export const deletehistory = async (req, res) => {
    const History = await history.findAll({
        where: {
            siswaId: req.params.id
        }
    });
    if (!History) return res.status(404).json({ msg: "Data Tidak ada" })
    try {
        await history.destroy({
            where: {
                siswaId: req.params.id
            }
        })
        res.status(200).json({ msg: "Delete Berhasil" })
    } catch (error) {
        res.status(400).json({ msg: error.message })
    }
}


export const deletehistory1 = async (req, res) => {
    const History = await history.findOne({
        where: {
            id: req.params.id
        }
    });
    if (!History) return res.status(404).json({ msg: "Data Tidak ada" })
    try {
        await history.destroy({
            where: {
                id: req.params.id
            }
        })
        res.status(200).json({ msg: "Delete Berhasil" })
    } catch (error) {
        res.status(400).json({ msg: error.message })
    }
}

