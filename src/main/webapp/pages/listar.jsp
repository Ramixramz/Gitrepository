<%--
    Autor: Ramiro Ramirez Ramirez
    Fecha de creación:20 de Abril 2022
    Fecha de Actualización: 11 de Mayo de 2022
    Descripción:
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style rel="stylesheet" >
            <%@include file="../resources/css/tablas.css" %>
        </style>
        <style rel="stylesheet" >
            <%@include file="../resources/css/estilo.css" %>
        </style>
        <link rel="stylesheet" href="../webjars/fontawesome/4.7.0/css/font-awesome.css">
    </head>

    <body>
        <nav class="navbar">
            <div class="navbar-container container">
                <input type="checkbox" name="" id="">
                <div class="hamburger-lines">
                    <span class="line line1"></span>
                    <span class="line line2"></span>
                    <span class="line line3"></span>
                </div>
                <ul class="menu-items">
                    <li><a href="/Restaurant/pages/index.html">Home</a></li>
                </ul>
                <h1 class="logo">Restaurant Mi Pueblito</h1>
            </div>
        </nav>
        <br><br><br>
        <section>
            <h1>Lista de Productos</h1>

            <table border="1" width="100%">
                <tr>   
                    <td>Nombre</td>  
                    <td>Descripción</td>
                    <td>Precio venta</td>
                    <td>Precio compra</td>
                    <td><i class="fa fa-pencil" aria-hidden="true"></i>Editar</td>
                    <td><i class="fa fa-trash-o" aria-hidden="true"></i>Eliminar</td>   
                </tr> 

                <c:forEach var="producto" items="${ListaProducto}">
                    <tr>
                        <td><c:out value="${producto.nombre}"/></td>
                        <td><c:out value="${producto.descripcion}"/></td>
                        <td><c:out value="${producto.precioventa}"/></td>
                        <td><c:out value="${producto.preciocompra}"/></td>
                        <td><a href="InventarioProductos?action=actualizarForm&idproducto=<c:out value="${producto.idproducto}"/>">Editar</a></td>
                        <td><a href="InventarioProductos?action=eliminar&idproducto=<c:out value="${producto.idproducto}"/>">Eliminar</a></td>
                    </tr> 
                </c:forEach>
            </table> 
        </section>
        <footer id="footer">
            <h2>Restaurant &copy; Mi pueblito</h2>
        </footer>
    </body>
</html>