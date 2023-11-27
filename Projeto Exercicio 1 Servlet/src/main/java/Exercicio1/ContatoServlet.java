package Exercicio1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContatoServlet
 */
@WebServlet("/ContatoServlet")
public class ContatoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html><head><title>Página de Contato</title></head><body>");
        out.println("<h1>Entre em contato conosco!</h1>");
        out.println("<p>Esta é a página de contato.</p>");
        out.println("<a href='InicioServlet'>Ir para a página Início</a><br>");
        out.println("<a href='SobreServlet'>Ir para a página Sobre</a>");
        out.println("</body></html>");
    }
}
