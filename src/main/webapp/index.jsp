<%@page contentType="text/html" pageEncoding="UTF-8"%> <!-- se añade a nuestra estructura para que reconozca nuestro codigo de jsp-->
<!DOCTYPE html>
<html lang="es">
    <!-- se borra todo el codigo, poruqe se utilizara el componente include que realizara la accion de llamar a cada parte de los jsp creados-->
    <%@include file="componentes/header.jsp" %>
    <%@include file="componentes/bodyprimeraparte.jsp" %>

    <!-- primera entrega Borramos desde Content Row hasta End of Main Content-->
    <!-- desde el tercer punto se colocara comando-->
    
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE-lW_sSaqH_dSBynTRez14fjzxrzcK20UQg&s" alt="alt"/> 
    <br>
    <%@include file="componentes/bodyfinal.jsp" %>