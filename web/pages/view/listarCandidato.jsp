<%--
    Document   : listarCliente
    Created on : 29/06/2022, 21:05:09
    Author     : sala19a
--%>

<%@page import="br.com.Config.LoggedUser"%>
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
                        <span class="me-2"><%=LoggedUser.getEleitor().getNome()%></span>
                        <a href="../../index.jsp" class="btn btn-primary">Sair</a>
                    </div>
                </header>
            </div>
        </div>

<!--        <%// out.print("<h1>Olá</h1>");%> -->

        <div class="w-100 justify-content-center d-flex">
            <div class="w-50 d-block">
                <div class="row row-cols-2 row-cols-md-2 mb-1 text-center">
                    <div class="col">
                        <div class="card mb-2 rounded-3 shadow-sm">
                            <div class="card-body">
                                <input type="text">
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-2 rounded-3 shadow-sm">
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title">Image</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row row-cols-4 row-cols-md-4 mb-1 text-center">
                    <div class="col">
                        <div class="card mb-2 rounded-3 shadow-sm">
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title">1</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-2 rounded-3 shadow-sm">
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title">2</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-2 rounded-3 shadow-sm">
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title">3</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-2 rounded-3 shadow-sm">
                            <div class="card-body">
                                <p class="card-title pricing-card-title fw-bold fs-6 py-2">Corrigir</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row row-cols-4 row-cols-md-4 mb-1 text-center">
                    <div class="col">
                        <div class="card mb-2 rounded-3 shadow-sm">
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title">4</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-2 rounded-3 shadow-sm">
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title">5</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-2 rounded-3 shadow-sm">
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title">1</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-2 rounded-3 shadow-sm">
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title">1</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row row-cols-4 row-cols-md-4 mb-1 text-center">
                    <div class="col">
                        <div class="card mb-2 rounded-3 shadow-sm">
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title">1</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-2 rounded-3 shadow-sm">
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title">2</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-2 rounded-3 shadow-sm">
                            <div class="card-body" style="cursor: pointer">
                                <h1 class="card-title pricing-card-title">3</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-2 rounded-3 shadow-sm">
                            <div class="card-body px-0">
                                <p class="card-title pricing-card-title fw-bold py-2">Confirmar</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
