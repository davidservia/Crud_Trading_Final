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
            try {
                
                //conectarse a la bbdd
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/trading", "root", "");
                Statement s = conexion.createStatement();
                
                request.setCharacterEncoding("UTF-8");
                
                session.removeAttribute("usuarioRegistrado");
                session.removeAttribute("contrRegistrado");
                
                response.sendRedirect("index.jsp");
            
            } catch (Exception e) {
                out.print(e);
            }
        %>


<body class="bg-secondary">
    
</body>
</html>
