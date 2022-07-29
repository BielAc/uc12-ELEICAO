<%-- 
    Document   : votojsp
    Created on : 28/07/2022, 20:16:52
    Author     : sala19a
--%>

<%@page import="br.com.DTO.VotoDTO"%>
<%@page import="br.com.DAO.VotoDAO"%>
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
                VotoDAO objVotoDAO = new VotoDAO();
                VotoDTO objVotoDTO = new VotoDTO();
                
                if (request.getParameter("numero_candidato") != null)
                    objVotoDTO = objVotoDTO(Integer.parseInt(request.getParameter("Numero_candidato")));
                
                objVotoDTO.setNumero_candidato(request.getParameter("numero_candidato"));
                objVotoDTO.setTitulo_eleitoral_eleitor(request.getParameter("titulo_eleitoral_eleitor"));
                

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
