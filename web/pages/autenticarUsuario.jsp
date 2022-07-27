<%-- 
    Document   : autenticarEleitor
    Created on : 14/07/2022, 20:01:58
    Author     : sala19a
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="br.com.DAO.EleitorDAO"%>
<%@page import="br.com.DTO.EleitorDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%   
        EleitorDTO objEleitorDTO = new EleitorDTO();
        objEleitorDTO.setUsuario(request.getParameter("login"));
        objEleitorDTO.setSenha(request.getParameter("senha"));
        
        EleitorDAO objEleitorDAO = new EleitorDAO();
        ResultSet rsUsuario = objEleitorDAO.autenticarEleitor(objEleitorDTO);
        

        if(rsUsuario.next()){
            response.sendRedirect("home.html");
        }else{
            out.print("Login e/ou Senha inválidos");
        }

            %>
    </body>
</html>
