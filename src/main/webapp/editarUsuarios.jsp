<%-- 
    Document   : altaUsuarios
    Created on : 01/10/2024, 08:41:01 PM
    Author     : LUIS
--%>

<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="componentes/header.jsp" %>
<%@include file="componentes/bodyprimeraparte.jsp" %>

<h1>Edicion de Usuarios</h1>  <!-- aqui vamos a reutilizar un formulario-->
<p>Esto es el apartado para modificar los usuarios del sistema</p>

<% Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");%>

<form class="user" action="SvEditUsuarios" method="POST"> <!-- aqui copiamos el codigo de register a partir del Form, SE ADICIONA action="SvUsuarios" method="POST" motivo que se va llamra este metodo-->
    <div class="form-group col"> <!-- lo que esta haciendo este codigo es agrupar pero en dos columnas "form-group row", en cambio el "form-group col" lo realiaza en varias filas-->

        <div class="col-sm-6 mb-3"> <!--copiamos el mismo codigo para crear los demas campos deacuerdo a los atributos, si deseamos que cada casilla tenga un espacio agregaremos esto en el codigo "col-sm-6 mb-3" es singnifica marbing boton -->
            <input type="text" class="form-control form-control-user" id="nombreusu" name="nombreusu"
                   placeholder="Nombre Usuario" value="<%=usu.getNombreUsuario()%>">
        </div>
        <div class="col-sm-6 mb-3"> <!--el col-sm-6 "ocupa la mitad en cambio-col-sm-12 ocupa todo, "Para pasar de texto a Passwor es TypePass-->
            <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia"
                   placeholder="Contraseña" value="<%=usu.getContrasenia()%>">
        </div>

        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="rol" name="rol"
                   placeholder="Rol" value="<%=usu.getRol()%>">
        </div>

    </div>


    <button class="btn btn-primary btn-user btn-block" type="submit"> <!--al inicio se coloco en <a href="#" el numeral como referencia ahora colocaremos el servlets creado, despues de etes codigo href="SvUsuarios" class="btn btn-primary btn-user btn-block" -->
        Guardar Modificación                                                <!--lo transformamos en submit, ojo el <a actua como un link se le va a tener que cambiar como boton button-->
    </button>


</form>

<%@include file="componentes/bodyfinal.jsp" %>