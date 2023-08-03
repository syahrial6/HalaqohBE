import siswa from "../models/SiswaModel.js";
import user from "../models/UserModel.js";
import { Op, where } from "sequelize";


export const getSiswa = async (req, res) => {
    try {
        let response;
        const search = req.query.search_query || "";
        if (req.role === "admin") {
            response = await siswa.findAll({
                where: {
                    [Op.or]: [{
                        name: {
                            [Op.like]: '%' + search + '%'
                        }
                    }, {
                        kelas: {
                            [Op.like]: '%' + search + '%'
                        }
                    }
                    ]
                },
                include: [{
                    model: user,
                    attributes: ["nama_lengkap", "npycode"]
                }],
                order: [
                    ['id', 'DESC']
                ]
            });
        } else {
            response = await siswa.findAll({
                where: {
                    [Op.or]: [{
                        name: {
                            [Op.like]: '%' + search + '%'
                        }
                    }, {
                        kelas: {
                            [Op.like]: '%' + search + '%'
                        }
                    }]
                },
                include: [{
                    model: user,
                    attributes: ["nama_lengkap", "npycode"]
                }],
                order: [
                    ['id', 'DESC']
                ]
            });
        }
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({ msg: error.message })
    }
}


export const getSiswa2 = async (req, res) => {
    try {
        let response;
        const page = parseInt(req.query.page) || 1; // halaman yang ingin ditampilkan (default: 1)
        const limit = parseInt(req.query.limit) || 10; // jumlah item per halaman (default: 10)
        const offset = (page - 1) * limit;
        const search = req.query.search_query || "";
        if (req.role === "admin") {
            response = await siswa.findAndCountAll({
                where: {
                    [Op.or]: [{
                        name: {
                            [Op.like]: '%' + search + '%'
                        }
                    }, {
                        kelas: {
                            [Op.like]: '%' + search + '%'
                        }
                    }
                    ]
                },
                include: [{
                    model: user,
                    attributes: ["nama_lengkap", "npycode"]
                }],
                order: [
                    ['id', 'DESC']
                ],
                limit: limit,
                offset: offset
            });
        } else {
            response = await siswa.findAndCountAll({
                where: {
                    [Op.or]: [{
                        name: {
                            [Op.like]: '%' + search + '%'
                        }
                    }, {
                        kelas: {
                            [Op.like]: '%' + search + '%'
                        }
                    }]
                },
                include: [{
                    model: user,
                    attributes: ["nama_lengkap", "npycode"]
                }],
                order: [
                    ['id', 'DESC']
                ],
                limit: limit,
                offset: offset
            });
        }

        const totalPages = Math.ceil(response.count / limit); // total halaman
        const currentPage = page > totalPages ? totalPages : page; // halaman saat ini

        res.status(200).json({
            totalItems: response.count,
            totalPages: totalPages,
            currentPage: currentPage,
            items: response.rows
        });
    } catch (error) {
        res.status(500).json({ msg: error.message })
    }
}



export const getSiswaberanda = async (req, res) => {
    try {
        let response;
        if (req.role === "admin") {
            response = await siswa.findAll({
                attributes: ["uuid", "id", "name", "kelas", "hafalan", "createdAt", "ayat", "updatedAt"],
                include: [{
                    model: user,
                    attributes: ["nama_lengkap", "npycode"]
                }]
            })
        } else {
            response = await siswa.findAll({
                attributes: ["uuid", "name", "kelas", "hafalan", "createdAt", "ayat", "updatedAt"],
                where: {
                    userId: req.userId
                },
                include: [{
                    model: user,
                    attributes: ["nama_lengkap", "npycode"]
                }]
            })
        }
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({ msg: error.message })
    }
}

export const getSiswaById = async (req, res) => {
    try {
        const Siswa = await siswa.findOne({
            where: {
                id: req.params.id
            }
        });
        if (!Siswa) return res.status(404).json({ msg: "Data tidak ada" })
        let response;
        if (req.role === "admin") {
            response = await siswa.findOne({
                attributes: ["uuid", "id", "name", "kelas", "hafalan", "createdAt", "ayat", "updatedAt"],
                where: {
                    id: Siswa.id
                },
                include: [{
                    model: user,
                    attributes: ["nama_lengkap", "npycode", "id"]
                }]
            })
        } else {
            response = await siswa.findOne({
                attributes: ["uuid", "id", "name", "kelas", "hafalan", "ayat", "createdAt"],
                where: {
                    [Op.and]: [{ id: Siswa.id },]
                },

                include: [{
                    model: user,
                    attributes: ["nama_lengkap", "npycode", "id"]
                }]
            })
        }
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({ msg: error.message })
    }

}

export const getSiswaByIdguru = async (req, res) => {
    try {
        let response;
        response = await siswa.findAll({
            attributes: ["uuid", "id", "name", "kelas", "hafalan", "ayat", "updatedAt"],
            where: {
                userId: req.params.id
            },
            include: [{
                model: user,
                attributes: ["nama_lengkap", "npycode", "uuid"]
            }]
        })

        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({ msg: error.message })
    }

}

export const createSiswa = async (req, res) => {
    const { name, kelas, hafalan, ayat, userId } = req.body
    try {
        await siswa.create({
            name: name,
            kelas: kelas,
            hafalan: hafalan,
            ayat: ayat,
            userId: userId,
        });
        res.status(201).json({ msg: "Data Ditambahkan" })

    } catch (error) {
        res.status(500).json({ msg: error.message })
    }
}


export const updateSiswa = async (req, res) => {
    try {
        const Siswa = await siswa.findOne({
            where: {
                id: req.params.id
            }
        });

        if (!Siswa) {
            return res.status(404).json({ msg: "Data Tidak Ditemukan" });
        }
        else {
            const { name, kelas, hafalan, ayat, userId } = req.body
            if (req.role === "admin") {
                await siswa.update(
                    {
                        name: name,
                        kelas: kelas,
                        hafalan: hafalan,
                        ayat: ayat,
                        userId: userId,
                    },
                    {
                        where: {
                            id: Siswa.id
                        }
                    }
                );
            } else {
                if (req.userId !== Siswa.userId) {
                    return res.status(403).json({ msg: "Akses Dilarang" });
                }
                await siswa.update(
                    {
                        name: name,
                        kelas: kelas,
                        hafalan: hafalan,
                        ayat: ayat,
                        userId: userId,
                    },
                    {
                        where: {
                            id: Siswa.id,
                            userId: req.userId
                        }
                    }
                );
            }
        }
        res.status(200).json({ msg: "Update Berhasil" });
    } catch (error) {
        res.status(500).json({ msg: error.message });
    }
};



export const deleteSiswa = async (req, res) => {
    try {
        const Siswa = await siswa.findOne({
            where: {
                id: req.params.id
            }
        });
        if (!Siswa) return res.status(404).json({ msg: "Data Tidak Ditemukan" })
        if (req.role === "admin") {
            await siswa.destroy({
                where: {
                    id: req.params.id
                }
            })
        } else {
            if (req.userId !== Siswa.userId) return res.status(403).json({ msg: "Akses Dilarang,Anda Perlu Login" })
            await siswa.destroy({
                where: {
                    [Op.and]: [{ id: Siswa.id }, { userId: req.userId }]
                }
            })
        }
        res.status(200).json({ msg: "Data Berhasil Dihapus" });
    } catch (error) {
        res.status(500).json({ msg: error.message })
    }


}