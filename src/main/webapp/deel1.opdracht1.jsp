<%--
  Created by IntelliJ IDEA.
  User: narges
  Date: 17-9-2018
  Time: 18:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deel 1 - Opdracht 1</title>
</head>
<body>
<!-- jsp code -->
<%  double bedrag = 113.0; %>

<!-- html code  -->
<table border="1">
    <thead>
    <tr>
        <th>Naam</th>
        <th>Totaal &euro; <%= bedrag %></th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Jan</td>
        <td>&euro; <%= bedrag/4 %></td>
    </tr>
    <tr>
        <td>Ali</td>
        <td>&euro; <%= bedrag/4 %></td>
    </tr>
    <tr>
        <td>Jeannette</td>
        <td>&euro; <%= bedrag/4 %></td>
    </tr>
    <tr>
        <td>Piet</td>
        <td>&euro; <%= bedrag/4 %></td>
    </tr>
    </tbody>
</table>
</body>
</html>
