<%-- 
    Document   : bodyprimeraparte
    Created on : 01/10/2024, 03:47:15 PM
    Author     : LUIS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body id="page-top">

    <!-- Validacion Session -->

    <% HttpSession misession = request.getSession();
        String usuario = (String) request.getSession().getAttribute("usuario");

        if (usuario == null) {
            response.sendRedirect("sinLogin.jsp");
        }

    %>

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->  <!--Desde este punto se tendra que copiar y dividir con los demas componentes para despues con sus JSP propios incorporar codigo JAVA--> 
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
                <div class="sidebar-brand-icon rotate-n-15">                   
                    <!--<i class="fas fa-regular fa-tooth"></i>--> <!-- aqui copiamos el nuevo icono seleccionado de la pagina para nuestro logo"Dato colocar de igual manera el fas-->
                    <i class="fa-solid fa-house-medical-flag"></i>
                </div>
                <!--<div class="sidebar-brand-text mx-3">Consultorio Odontológico</div>--> <!-- Modificaremos en primer punto el nombre de la lista de opciones de nuestra plantilla pulsamos las teclas CRTL+F-->
                <div class="sidebar-brand-text mx-3">Reserva Médica</div>
            </a>

            <!-- Divider -->


            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="#">
                    <i class="fas fa-solid fa-bars"></i> <!-- cambiamos el icono anterior por lo que solicitan -->
                    <span>Menú</span></a> <!-- borramos el Dashboard y escribimos Menu -->

            </li>
            <!-- Divider -->

            <!-- Heading -->
            <div class="sidebar-heading">Gestión</div> <!-- antes era Interface cambiaraemos por Gestion -->
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                   aria-expanded="true" aria-controls="collapseTwo">

                    <i class="fas fa-hospital-user"></i> <!-- cambiamos el icono anterior por lo que solicitan -->
                    <!--<span>Odontólogos</span>-->  <!-- cambiamos de Components a Odontólogos -->
                    <span>Médicos</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones:</h6><!-- cambiamos el nombre a acciones --> 
                        <a class="collapse-item" href="">Ver Médicos</a><!-- cambiamos el nombre, se deja entre comillas por que ahi van especificado la ruta de nuestro jsp,que aun no se a creado -->
                        <a class="collapse-item" href="altaOdontologo.jsp">Alta Médicos</a> <!-- vamos a crear en la tercera entrega el formulario, tambien se colocara en referencia altaOdontologo.jsp para que lo pueda asignar  -->
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                   aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-solid fa-user"></i> <!-- cambiamos el icono anterior por lo que solicitan -->
                    <span>Pacientes</span> <!-- cambiamos de Utilities a Pacientes -->
                    <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Acciones:</h6>
                            <a class="collapse-item" href="">Ver Pacientes</a>
                            <a class="collapse-item" href="">Alta Pacientes</a>

                        </div>
                    </div>
            </li>

            <!-- copiamos la parte del codigo para agregar el metodo de usuarios -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUser" 
                   aria-expanded="true" aria-controls="collapseTwo">

                    <i class="fas fa-hospital-user"></i> <!-- cambiamos el icono anterior por lo que solicitan -->
                    <span>Usuarios</span>  <!-- cambiamos de Components a Odontólogos -->
                </a>
                <div id="collapseUser" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar"> <!-- se tiene que tener en cta cuando copiamos debemos de cambiar el direccionamiento del codigo se cambia a uno nuevo <div id="collapseUser" y tmb data-target="#collapseUser" debe de ser el mismo-->
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones:</h6><!-- cambiamos el nombre a acciones --> 
                        <a class="collapse-item" href="SvUsuarios">Ver Usuarios</a><!-- cambiamos el nombre, se deja entre comillas por que ahi van especificado la ruta de nuestro jsp,que aun no se a creado -->
                        <a class="collapse-item" href="altaUsuarios.jsp">Alta Usuarios</a> <!-- vamos a crear en la tercera entrega el formulario, tambien se colocara en referencia altaOdontologo.jsp para que lo pueda asignar  -->
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">



        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search(esto es la busqueda se colocara como comentario no se borrara derrepente tenga un requerimiento -->
                    <!--<form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>-->

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                 aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                               placeholder="Search for..." aria-label="Search"
                                               aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                 aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">Octubre 12, 2024</div>
                                        <span class="font-weight-bold">Notificacion de cita!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">Octubre 7, 2024</div>
                                        $290.29 tiene un deposito pendiente!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">Octubre 2, 2024</div>
                                        Alerta de cita: hemos notado un registro inusualmente alto en su cuenta.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Mostrar todas las alertas</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                 aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Centro de mensajes
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                             alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">¡Hola! Me pregunto si me pueden ayudar con un
                                            problema que he estado teniendo.</div>
                                        <div class="small text-gray-500">Emily Fowler  </div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_2.svg"
                                             alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Tengo las fotos que me ordenaron el mes pasado, ¿cómo?
                                            ¿Quieres que te los envíen?</div>
                                        <div class="small text-gray-500">Jae Chun </div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_3.svg"
                                             alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">El informe del mes pasado parece fantástico, estoy muy contento con
                                            El progreso hasta ahora, ¡sigan con el buen trabajo!</div>
                                        <div class="small text-gray-500">Morgan Alvarez </div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                             alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">¿Soy nuevo paciente? La razón por la que pregunto es porque desearia saber si 
                                            me pueden registrar un historial, incluso si me lo pueden enviar....</div>
                                        <div class="small text-gray-500">Chicken the Dog Â· 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Leer más mensajes</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%=request.getSession().getAttribute("usuario")%></span>
                                <img class="img-profile rounded-circle"
                                     src="https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                 aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Perfil
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Ajustes
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Registro de actividad
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Cerrar sesión
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <!--<h1 class="h3 mb-0 text-gray-800">Clínica Odontólogica</h1>-->
                        <h1 class="h3 mb-0 text-gray-800">Hospital Sabogal</h1>
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
                    </div>
