<%-- 
    Document   : inserirCliente
    Created on : 08/07/2022, 21:10:59
    Author     : sala19a
--%>

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
           try {
                   UsuarioDTO objUsuarioDTO = new UsuarioDTO();
                   objUsuarioDTO.setNomeUsuario(request.getParameter("nome"));
                   
                   UsuarioDAO objUsuarioDAO = new UsuarioDAO();
                   objUsuarioDAO.cadastrarUsuario(objUsuarioDTO);
                   
                   
                   
               } catch (Exception e) {
               }
 
        %>
    </body>
</html>
