
import javax.servlet.annotation.WebServlet;import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;


@WebServlet(name = "ValidaRegistro", urlPatterns = {"/servlet/ValidaRegistro"}, asyncSupported=true)
public class ValidaRegistro extends HttpServlet {
    
    ArrayList newUser = new ArrayList(5);
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ValidaRegistro</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ValidaRegistro at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList <String> newUser = new ArrayList();
        String user = request.getParameter("user");newUser.add(user);
        String password1 = request.getParameter("Password1");newUser.add(password1);
        String password2 = request.getParameter("Password2");
        String nombre = request.getParameter("Nombre");newUser.add(nombre);
        String apellidos = request.getParameter("Apellidos");newUser.add(apellidos);
        String email = request.getParameter("e-mail");newUser.add(email);
        
        boolean b = false;
        for(int i=0; i<DataBase.dataBase.size(); i++){
            ArrayList uArray = DataBase.dataBase.get(i);
            if(uArray.get(0)==user){
                //username is already in use
            }else{
                DataBase.dataBase.add(newUser);
                session.setAttribute("USER", user);
                response.sendRedirect(request.getContextPath()+"/Welcome.jsp");
            }
        }
        
        //System.out.println("session = "+session.getAttribute("VALID"));
         // ????
    }
    
}
