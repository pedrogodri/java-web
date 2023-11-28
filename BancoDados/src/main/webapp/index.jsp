<%-- 
    Document   : principal
    Created on : 01/06/2020, 16:04:21
    Author     : klayton
--%>

<%@page import="banco.ConectaBanco"%>
<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1" import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>JSP Index</title>
    </head>
    <body>
        <%
            ConectaBanco conn = new ConectaBanco();
            Connection conexao = conn.ConectaMySql("db_teste");
        %>
        <div class="container mt-4 col-lg-4">
            <div class="card col-sm-8">
                <div class="card-body">
                    <form class="form-sign">
                        <div class="form-group text-center">
                            <h3>Login</h3>
                            <img src="" alt="imagem" width="170"/>                            
                            <label>Bem vindos ao Sistema</label>
                        </div>
                        <div class="form-group">
                            <label>Usuário:</label>
                            <input type="text" name="txtuser" id="txtuser" value="" class="form-control">                              
                        </div>
                        <div class="form-group">
                            <label>Senha:</label>
                            <input type="password" name="txtpass" id="txtpass" value="" class="form-control">
                            <%
                               if (conexao !=null) {
                                    if ((request.getParameter("txtuser") !=null) && (request.getParameter("txtpass") !=null)) {
                                        String login, pass;
                                        login = request.getParameter("txtuser");
                                        pass = request.getParameter("txtpass");
                                        Statement st;
                                        ResultSet rs;
                                        st = conexao.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.TYPE_FORWARD_ONLY);
                                        rs = st.executeQuery("select * from login where user ='"+login+"' and senha='"+pass+"'");
                                        if(rs.next()){
                                            response.sendRedirect("principal.jsp");
                                        }
                                       // out.println(login);
                                      //  out.println(pass);
                                    }
                                }else {
                                    out.println("Não é  possivel logar");
                                }
                           %>
                        </div>
                        <input type="submit" name="btnLog" value="Logar" id="btnLog" class="btn btn-primary btn-block">
                    </form>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>