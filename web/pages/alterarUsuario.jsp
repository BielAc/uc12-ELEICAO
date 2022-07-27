<%-- 
    Document   : alterarCliente
    Created on : 14/07/2022, 19:31:28
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
                   objUsuarioDTO.setCpfUsuario(Integer.parseInt(request.getParameter("cpfUsuario")));
                   objUsuarioDTO.setNomeUsuario(request.getParameter("nomeUsuario"));
                   
                   
                   UsuarioDAO objUsuarioDAO = new UsuarioDAO();
                   objUsuarioDAO.alterarUsuario(objUsuarioDTO);
                                      
                   
               } catch (Exception e) {
               }
 
        %>
    </body>
</html>
