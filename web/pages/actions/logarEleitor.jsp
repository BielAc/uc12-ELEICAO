<%-- 
    Document   : inserirCliente
    Created on : 07/06/2022, 21:16:58
    Author     : sala19a
--%>

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
                EleitorDAO objClienteDAO = new EleitorDAO();
                EleitorDTO objClienteDTO;

                String usuario = request.getParameter("usuario");
                String senha = request.getParameter("senha");

                if (usuario != null && senha != null) {
                    objClienteDTO = objClienteDAO.findByUsuario(request.getParameter("usuario"));

                    if (objClienteDTO.getTituloEleitoralEleitor() != null) {
                        System.out.print("Está presente");
                        if (objClienteDTO.getSenha().equals(senha)) {
                            response.sendRedirect("http://localhost:8080/uc12-ELEICAO/pages/view/listarEleitor.jsp?nomeUsuario=" + objClienteDTO.getNome());
                        }
                    }
                }

                response.sendRedirect("http://localhost:8080/uc12-ELEICAO/index.jsp");

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
