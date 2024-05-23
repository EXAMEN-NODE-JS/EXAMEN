import { Router } from "express";
import rutaFactura from "./routers.factura.js";

const ruta = Router();

ruta.use("/api", rutaFactura);

export default ruta;