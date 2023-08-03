import express from "express";
import cors from "cors";
import session from "express-session";
import fileUpload from "express-fileupload";
import dotenv from "dotenv";
import UserRoute from "./routes/UserRoute.js"
import SiswaRoute from "./routes/SiswaRoute.js"
import SurahRoute from "./routes/SurahRoute.js";
import HistoryRoute from "./routes/HistoryRoute.js"
import db from "./config/Database.js";
import AuthRoute from "./routes/AuthRoute.js"
import SequelizeStore from "connect-session-sequelize";





dotenv.config()

const app = express();

const session_store = SequelizeStore(session.Store);
const store = new session_store({
    db : db
});


// (async() => {
//         await db.sync();
// })();

app.use(session({
    secret:process.env.SESSION_SECRET,
    resave:false,
    store:store,
    saveUninitialized:true,
    cookie:{
        secure: "auto"
    }
}))

app.use(cors({
    credentials:true,
    origin: "http://localhost:3000"

}))





app.use(express.json());
app.use(fileUpload())
app.use(express.static("public"))
app.use(UserRoute);
app.use(SiswaRoute);
app.use(AuthRoute);
app.use(SurahRoute);
app.use(HistoryRoute);

// store.sync();

app.listen(process.env.APP_PORT, ()=>{
    console.log("Server jalan")
})