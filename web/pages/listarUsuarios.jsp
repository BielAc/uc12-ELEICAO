<%-- 
    Document   : listarClientes
    Created on : 11/07/2022, 19:51:10
    Author     : sala19a
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DTO.UsuarioDTO"%>
<%@page import="br.com.DAO.UsuarioDAO"%>
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
                UsuarioDAO objUsuarioDAO = new UsuarioDAO();
                ArrayList<UsuarioDTO> lista = objUsuarioDAO.pesquisarUsuario();

                System.out.println("Lista retornada: " + lista);
                for (int num = 0; num < lista.size(); num++) {

                    out.print("Código: " + lista.get(num).getCpfUsuario() + "<br>");

                    out.print("Nome: " + lista.get(num).getNomeUsuario() + "<br>");

                    out.print("<a href='formExcluirUsuario.jsp?id="
                            + lista.get(num).getCpfUsuario() + "&nome="
                            + lista.get(num).getNomeUsuario() + "'>EXCLUIR</a>");

        %><BR><BR><%                        }

                    } catch (Exception e) {

                    }


        %>
    </body>
</html>
