<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%

String usuario=request.getParameter("usuario");
String contra=request.getParameter("contra");


 Class.forName("com.mysql.jdbc.Driver");
 String usuarioo = "root";
String contrasenaa = "tu contraseña";
String link = "jdbc:mysql://localhost:3306/proyecto_jsp";
 try{
java.sql.Connection conexion= java.sql.DriverManager.getConnection(link, usuarioo, contrasenaa);


java.sql.PreparedStatement consulpre = conexion.prepareStatement("select * from usuarios where Usuario = ? and Contrasena = ?",ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
   
  consulpre.setString(1, usuario);
  consulpre.setString(2, contra);
  java.sql.ResultSet rs= consulpre.executeQuery();

if(rs.absolute(1)){
	
	out.println("Ususario aoutorizado");
	
}else {
	
	out.println("error de usaurio");
	
}
	
	
 }catch(Exception e){
	 
	 e.printStackTrace();
	 
	 out.println("<br> error en conexion");
	 
	 
	 
 }

%>

</body>
</html>