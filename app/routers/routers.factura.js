import { Router } from "express";
import { crearFactura, eliminaFactura, listarFactura, modificarFactura, mostrarFactura } from "../controllers/controllers.factura";

const rutaFactura = Router();


rutaFactura.get("/factura/:id", listarFactura)
rutaFactura.get("/factura", mostrarFactura)
rutaFactura.post("/factura", crearFactura)
rutaFactura.put("/factura", modificarFactura)
rutaFactura.delete("/factura", eliminaFactura)


export default rutaFactura;