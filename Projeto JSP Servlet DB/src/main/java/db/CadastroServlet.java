package db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CadastroServlet")
public class CadastroServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String nome = request.getParameter("nome");
        String idade = request.getParameter("idade");

        // JDBC URL, username, and password of MySQL server
        String jdbcUrl = "jdbc:mysql://localhost:3306/teste_jsp";
        String dbUser = "root";
        String dbPassword = "aluno";

        try (Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword)) {
            // SQL query to insert data into the database
            String sql = "INSERT INTO usuarios (nome, idade) VALUES (?, ?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setString(1, nome);
                preparedStatement.setString(2, idade);

                // Execute the query
                int rows = preparedStatement.executeUpdate();

                if (rows > 0) {
                    out.println("<html><head><title>Sucesso</title></head><body>");
                    out.println("<h2>Usuário cadastrado com sucesso!</h2>");
                    out.println("<p>Nome: " + nome + "</p>");
                    out.println("<p>Idade: " + idade + "</p>");
                    out.println("</body></html>");
                } else {
                    out.println("<html><head><title>Erro</title></head><body>");
                    out.println("<h2>Ocorreu um erro ao cadastrar o usuário.</h2>");
                    out.println("</body></html>");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}