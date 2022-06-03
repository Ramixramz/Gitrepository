/*
    Autor: Ramiro Ramirez Ramirez
    Fecha de creación:20 de Abril 2022
    Fecha de Actualización: 11 de Mayo de 2022
    Descripción:
 */
package com.producto.service;

import com.producto.entity.Producto;
import com.producto.model.IProductoModel;
import com.producto.model.ProductoModelImpl;
import java.util.List;

public class ProductoServiceImpl implements IProductoService {

    IProductoModel model = new ProductoModelImpl();

    @Override
    public List<Producto> obtenerRegistros() {
        return model.obtenerRegistros();
    }

    @Override
    public void actualizarRegistro(Producto producto) {
        model.actualizarRegistro(producto);
    }

    @Override
    public void eliminarRegistro(Producto producto) {
        model.eliminarRegistro(producto);
    }

    @Override
    public void crearRegistro(Producto producto) {
        model.crearRegistro(producto);
    }

    @Override
    public Producto obtenerRegistro(int idproducto) {
        return model.obtenerRegistro(idproducto);
    }

}
