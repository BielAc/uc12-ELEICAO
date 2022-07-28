<%-- 
    Document   : index
    Created on : 25/07/2022, 21:18:14
    Author     : sala19a
--%>

<%@page import="br.com.DTO.EleitorDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    </head>
    <body>
        <div class="bg-white">
            <div class="container">
                <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
                    <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
                        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
                    </a>

                    <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
                        <li><a href="#" class="nav-link px-2 link-secondary">Home</a></li>
                        <li><a href="#" class="nav-link px-2 link-dark">Features</a></li>
                        <li><a href="#" class="nav-link px-2 link-dark">Pricing</a></li>
                        <li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
                        <li><a href="Cliente/pages/listar.jsp" class="nav-link px-2 link-dark">Clientes</a></li>
                    </ul>

                    <div class="col-md-3 text-end">
                        <button type="button" class="btn btn-outline-primary me-2">Login</button>
                        <button type="button" class="btn btn-primary">Sign-up</button>
                    </div>
                </header>
            </div>
        </div>
        <main class="form-signin w-25 m-auto">
            <%EleitorDTO eleitor = new EleitorDTO();%>
            <form action="pages/actions/logarEleitor.jsp?usuario=<%=eleitor.getUsuario()%>&senha=<%=eleitor.getSenha()%>" method="GET">
                <h1 class="h3 text-center mb-3 fw-normal">Login</h1>

                <div class="form-floating">
                    <input id="usuario" class="form-control" type="text" name ="usuario" required>
                    <label for="usuario">Usuário</label>
                </div>
                <div class="form-floating">
                    <input id="senha" class="form-control" type="password" name ="senha" required>
                    <label for="senha">Senha</label>
                </div>

                <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
                <p class="mt-5 text-center mb-3 text-muted">© 2017–2022</p>
            </form>
        </main>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    </body>
</html>
