<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
    
<%@ page import = "java.sql.*" %>

<%

	Connection conn = null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String urll = "jdbc:oracle:thin:@localhost:1521:XE";
	
	Class.forName(driver);
	conn = DriverManager.getConnection (urll, "hr2", "1234");

%>