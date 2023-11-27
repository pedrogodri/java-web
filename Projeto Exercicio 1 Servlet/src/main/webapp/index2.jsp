<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulário</title>
</head>
<body>
    <h2>Preencha o formulário:</h2>
    <form action="ExibirServlet" method="post">
        Nome: <input type="text" name="nome" required><br>
        Idade: <input type="text" name="idade" required><br>
        <input type="submit" value="Exibir">
    </form>
</body>
</html>