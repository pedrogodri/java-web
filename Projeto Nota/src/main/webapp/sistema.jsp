<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sistema de Notas</title>
</head>
<body>
    <h2>Sistema de Notas</h2>
    
    <form action="notas.jsp" method="post">
        Nome: <input type="text" name="name" required><br>
        Nota 1: <input type="text" name="nota1" required><br>
        Nota 2: <input type="text" name="nota2" required><br>
        Nota 3: <input type="text" name="nota3" required><br>
        <input type="submit" value="Calcular Média">
    </form>
</body>
</html>