import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const {DataTypes} = Sequelize;

const nama_surah = db.define('list_surah',{
    nama_surah:{
        type:DataTypes.STRING,
        allowNull:false,
        validate:{
            notEmpty:true,
        }
    }
},{
    freezeTableName:true,
    timestamps:false
})

export default nama_surah
