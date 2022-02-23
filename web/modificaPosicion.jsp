<%-- 
    Document   : modificaPosicion
    Created on : 20 feb. 2022, 19:30:03
    Author     : rapif
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="./css/style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <title>Trading de mercados</title>
  </head>
  <body>
    <% request.setCharacterEncoding("UTF-8"); %>
    <div class="container">
      <br><br>
      <div class="panel panel-info">
        <div class="panel-heading text-center">Modificación de posicion</div>
          <form method="get" action="grabaPosicion.jsp">
            <div class="form-group"> 
              <label>&nbsp;&nbsp;Nº de posicion:&nbsp;</label><input type="text" size="5" name="posicionID" value="<%= request.getParameter("posicionID") %>" readonly>
            </div>
            <div class="form-group">
            <label>&nbsp;&nbsp;Nombre:&nbsp;</label><input type="text" size="35" name="nombre" value="<%= request.getParameter("nombre") %>">
            </div>
            <div class="form-group">
             <label>&nbsp;&nbsp;Entrada:&nbsp;</label><input type="text" size="5" name="entrada" value="<%= request.getParameter("entrada") %>">
             <label>&nbsp;&nbsp;Liquidacion:&nbsp;</label><input type="text" size="5" name="liquidacion" value="<%= request.getParameter("liquidacion") %>">
            </div>
            <div class="form-group">
             <label>&nbsp;&nbsp;Mercados:&nbsp;</label><input type="text" name="mercados" size="20" value="<%= request.getParameter("mercados") %>">
            </div>
            <hr>
            &nbsp;&nbsp;<a href="listado.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Cancelar</a>
            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>Aceptar</button><br><br>
          </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>