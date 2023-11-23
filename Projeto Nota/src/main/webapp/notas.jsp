<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado</title>
</head>
<body>
    <h2>Resultado</h2>

    <%
        // Recuperar os dados do formulário
        String nome = request.getParameter("name");
        double nota1 = Double.parseDouble(request.getParameter("nota1"));
        double nota2 = Double.parseDouble(request.getParameter("nota2"));
        double nota3 = Double.parseDouble(request.getParameter("nota3"));

        // Calcular a média
        double media = (nota1 + nota2 + nota3) / 3;

        // Determinar a situação
        String situacao;
        if (media >= 7) {
            situacao = "Aprovado";
        } else if (media >= 4) {
            situacao = "Recuperação";
        } else {
            situacao = "Reprovado";
        }
    %>

    <p>Nome: <%= nome %></p>
    <p>Média: <%= media %></p>
    <p>Situação: <%= situacao %></p>

</body>
</html>