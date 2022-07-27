<%-- 
    Document   : formExcluirCliente
    Created on : 11/07/2022, 20:02:38
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
        <form action="excluirUsuario.jsp" method="POST">
        <label>Código do Usuario</label><br>
        <input type="text" name="id" value="<%= request.getParameter("id")%>"> <br>
        
            
        <label>Nome do Usuario</label><br>
        <input type="text" name="nome" value="<%= request.getParameter("nome")%>"> <br>
        
        <button type="submit">EXCLUIR</button>
        </form>
    </body>
</html>
