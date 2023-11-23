<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Hello JSP</title>
</head>
<body>
	<h1>Hello JSP</h1>
	<%out.println("Apex"); %>
	<%--Uso de elemento	expressão --%>
	<p>Data <%=new Date() %>
	<%!int cont = 0; %>
	<p>Visitas: <%=cont++ %>
</body>
</html>