import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/Javier")
public class HelloWorldServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        String output = "";
        output += "<h1>Login Page</h1>";
        output += "<form action='/login' method='POST'>";
        output += "<input name='username' placeholder='Enter UserName: ' />";
        output += "<button>Submit</button>";
        output += "</form>";
        out.println(output);



//        PrintWriter out = response.getWriter();
//        out.println("<h1>Hello, Javier!</h1>");
//        out.println("<h1>Hello World!</h1><a href='/about'>About Page</a>");



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
        System.out.println("LOGIN REQUEST SUBMITTED");
        response.sendRedirect("/Hello");
    }

}
