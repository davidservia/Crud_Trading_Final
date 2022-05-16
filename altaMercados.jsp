<%-- 
    Document   : altaPosicion
    Created on : 21 feb. 2022, 8:31:20
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Añadir una nueva posicion</title>
  </head>
  <body>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/trading","root", "");
      Statement s = conexion.createStatement();
      request.setCharacterEncoding("UTF-8");
      String Nombre = request.getParameter("Nombre");
      
      // Comprueba la existencia del número de una posicion introducida
      String consultaNumPosicion = "SELECT * FROM mercados WHERE Nombre = " + Nombre; 
      
      
      ResultSet numeroDePosicion = s.executeQuery (consultaNumPosicion);
      numeroDePosicion.last();
      
      if (numeroDePosicion.getRow() != 0) {
        out.println("Lo siento, no se ha podido dar de alta, ya existe un mercado "
                    + request.getParameter("Nombre") + ".");
      } else {
        String insercion = "INSERT INTO mercados VALUES (" + Nombre
                           + ", '" + request.getParameter("Pais")
                           ;
                           
        s.execute(insercion);
        response.sendRedirect("listadomercados.jsp");
      }
      conexion.close();
    %>
  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>
