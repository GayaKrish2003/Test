import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@MultipartConfig
@WebServlet("/signin")
public class SignInServlet extends HttpServlet {

    public SignInServlet() {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("signin - GET request");
        RequestDispatcher dispatcher = request.getRequestDispatcher("signin.jsp");
        dispatcher.forward(request, response);
    }
// post method
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("signin - POST request");
        String fullname = request.getParameter("fullname");
        System.out.println("fullname: " + fullname);
        String email = request.getParameter("email");
        System.out.println("email: " + email);
        String phone = request.getParameter("phone");
        System.out.println("phone: " + phone);
        String password = request.getParameter("password");
        System.out.println("password : " + password);
        request.getRequestDispatcher("signin.jsp").forward(request, response);
    }
}
