
<%@ page import = "java.sql.*" %>

<%

	Connection conn = null;
	String driver = "com.mysql.jdbc.Driver";	
	String urll = "jdbc:mysql://localhost:3306/shoppingmall";
	
	Class.forName(driver);
	conn = DriverManager.getConnection (urll, "root", "1234");

%>
