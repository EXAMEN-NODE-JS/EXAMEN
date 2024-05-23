import pool from "../config/db.mysql.js"

export const  listarFactura = async(req, res) =>{
    const id =req.params["id"]
    try {
        const [respuesta] = await pool.query(`CALL SP_LISTAR_FACTURA('${id}')`);
        res.json({"respuesta": respuesta})
    } catch (error) {
        res.json({"error": error});
    }
    
};


export const  mostrarFactura = async(req, res) =>{
    try {
        const [respuesta] = await pool.query(`CALL`);
        req.json({"respuesta": respuesta})
    } catch (error) {
        res.json({"error": error});
    }
    
};


export const  crearFactura = async(req, res) =>{
    try {
        const [respuesta] = await pool.query(`CALL`);
        req.json({"respuesta": respuesta})
    } catch (error) {
        res.json({"error": error});
    }
    
};


export const  modificarFactura = async(req, res) =>{
    try {
        const [respuesta] = await pool.query(`CALL`);
        req.json({"respuesta": respuesta})
    } catch (error) {
        res.json({"error": error});
    }
    
};


export const  eliminaFactura = async(req, res) =>{
    try {
        const [respuesta] = await pool.query(`CALL`);
        req.json({"respuesta": respuesta})
    } catch (error) {
        res.json({"error": error});
    }
    
};