<%--
    Document   : listarCliente
    Created on : 29/06/2022, 21:05:09
    Author     : sala19a
--%>

<%@page import="br.com.DTO.EleitorDTO"%>
<%@page import="br.com.DAO.EleitorDAO"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <title>Listagem de Usuários</title>
    </head>
    <body>
        <div class="bg-white">
            <div class="container">
                <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
                    <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
                        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
                    </a>

                    <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
                        <li><a href="/uc12-ELEICAO/pages/listar.jsp" class="nav-link px-2 link-dark">Clientes</a></li>
                    </ul>

                    <div class="col-md-3 text-end">
                        <span href="/uc12-ELEICAO/index.jsp" class="me-2"><%=request.getParameter("nomeUsuario")%></span>
                        <a href="/uc12-ELEICAO/index.jsp" class="btn btn-primary">Sair</a>
                    </div>
                </header>
            </div>
        </div>

        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">Titulo</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Usuario</th>
                    <th scope="col">Senha</th>
                    <th scope="col">Opções</th>
                </tr>
            </thead>
            <tbody>
            <%
                try {
                    EleitorDAO objClienteDAO = new EleitorDAO();
                    ArrayList<EleitorDTO> lista = objClienteDAO.pesquisarEleitor();

                    for (EleitorDTO eleitor : lista) {
            %>
                <tr>
                    <th scope="row"><%=eleitor.getTituloEleitoralEleitor()%></th>
                    <td><%=eleitor.getNome()%></td>
                    <td><%=eleitor.getUsuario()%></td>
                    <td><%=eleitor.getSenha()%></td>
                    <td>
                        <a href="editarEleitor.jsp?titulo_eleitoral_eleitor=<%=eleitor.getTituloEleitoralEleitor()%>">Editar</a>
                        <a href="../actions/deletarEleitor.jsp?titulo_eleitoral_eleitor=<%=eleitor.getTituloEleitoralEleitor()%>">Deletar</a>
                    </td>
                </tr>

            <%}
                } catch (Exception e) {
                    //https://www.tutussfunny.com/jspcrud/
                }
            %>
            </tbody>
        </table>
        </br>
        <a href="inserirEleitor.html">Inserir Cliente</a>
    </body>
</html>
