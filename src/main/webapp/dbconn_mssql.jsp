<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.*" %>

<%

	Connection conn = null;
	String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";	// MSSQL 드라이버 
	String urll = "jdbc:sqlserver://localhost:1433;DatabaseName=myDB";
	
	Class.forName(driver);
	conn = DriverManager.getConnection (urll, "sa", "1234");

%>