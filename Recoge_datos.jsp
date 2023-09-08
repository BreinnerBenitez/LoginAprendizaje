<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>probando resgitros</title>
</head>
<body>

<%

String nombre=request.getParameter("nombre");
String apellido=request.getParameter("apellido");
String usuario=request.getParameter("usuario");
String contra=request.getParameter("contra");
String pais=request.getParameter("pais");
String tecno=request.getParameter("tecnologias");

 Class.forName("com.mysql.jdbc.Driver");
 String usuarioo = "root";
String contrasenaa = "breinner";
String link = "jdbc:mysql://localhost:3306/proyecto_jsp";
 try{
java.sql.Connection conexion= java.sql.DriverManager.getConnection(link, usuarioo, contrasenaa);

 java.sql.Statement st = conexion.createStatement();
 String consulta = "INSERT INTO USUARIOS (Nombre,Apellido,Usuario,Contrasena,Pais,Tecnologia) VALUES ('"+nombre+"','"+apellido+"','"+usuario+"','"+contra+"','"+pais+"','"+tecno+"')";
 st.execute(consulta);

  out.println("registrado con exito");
 }catch(Exception e){
	 
	 e.printStackTrace();
	 
	 out.println("<br> error enviar datos a base de datos");
	 
	 
	 
 }

%>

</body>
</html>