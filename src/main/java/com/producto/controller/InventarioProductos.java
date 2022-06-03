/*
    Autor: Ramiro Ramirez Ramirez
    Fecha de creación:20 de Abril 2022
    Fecha de Actualización: 11 de Mayo de 2022
    Descripción:
*/
package com.producto.controller;

import com.producto.entity.Producto;
import com.producto.service.IProductoService;
import com.producto.service.ProductoServiceImpl;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InventarioProductos extends HttpServlet {

    IProductoService service;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println("Action:" + action);
        switch (action) {
            case "listar":
                System.out.println("Listando...");
                Listar(request, response);
                break;
            case "crearForm":
                System.out.println("Creando...");
                crearFormulario(request, response);
                break;
            case "crear":
                System.out.println("Creando...");
                crear(request, response);
                break;
            case "actualizarForm":
                System.out.println("Creando...");
                actualizarForm(request, response);
                break;
            case "actualizar":
                System.out.println("Actualizando...");
                actualizar(request, response);
                break;
            case "eliminar":
                System.out.println("Elmininando...");
                Eliminar(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("");
        doGet(request, response);
    }

    private void Listar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("pages/listar.jsp");
        this.service = new ProductoServiceImpl();
        List<Producto> ListaProducto = this.service.obtenerRegistros();
        request.setAttribute("ListaProducto", ListaProducto);
        dispatcher.forward(request, response);
    }

    private void crearFormulario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("pages/crear.jsp");
        dispatcher.forward(request, response);
    }

    private void actualizarForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Producto producto = this.service.obtenerRegistro(Integer.parseInt(request.getParameter("idproducto")));
        request.setAttribute("producto", producto);
        RequestDispatcher dispatcher = request.getRequestDispatcher("pages/actualizar.jsp");
        dispatcher.forward(request, response);
    }

    private void crear(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Producto producto 
          = new Producto();
        producto.setNombre(request.getParameter("nombreproducto"));
        producto.setDescripcion(request.getParameter("descripcion"));
        producto.setPreciocompra(Double.parseDouble(request.getParameter("precioventa")));
        producto.setPrecioventa(Double.parseDouble(request.getParameter("preciocompra")));

        service = new ProductoServiceImpl();
        service.crearRegistro(producto);
        System.out.println("INGRESADO: " + producto.getNombre());

        RequestDispatcher dispatcher = request.getRequestDispatcher("InventarioProductos?action=listar");
        dispatcher.forward(request, response);
        List<Producto> ListaProducto = this.service.obtenerRegistros();
        this.service = new ProductoServiceImpl();
        request.setAttribute("ListaProducto", ListaProducto);
        dispatcher.forward(request, response);
    }

    private void actualizar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        System.out.println(request.getParameter("idproducto"));
        Producto producto = new Producto(Integer.parseInt(request.getParameter("idproducto")));
        
        producto.setNombre(request.getParameter("nombreproducto"));
        producto.setDescripcion(request.getParameter("descripcion"));
        producto.setPreciocompra(Double.parseDouble(request.getParameter("precioventa")));
        producto.setPrecioventa(Double.parseDouble(request.getParameter("preciocompra")));
        service = new ProductoServiceImpl();
        service.actualizarRegistro(producto);
        System.out.println("INGRESADO: " + producto.getNombre());

        RequestDispatcher dispatcher = request.getRequestDispatcher("InventarioProductos?action=listar");
        dispatcher.forward(request, response);
        this.service = new ProductoServiceImpl();
        List<Producto> ListaProducto = this.service.obtenerRegistros();
        request.setAttribute("ListaProducto", ListaProducto);
        dispatcher.forward(request, response);
    }

    private void Eliminar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("InventarioProductos?action=listar");
        this.service = new ProductoServiceImpl();
        Producto producto = new Producto();
        producto = this.service.obtenerRegistro(Integer.parseInt(request.getParameter("idproducto")));
        service.eliminarRegistro(producto);
        System.out.println("eliminando");
        List<Producto> ListaProducto = this.service.obtenerRegistros();
        request.setAttribute("ListaProducto", ListaProducto);
        dispatcher.forward(request, response);
    }

}