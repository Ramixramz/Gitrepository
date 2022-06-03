<%--
    Autor: Ramiro Ramirez Ramirez
    Fecha de creación:20 de Abril 2022
    Fecha de Actualización: 11 de Mayo de 2022
    Descripción:
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style rel="stylesheet" >
            <%@include file="../resources/css/form.css" %>
        </style>
        <style rel="stylesheet" >
            <%@include file="../resources/css/estilo.css" %>
        </style>
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
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <section>
            <div class="login-box">
                <h3>Crear producto</h3>
                <form action="InventarioProductos?action=crear" method="post">
                    <input type='hidden' name='idproducto' ><br> 

                    <div class="user-box">
                        <label>Nombre del Producto</label>
                        <input type="text" name="nombreproducto" required="">

                    </div>
                    <div class="user-box">
                        <label>Descripción del producto</label>
                        <input type="text" name="descripcion" required="">

                    </div>
                    <div class="user-box">
                        <label>Precio de Venta</label>
                        <input type="text" name="precioventa" required="" >

                    </div>
                    <div class="user-box">
                        <label>Precio de Compra</label>
                        <input type="text" name="preciocompra" required="">

                    </div>
                    <button type='submit' value='Guardar' >-Guardar-</button>
                </form>
            </div>
        </section>
        <footer id="footer">
            <h2>Restaurant &copy; Mi pueblito</h2>
        </footer>

    </body>
</html>