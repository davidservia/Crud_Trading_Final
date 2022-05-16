<%-- 
    Document   : borraMercados
    Created on : 20 feb. 2022, 19:05:59
    Author     : rapif
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/Trading","root", "");
Statement s = conexion.createStatement();
s.execute ("DELETE FROM mercados WHERE Nombre like " + request.getParameter("Nombre"));
%>
<script>document.location = "listadomercados.jsp"</script>
</body>
</html>