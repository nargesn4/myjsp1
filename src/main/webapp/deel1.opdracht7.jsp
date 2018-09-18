<%--
  Created by IntelliJ IDEA.
  User: narges
  Date: 18-9-2018
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deel 1 - Opdracht 7</title>
    <style>
        table {
            border-collapse: collapse;
            width: 30%;
        }
    </style>
</head>
<body>
<%!
    int x;
    int y;
    int result;%>

<table border="1px solid black" align='center' bgcolor='white'>
    <%for ( x=1; x<11; x++) {%>
    <tr>
        <%for (y=1; y<11; y++) { %>
        <td>
            <%result=(x*y);%>
            <%out.println(result);%>
        </td>
        <%}%>
    </tr>
    <%}%>
</table>
</body>
</html>
