<%@ page import="java.sql.*" %>

<%
Connection con=null;

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/cropdb",
"root",
"root");

%>