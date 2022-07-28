<%-- 
    Document   : inserirCliente
    Created on : 07/06/2022, 21:16:58
    Author     : sala19a
--%>

<%@page import="br.com.DAO.EleitorDAO"%>
<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="1; URL=../view/listarEleitor.jsp" />
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                EleitorDAO objClienteDAO = new EleitorDAO();

                int id = Integer.parseInt(request.getParameter("titulo_eleitoral_eleitor"));

                System.out.print(id);
                objClienteDAO.delete(id);

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
