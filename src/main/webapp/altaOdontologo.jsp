<%-- 
    Document   : altas
    Created on : 01/10/2024, 03:47:44 PM
    Author     : LUIS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <%@include file="componentes/header.jsp" %>
    <%@include file="componentes/bodyprimeraparte.jsp" %>
    
    <!--<h1>Alta Odontólogos</h1>-->  <!-- aqui vamos a reutilizar un formulario-->
    <h1>Alta Médicos</h1>
    <p></p>
    
    <form class="user"> <!-- aqui copiamos el codigo de register a partir del Form-->
        <div class="form-group col"> <!-- lo que esta haciendo este codigo es agrupar pero en dos columnas "form-group row", en cambio el "form-group col" lo realiaza en varias filas-->
            
            <div class="col-sm-6 mb-3"> <!--copiamos el mismo codigo para crear los demas campos deacuerdo a los atributos, si deseamos que cada casilla tenga un espacio agregaremos esto en el codigo "col-sm-6 mb-3" es singnifica marbing boton -->
                <input type="text" class="form-control form-control-user" id="dni" name="dni"
                       placeholder="Dni" required="">
            </div>
            <div class="col-sm-6 mb-3"> <!--el col-sm-6 "ocupa la mitad en cambio-col-sm-12 ocupa todo -->
                <input type="text" class="form-control form-control-user" id="nombre" name="nombre"
                       placeholder="Nombres" required="">
            </div>
            
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="apellido" name="apellido"
                       placeholder="Apellidos" required="">
            </div>
            
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="telefono" name="telefono"
                       placeholder="Telefono" required="">
            </div>
            
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="direccion" name="direccion"
                       placeholder="Direccion" required="">
            </div>
            
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="fechanac" name="fecha_nac"
                       placeholder="FechaNac" required="">
            </div>
            
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="especialidad" name="especialidad"
                       placeholder="Especialidad" required="">
            </div>
                    
                       
            <!-- Aqui iria respecto al horario y usuario-->
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="usuario" name="unUsuario"
                       placeholder="Usuario" required="">
            </div>
        </div>
        
        
        <button class="btn btn-primary btn-user btn-block" type="submit">
            Crear Odontólogo
        </button>
       
       
    </form>
    
    
    
    <%@include file="componentes/bodyfinal.jsp" %>

