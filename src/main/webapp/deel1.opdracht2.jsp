<%--
  Created by IntelliJ IDEA.
  User: narges
  Date: 17-9-2018
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deel 1-Opdracht 2</title>
    <style>
        table{
            border-collapse: collapse;
            width: 50%;
        }
        th{
            text-align: left;
        }
    </style>
</head>
<body>
<!-- jsp code -->
<%  int seconden=1;
    int eenminut= seconden *60;
    int eenuur = eenminut*60;
    int eendag = eenuur*24;
    int eenweek = eendag*7;
    int eenjaar= eendag*365;
%>

<!-- html code  -->
<table border="1">
    <thead>
    <tr>
        <th>Eenheid</th>
        <th>Antal seconden</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Minuut</td>
        <td>&euro; <%= eenminut %></td>
    </tr>
    <tr>
        <td>Uur</td>
        <td>&euro; <%= eenuur %></td>
    </tr>
    <tr>
        <td>Dag</td>
        <td>&euro; <%= eendag %></td>
    </tr>
    <tr>
        <td>Week</td>
        <td>&euro; <%= eenweek %></td>
    </tr>
    <tr>
        <td>Jaar</td>
        <td>&euro; <%= eenjaar %></td>
    </tr>
    </tbody>
</table>
</body>
</html>
