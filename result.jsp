<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
String farmer = request.getParameter("farmer");
String crop = request.getParameter("crop");
String symptoms = request.getParameter("symptoms");

String disease = "Healthy";

if(symptoms != null && symptoms.toLowerCase().contains("black")) {
    disease = "Fungal Leaf Spot";
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Disease Result</title>

<style>

body{
    font-family: Arial;
    background: linear-gradient(to right,#67b26f,#4ca2cd);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.container{
    background:white;
    padding:40px;
    border-radius:10px;
    width:420px;
    box-shadow:0px 5px 15px rgba(0,0,0,0.2);
    text-align:center;
}

h1{
    color:#2e7d32;
}

.info{
    text-align:left;
    margin-top:20px;
    font-size:16px;
}

.result{
    margin-top:25px;
    font-size:22px;
    font-weight:bold;
    color:red;
}

button{
    margin-top:30px;
    padding:12px 25px;
    border:none;
    background:#4CAF50;
    color:white;
    font-size:16px;
    border-radius:6px;
    cursor:pointer;
}

button:hover{
    background:#2e7d32;
}

</style>
</head>

<body>

<div class="container">

<h1>Disease Detection Result</h1>

<div class="info">
<p><b>Farmer:</b> <%= farmer %></p>
<p><b>Crop:</b> <%= crop %></p>
<p><b>Symptoms:</b> <%= symptoms %></p>
</div>

<div class="result">
Detected Disease: <%= disease %>
</div>

<form action="index.html">
<button>Check Again</button>
</form>

</div>

</body>
</html>
