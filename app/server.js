import express from "express"
import ruta from "./routers/index.js";

const app = express();

// rutas
app.use("/", ruta)

export default app;