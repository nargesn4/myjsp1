<%--
  Created by IntelliJ IDEA.
  User: narges
  Date: 18-9-2018
  Time: 09:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deel 1 - Opdarcht 6</title>
</head>
<body>
<%
int a=0;
int b;
for (int i=0; i<11; i++) {
    b = a * 5;
    out.println(a + " * 5 = " + b+"<br>");
    a += 1;
}
%>
</body>
</html>
