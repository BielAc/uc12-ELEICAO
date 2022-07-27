<%-- 
    Document   : listarClientes
    Created on : 11/07/2022, 19:51:10
    Author     : sala19a
--%>

<%@page import="br.com.DAO.EleitorDAO"%>
<%@page import="br.com.DTO.EleitorDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table class="table">
            <thead>
                <tr>
                    <th>Titulo Eleitoral</th>
                    <th>Nome</th>
                    <th>Usuario</th>
                    <th>Senha</th>
                </tr>
            </thead>
                <%
                    try {
                        EleitorDAO objUsuarioDAO = new EleitorDAO();
                        ArrayList<EleitorDTO> lista = objUsuarioDAO.pesquisarEleitor();

                        System.out.println("Lista retornada: " + lista);
                        for (int num = 0; num < lista.size(); num++) {%>

                out.print("Titulo Eleitoral: " + lista.get(num).getTituloEleitoralEleitor() + "<br>");

            out.print("Nome: " + lista.get(num).getNome() + "<br>");

            out.print("<a href='formExcluirUsuario.jsp?id="
                          + lista.get(num).getTituloEleitoralEleitor()+ "&nome="
                          + lista.get(num).getNome() + "'>EXCLUIR</a>");

            <BR><BR>
            <%}

                } catch (Exception e) {

                }


            %>
            </body>
            </html>
