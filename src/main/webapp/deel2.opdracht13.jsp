<%--
  Created by IntelliJ IDEA.
  User: narges
  Date: 19-9-2018
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deel 2 - Opdracht 13</title>
    <link rel="stylesheet" href="deel2.opdracht13.css" type="text/css">
</head>
<body>

<%!double value;%>
<%
    try {
        if (request.getParameter("Eerste getal") != null) {
            int a = Integer.parseInt(request.getParameter("Eerste getal"));
            int b = Integer.parseInt(request.getParameter("Tweede getal"));
            if (request.getParameter("+") != null) {
                value = a + b;
            } else if (request.getParameter("-") != null) {
                value = a - b;
            } else if (request.getParameter("*") != null) {
                value = a * b;
            }
            if (request.getParameter("/") != null) {
                value = a / b;
            }
        }
    } catch (NumberFormatException en) {
        out.println("Something went wrong");
    }
%>
      <div class="gradenInvoer">
      <div class="gradenInvoerNaam">
        <p>Rekenmachine</p>
      </div>
      <form action="deel2.opdracht13.jsp" method="get">
        <div class="invoer_arg">
            <p>Eerste getal</p>
            <input type="text" name="Eerste getal" value="<%=value%>">
        </div>
        <div class="invoer_arg">
            <p>Tweede getal</p>
            <input type="text" name="Tweede getal">
        </div>
        <div id="knoppen">
            <div class="knop">
                <input type="submit" value="+" name="+">
            </div>
            <div class="knop">
                <input type="submit" value="-" name="-">
            </div>
            <div class="knop">
                <input type="submit" value="*" name="*">
            </div>
            <div1 class="knop">
                <input type="submit" value="/" name="/">
            </div1>
        </div>
    </form>
</div>
</body>
</html>
