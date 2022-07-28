<%-- 
    Document   : clienteUpdate
    Created on : 07/07/2022, 19:12:05
    Author     : sala19a
--%>

<%@page import="br.com.DAO.EleitorDAO"%>
<%@page import="br.com.DTO.EleitorDTO"%>
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
            EleitorDAO eleitorRepository = new EleitorDAO();
            Integer id = Integer.parseInt(request.getParameter("titulo_eleitoral_eleitor"));
            
            EleitorDTO eleitor = eleitorRepository.pesquisarEleitorPorTituloEleitoral(id);
        %>
        
        <form action="../actions/inserirEleitor.jsp?titulo_eleitoral_eleitor=<%=eleitor.getTituloEleitoralEleitor()%>" method="POST">
            <label for="nomeCliente">Nome do Cliente</label>
            <input id="nomeCliente" type="text" name="nomeCliente" value="<%=eleitor.getNome()%>" placeholder="Nome do cliente" required>
            <br>            
            <br>            
            <label for="usuario">Usuário</label>
            <input id="usuario" type="text" name ="usuario" value="<%=eleitor.getUsuario()%>" placeholder="Nome do Cliente" required>
            <br>            
            <label for="senha">Senha</label>
            <input id="senha" type="password" name ="senha" value="<%=eleitor.getSenha()%>" placeholder="Nome do Cliente" required>
            <br>
            
            <button type="submit">ATUALIZAR</button>
            <a href="listarEleitor.jsp">Voltar</a>
        </form>

    </body>
</html>