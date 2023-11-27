package Exercicio2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ExibirServlet
 */
@WebServlet("/ExibirServlet")
public class ExibirServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String nome = request.getParameter("nome");
        String idade = request.getParameter("idade");

        out.println("<html><head><title>Exibição</title></head><body>");
        out.println("<h2>Dados Recebidos:</h2>");
        out.println("<p>Nome: " + nome + "</p>");
        out.println("<p>Idade: " + idade + "</p>");
        out.println("</body></html>");
    }
}
