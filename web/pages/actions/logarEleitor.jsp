<%-- 
    Document   : inserirCliente
    Created on : 07/06/2022, 21:16:58
    Author     : sala19a
--%>

<%@page import="br.com.Config.LoggedUser"%>
<%@page import="br.com.DTO.EleitorDTO"%>
<%@page import="br.com.DAO.EleitorDAO"%>
<%@page import="java.util.Optional"%>
<%@page import="java.time.LocalDate"%>
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
                EleitorDAO objEleitorDAO = new EleitorDAO();
                EleitorDTO objEleitorDTO = new EleitorDTO();

                String usuario = request.getParameter("usuario");
                String senha = request.getParameter("senha");

                if (usuario != null && senha != null) {
                    objEleitorDTO = objEleitorDAO.findByUsuario(usuario);

                    if (objEleitorDTO.getTituloEleitoralEleitor() != null) {
                        if (objEleitorDTO.getSenha().equals(senha)) {
                            LoggedUser.setEleitor(objEleitorDTO);
                            response.sendRedirect("../view/listarCandidato.jsp");
                        }
                    }
                }

                response.sendRedirect("../../index.jsp");

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
