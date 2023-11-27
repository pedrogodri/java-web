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
        // Recuperar o número do formulário
        int numero = Integer.parseInt(request.getParameter("numero"));
    %>

    <p>Tabuada do <%= numero %>:</p>
    <%
        for (int i = 1; i <= 10; i++) {
            int resultado = numero * i;
    %>
            <p><%= numero %> x <%= i %> = <%= resultado %></p>
    <%
        }
    %>

</body>
</html>