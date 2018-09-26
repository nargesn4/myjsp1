<%@ page import="static java.lang.Integer.*" %><%--
  Created by IntelliJ IDEA.
  User: narges
  Date: 18-9-2018
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deel 2 - Opdracht 9</title>
    <style>
        div.fout{
            color: red;
        }
    </style>
</head>
<body>
<%! String invoer;
int b;
int a;%>
<h1>Kies een tafel</h1>
<form action="deel2.opdracht9.jsp" method="get">
    <input type="text" name="tekst_input_1">
    <div>
        <input type="submit" name="knop_1" value="Ok">
    </div>
    <input type="hidden" name="naam" value="<%= a %>">
</form>
<% try {
    if (request.getParameter("knop_1") != null) {
        invoer = request.getParameter("tekst_input_1");
         a = Integer.parseInt(invoer);
        out.println("<h3>The tafel van "+ a +"</h3>");
        for (int i = 0; i < 11; i++) {
            b = a * i;
            out.println(a + " * " + i + " = " + b + "<br>");
        }out.println("<form action='deel2.opdracht9.jsp' method='get'>");
        out.println("<input type='submit' name='min' value='vorige'>");
        out.println("<input type='submit' name='plus' value='volgende'>");
        out.println("</form>");
    }
}catch (NumberFormatException ne){
    invoer =request.getParameter("tekst_input_1");
    out.println("<div class='fout'>"+ invoer + " is geen geldig invoer</div>" );
}
%>
<%try {

    if (request.getParameter("min") != null) {
        invoer = request.getParameter("naam");
        int y=a-1;
        out.println("<h3>The tafel van " + y + "</h3>");
        for (int i = 0; i < 11; i++) {
            b = y * i;
            out.println(y + " * " + i + " = " + b + "<br>");
        }
    }
}catch (NumberFormatException ne){
    invoer =request.getParameter("tekst_input_1");
    out.println("<div class='fout'>"+ invoer + " is geen geldig invoer</div>" );
}
%>
<%try {

    if (request.getParameter("plus") != null) {
        invoer = request.getParameter("naam");
        int y=a+1;
        out.println("<h3>The tafel van " + y + "</h3>");
        for (int i = 0; i < 11; i++) {
            b = y * i;
            out.println(y + " * " + i + " = " + b + "<br>");
        }
    }
}catch (NumberFormatException ne){
    invoer =request.getParameter("tekst_input_1");
    out.println("<div class='fout'>"+ invoer + " is geen geldig invoer</div>" );
}
%>
</body>
</html>
