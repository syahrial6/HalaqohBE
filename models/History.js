import { Sequelize } from "sequelize";
import db from "../config/Database.js";
import siswa from "./SiswaModel.js";
import user from "./UserModel.js";

const {DataTypes} = Sequelize;

const history = db.define('history',{
    uuid:{
        type:DataTypes.STRING,
        defaultValue:DataTypes.UUIDV4,
        allowNull:false,
        validate:{
            notEmpty:true
        }
    },
    name:{
        type:DataTypes.STRING,
        allowNull:false,
        validate:{
            notEmpty:true,
            len:[3,100]
        }
    },
    kelas:{
        type:DataTypes.STRING,
        allowNull:false,
        validate:{
            notEmpty:true,
        }
    },
    hafalan:{
        type:DataTypes.STRING,
        allowNull:false,
        validate:{
            notEmpty:true,
        }
    },
    ayat:{
        type:DataTypes.INTEGER,
        allowNull:false,
        validate:{
            notEmpty:true,
        }
    },
    siswaId:{
        type:DataTypes.STRING,
        allowNull:false,
        validate:{
            notEmpty:true,
        }
    },
},{
    freezeTableName:true
})

siswa.hasMany(history)
history.belongsTo(siswa, {foreignKey: "siswaId"});


export default history
