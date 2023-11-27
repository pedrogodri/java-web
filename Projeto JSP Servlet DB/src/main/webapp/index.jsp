<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulário com Banco de Dados</title>
</head>
<body>
    <h2>Cadastro de Usuário:</h2>
    <form action="CadastroServlet" method="post">
        Nome: <input type="text" name="nome" required><br>
        Idade: <input type="text" name="idade" required><br>
        <input type="submit" value="Cadastrar">
    </form>
</body>
</html>
