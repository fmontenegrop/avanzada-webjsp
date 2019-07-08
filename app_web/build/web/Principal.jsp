<%-- 
    Document   : Principal
    Created on : 06-jul-2019, 20:18:13
    Author     : GAMER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="#">Cursos</a>            
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="btn btn-outline-info" href="#">Personas</a>
                    </div>
                </div>
                <div class="btn-group pr-5">
                    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">                    
                        ${user.getNombre()}
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">
                            <img src="img\user.png" alt="60" width="60">                            
                        </a>
                        <a class="dropdown-item" href="#">${user.getNombre()} ${user.getApellido()}</a>
                        <a class="dropdown-item" href="#">${user.getCorreo()}</a>                    
                        <div class="dropdown-divider"></div>
                        <form action="Validar" method="POST">
                            <button name="accion" value="salir" class="dropdown-item">Salir</button>
                        </form>
                    </div>
                </div> 
            </div>

        </nav>
    </header>
    <body>
        <div class="container pt-5">
            <div class="row">
                <div class="col-md-2">
                    <button class="btn btn-outline-success" href="#">Actualizar</button>
                </div>
                <div class="col">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Apellido</th>
                                <th scope="col">Correo</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                         <c:forEach var = "lista" items="${listap}">
                            <tr>                                
                                <td>${listap[0].getId()}</td>
                                <td>${lista.getNombre()}</td>
                                <td>${lista.getApellido()}</td>
                                <td>${lista.getCorreo()}</td>
                            </tr>                            
                        </c:forEach>
                            
                            
                        </tbody>
                    </table>
                    
                </div>
            </div>
        </div>
                                
    </body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</html>
