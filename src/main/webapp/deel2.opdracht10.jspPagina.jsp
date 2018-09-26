<%--
  Created by IntelliJ IDEA.
  User: narges
  Date: 19-9-2018
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Voor opdracht 10</title>
</head>
<body>
<%
    String s = request.getParameter("celsius");
    int a = Integer.parseInt(s);
    double Fahrenheit = a * 1.8 + 32;
%>
<p> <%= a %> graden Celsius is <%= Math.round(Fahrenheit)%> graden Fahrenheit </p>
<p>Ga<a href='deel2.opdracht10.jsp'> trug </a> naar de vorige pagina.</p>
</body>
</html>
