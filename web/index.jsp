<%-- 
    Document   : login
    Created on : 22 feb. 2022, 14:42:38
    Author     : rapif
--%>


<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Panel Trading</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/stylelogin.css"/>
</head>

<%request.setCharacterEncoding("UTF-8");%>
        <%
         
            
            
            if (session.getAttribute("error") != null) { //compruebo si hay algún error
                if (session.getAttribute("error").equals("Lo siento, usuario o contraseña incorrectos")) { //compruebo el tipo de error
                    session.setAttribute("error", "null");
                    out.print("<script type=\"text/javascript\">alert(\"Lo siento, acceso denegado, usuario o contraseña incorrectos\");</script>"); //saco por pantalla el error en cuestion
                }
            }
        %>


<body class="bg-secondary">
    <div id="wrapper" class="container">
        <div class="row">
          <!--Usamos d-flex para el div de abajo, y asi poder centrar el login en vertical con align-items-center, OJO : hay que indicar el alto del bloque, para que pueda calcular donde esta el centro -->
            <div class="col-xs-12 col-md-8 col-lg-4 d-flex align-items-center vh-100 m-auto">
        <!--Formulario de Boostrap-->
        <form method="get" action="accesoLogin.jsp" class="text-light p-5">
          <h1 class="text-center pt-3 text-danger">Login De Trading</h1>
          <br>
          <br>
            <div class="mb-3">
              <label for="identificador" class="form-label">Introduce un identificador</label>
              <input type="text" class="form-control" id="identificador" placeholder="Escribe tu nombre" name="CadenaNombre" aria-describedby="NameHelp" required>
              <div id="identificadorHelp" class="form-text">Cuidado con mayusculas y minusculas</div>
            </div>
            <div class="mb-3">
              <label for="pwd" class="form-label">Contraseña</label>
              <input type="password" class="form-control" placeholder="Escribe tu contraseña" id="Password"  name="CadenaContrasena" required>
            </div>
            <div class="mb-3 form-check">
              <input type="checkbox" class="form-check-input" id="exampleCheck1">
              <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div>
            <button type="submit" class="btn btn-primary">Enviar</button>
          </form>
          <!--Fin del Formulario de boostrap-->
          </div><!--Final del div col-->
        </div><!--Final del div row-->

    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>