package Exercicio1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InicioServlet
 */
@WebServlet("/InicioServlet")
public class InicioServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html><head><title>Página Inicial</title></head><body>");
        out.println("<h1>Bem-vindo à página inicial!</h1>");
        out.println("<p>Esta é a página de início.</p>");
        out.println("<a href='SobreServlet'>Ir para a página Sobre</a><br>");
        out.println("<a href='ContatoServlet'>Ir para a página de Contato</a>");
        out.println("</body></html>");
    }
}
