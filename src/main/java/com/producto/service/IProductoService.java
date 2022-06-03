/*
    Autor: Ramiro Ramirez Ramirez
    Fecha de creación:20 de Abril 2022
    Fecha de Actualización: 11 de Mayo de 2022
    Descripción:
 */
package com.producto.service;

import com.producto.entity.Producto;
import java.util.List;

public interface IProductoService {

    public List<Producto> obtenerRegistros();

    public void actualizarRegistro(Producto producto);

    public void eliminarRegistro(Producto producto);

    public void crearRegistro(Producto producto);

    public Producto obtenerRegistro(int idproducto);
}
