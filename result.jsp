<%@ page import="java.sql.*" %>

<%

String farmer=request.getParameter("farmer");
String crop=request.getParameter("crop");
String symptoms=request.getParameter("symptoms");

String disease="Unknown Disease";

if(symptoms.toLowerCase().contains("yellow"))
{
disease="Leaf Yellowing Disease";
}
else if(symptoms.toLowerCase().contains("spots"))
{
disease="Fungal Leaf Spot";
}
else if(symptoms.toLowerCase().contains("dry"))
{
disease="Crop Dry Rot";
}

%>

<html>

<head>

<title>Detection Result</title>

<link rel="stylesheet" href="../Style.css">

</head>

<body>

<div class="container">

<h1>Disease Detection Result</h1>

<p><b>Farmer:</b> <%=farmer%></p>

<p><b>Crop:</b> <%=crop%></p>

<p><b>Symptoms:</b> <%=symptoms%></p>

<h2>Detected Disease:</h2>

<h3 style="color:red"><%=disease%></h3>

<a href="../index.html">
<button>Check Again</button>
</a>

</div>

</body>

</html>
