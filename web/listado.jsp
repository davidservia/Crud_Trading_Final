<%-- 
    Document   : index
    Created on : 20 feb. 2022, 19:37:00
    Author     : rapif
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!-- Bootstrap -->
    <<link rel="stylesheet" href="./css/style.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Bolsa de Valores</title>
  </head>

  <body>
<div class="container text-light">
			<br><br>			
      <div class="panel-info">
        <div class="panel-heading text-center"><h2>Panel de posiciones</h2></div>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/trading","root", "");
          Statement s = conexion.createStatement();
          ResultSet listado = s.executeQuery ("SELECT * FROM posiciones");
        %>

        <table class="table table-info">
            <tr><th>Nº de Posicion</th><th>Nombre</th><th>Entrada</th><th>Liquidacion</th><th>Mercados</th><th>Añadir/Editar</th><th>Eliminar</th></tr>
        <form method="get" action="altaPosicion.jsp">
          <tr><td><input type="text" name="posicionID" size="5"></td>
              <td><input type="text" name="nombre" size="30"></td>
              <td><input type="text" name="entrada" size="5"></td>
              <td><input type="text" name="liquidacion" size="5"></td>
              <td><input type="text" name="mercados" size="20"></td>
              <td><button type="submit" value="Añadir" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Añadir</button></td><td></td></tr>           
        </form>
        <%
          while (listado.next()) {
            out.println("<tr><td>");
            out.println(listado.getString("posicionID") + "</td>");
            out.println("<td>" + listado.getString("nombre") + "</td>");
            out.println("<td>" + listado.getString("entrada") + "</td>");
            out.println("<td>" + listado.getString("liquidacion") + "</td>");
            out.println("<td>" + listado.getString("mercados") + "</td>");
        %>
        <td>
        <form method="get" action="modificaPosicion.jsp">
					<input type="hidden" name="posicionID" value="<%=listado.getString("posicionID") %>">
          <input type="hidden" name="nombre" value="<%=listado.getString("nombre") %>">
          <input type="hidden" name="entrada" value="<%=listado.getString("entrada") %>">
          <input type="hidden" name="liquidacion" value="<%=listado.getString("liquidacion") %>">
          <input type="hidden" name="mercados" value="<%=listado.getString("mercados") %>">
					<button type="submit"  class="btn btn-info"><span class="glyphicon glyphicon-pencil"></span> Modificar</button>
				</form>
				</td>
				<td>
        <form method="get" action="borraPosicion.jsp">
          <input type="hidden" name="posicionID" value="<%=listado.getString("posicionID") %>"/>
          <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Eliminar</button>
        </form>
        </td></tr>
        <%
          } // while   
          conexion.close();
        %>

        </table>
      </div>
        <div class="text-center text-lighten"><h1>Tambien podemos ver las cuatro principales posiciones, abiertas acutalmente</h1></div>
    </div>
        <div class="container mt-5">
        <!--Margin Top 5-->
        <div class="row">
          <div class="col-xs-12 col-md-6 col-lg-3 py-3">
            <!--Primera card-->
            <div class="card">
              <img src="./images/aurora.jpeg" class="card-img-top" alt="...">
            </div>
          </div>
          <!--Fin de la primera card-->
          <div class="col-xs-12 col-md-6 col-lg-3 py-3">
            <!--Segunda Card-->
            <div class="card">
              <img src="./images/tlry.jpeg" class="card-img-top" alt="...">
            </div>
          </div>
          <!--Fin de segunda card-->
          <!--Inicio de la tercera card-->
          <div class="col-xs-12 col-md-6 col-lg-3 py-3">
            <!--Tercera Card-->
            <div class="card">
              <img src="./images/canopy.jpeg" class="card-img-top" alt="...">
            </div>
          </div>
          <!--Fin de la tercera card-->
          <!--Inicio de la cuarta card-->
          <div class="col-xs-12 col-md-6 col-lg-3 py-3">
            <!--Cuarta Card-->
            <div class="card">
              <img src="./images/newage.jpeg" class="card-img-top" alt="...">
              <!--fin del modal-->
            </div>
          </div>
          <!--Fin de la cuarta card-->
        </div>
      </div>
    <!--Fin de la galeria de cards-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>