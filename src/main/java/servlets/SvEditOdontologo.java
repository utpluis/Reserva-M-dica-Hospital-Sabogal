package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Odontologo;
import static logica.Persona_.fecha_nac;
import logica.Usuario;

@WebServlet(name = "SvEditOdontologo", urlPatterns = {"/SvEditOdontologo"})
public class SvEditOdontologo extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Odontologo odo = control.traerOdontologo(id);

        HttpSession misession = request.getSession();
        misession.setAttribute("odoEditar", odo);

        //System.out.println("El usuario es: " + usu.getNombreUsuario());
        response.sendRedirect("editarOdontologo.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");
        String fecha_nac = request.getParameter("fecha_nac");
        String especialidad = request.getParameter("especialidad");
        String unUsuario = request.getParameter("unUsuario");

        Odontologo odo = (Odontologo) request.getSession().getAttribute("odoEditar");
        odo.setDni(dni);
        odo.setNombre(nombre);
        odo.setApellido(apellido);
        odo.setTelefono(telefono);
        odo.setDireccion(direccion);
        //odo.setfecha_nac(fecha_nac);
        odo.setEspecialidad(especialidad);
        odo.setUnUsuario(unUsuario);

        //control.editarOdontologo(odo);
        response.sendRedirect("SvOdontologo");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
