<%-- 
    Document   : autenticarUsuario
    Created on : 14/07/2022, 20:01:58
    Author     : sala19a
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="br.com.DAO.UsuarioDAO"%>
<%@page import="br.com.DTO.UsuarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%   
        UsuarioDTO objUsuarioDTO = new UsuarioDTO();
        objUsuarioDTO.setLoginUsuario(request.getParameter("login"));
        objUsuarioDTO.setSenhaUsuario(request.getParameter("senha"));
        
        UsuarioDAO objUsuarioDAO = new UsuarioDAO();
        ResultSet rsUsuario = objUsuarioDAO.autenticarUsuario(objUsuarioDTO);
        

        if(rsUsuario.next()){
            response.sendRedirect("home.html");
        }else{
            out.print("Login e/ou Senha inválidos");
        }

            %>
    </body>
</html>
