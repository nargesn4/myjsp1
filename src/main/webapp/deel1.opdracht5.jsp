<%@ page import="java.awt.*" %>
<%@ page import="static java.awt.Color.black" %><%--
  Created by IntelliJ IDEA.
  User: narges
  Date: 17-9-2018
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deel 1 - Opdracht 5</title>
    <style>
        table{
            height: 50%;
            width: 50%;
            border: 1px solid black;
            border-collapse: collapse;
        }
        .black{
            background-color: black;
        }

    </style>
</head>
<body>
<%!
    int x;
    int y;
    int totaal;%>

<table border="1px solid black" align='center' bgcolor='white'>
    <%for ( x=0; x<8; x++) {%>
    <tr>
        <%for (y=0; y<8; y++) { %>
            <%totaal=(x+y);
            if (totaal%2==0){%>
            <%out.println("<td class='black'></td>");%>
            <%} else{%>
                <%out.println("<td class='white'></td>");%><% }%>
        <%}%>
    </tr>
    <%}%>
</table>
</body>
</html>
