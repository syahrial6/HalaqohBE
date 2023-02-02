import {Sequelize} from "sequelize";

const db = new Sequelize('crud', 'root', '', {
    host: "localhost",
    dialect: "mysql"
});

export default db;