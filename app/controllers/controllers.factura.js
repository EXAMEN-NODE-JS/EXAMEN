import { pool } from "../config/db.mysql.js"

export const listarFactura = async (req, res) => {
    const id = req.params["id"]
    try {
        const [respuesta] = await pool.query(` CALL SP_LISTAR_FACTURA(${id});`);
        res.json({"respuesta": respuesta[0][0]})
        
    } catch (error) {
        res.json({"error": error})
    }
}

export const mostrarFactura = async (req, res) => {
    try {
        const [respuesta] = await pool.query(`CALL SP_MOSTRAR_FACTURA();`);
        req.json({"Respuesta": respuesta[0][0]})
    } catch (error) {
        res.json({"error": error})
    }    
}

export const crearFactura = (req, res) => {
    try {
        
    } catch (error) {
        res.json({"error": error})
    }    
}

export const modificarFactura = (req, res) => {
    try {
        
    } catch (error) {
        res.json({"error": error})
    }    
}

export const eliminaFactura = (req, res) => {
    try {
        
    } catch (error) {
        res.json({"error": error})
    }    
}