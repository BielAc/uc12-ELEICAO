<%-- 
    Document   : formAlterarCliente
    Created on : 14/07/2022, 19:29:14
    Author     : sala19a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form action="alterarUsuario.jsp" method="POST">
        <label>Código do Usuario</label><br>
        <input type="text" name="id" value="<%= request.getParameter("cpfUsuario")%>"> <br>
        
            
        <label>Nome do Usuario</label><br>
        <input type="text" name="nome" value="<%= request.getParameter("nomeUsuario")%>"> <br>
        
        <button type="submit">ALTERAR</button>
        </form>
    </body>
</html>
