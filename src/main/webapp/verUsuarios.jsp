<%-- 
    Document   : verUsuarios
    Created on : 18/10/2024, 01:29:00 AM
    Author     : LUIS
--%>

<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%@include file="componentes/header.jsp" %>
 <%@include file="componentes/bodyprimeraparte.jsp" %>
    
<html>
  
    <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Ver Usuarios</h1>
                    <p class="mb-4">A continuacion podra ver la lista completa de usuarios</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Usuarios</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Nombre de Usuario</th>
                                            <th>Rol</th>
                                            <th style="width: 210px">Accion</th>
                                        </tr>
                                    </thead>
                                   
                                    <tfoot>
                                        <tr>
                                            <th>Id</th>
                                            <th>Nombre de Usuario</th>
                                            <th>Rol</th>
                                            <th style="width: 210px">Accion </th>
                                        </tr> 
                                    </tfoot>
                                    <%  
                                      
                                      List<Usuario> listaUsuarios= (List) request.getSession().getAttribute("listaUsuarios");
                                    %>    
                                    <tbody>
                                        <% for(Usuario usu: listaUsuarios){ %>
                                        <tr>
                                            <td><%=usu.getId_usuario()%></td>
                                            <td><%=usu.getNombreUsuario()%></td>
                                            <td><%=usu.getRol()%></td>
                                            
                                            <td style="display: flex; width: 230px;">
                                                <form name="eliminar" action="SvElimUsuarios" method="POST"> <!-- esto es para mandar el codigo al servlet -->
                                                            <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color:red; margin-right: 5px; "> 
                                                              <i class="fas fa-trash-alt"></i>  Eliminar
                                                            </button>
                                                            <input type="hidden" name="id" value="<%=usu.getId_usuario()%>"> <!-- esto es para mandar el codigo al servlet -->
                                                </form>  
                                                 <form name="editar" action="SvEditUsuarios" method="GET"> <!-- esto es para mandar el codigo al servlet -->
                                                            <button type="submit" class="btn btn-primary btn-user btn-block"; style="margin-left: 5px;"> 
                                                              <i class="fas fa-pencil-alt"></i>  Editar
                                                            </button>
                                                            <input type="hidden" name="id" value="<%=usu.getId_usuario()%>"> <!-- esto es para mandar el codigo al servlet -->
                                                </form>                                             
                                            </td>
                                        </tr>
                                       <%}%> 
                                    </tbody>
                                          
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
            
        <!-- Page level plugins copiamos el footer de las tablas pg:920.925 -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>
    
      <%@include file="componentes/bodyfinal.jsp" %>
</html>


