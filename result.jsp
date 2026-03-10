<%@ page import="java.sql.*" %>

<%
String crop=request.getParameter("crop");
String symptom=request.getParameter("symptom");

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/cropdb",
"root",
"root");

PreparedStatement ps=con.prepareStatement(
"SELECT * FROM disease WHERE crop=? AND symptom=?");

ps.setString(1,crop);
ps.setString(2,symptom);

ResultSet rs=ps.executeQuery();

while(rs.next())
{
%>

<h2>Disease Detected</h2>

Crop : <%=rs.getString("crop")%><br>
Disease : <%=rs.getString("disease_name")%><br>
Solution : <%=rs.getString("solution")%><br>

<%
}
%>