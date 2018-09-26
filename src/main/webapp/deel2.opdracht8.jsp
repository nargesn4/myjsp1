<%--
  Created by IntelliJ IDEA.
  User: narges
  Date: 18-9-2018
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deel 2 - Opdracht 8</title>
    <style>
        div.fout{
            color: red;
        }
    </style>
</head>
<body>
<h1>Kies een tafel</h1>
<form action="deel2.opdracht8.jsp" method="get">
    <input type="text" name="tekst_input_1">
    <div>
        <input type="submit" name="knop_1" value="Ok">
    </div>

</form>
<%
   try {
       if (request.getParameter("knop_1") != null) {
           //haal de parameter(s) binnen
           String invoer = request.getParameter("tekst_input_1");
           int a = Integer.parseInt(invoer);
           int b;
           out.println("<h3>The tafel van "+ a +"</h3>");
           for (int i = 0; i < 11; i++) {
               b = a * i;
               out.println(a + " * " + i + " = " + b + "<br>");
           }
       }
   }catch (NumberFormatException ne){
       String invoer =request.getParameter("tekst_input_1");
       out.println("<div class='fout'>"+ invoer + " is geen geldig invoer</div>" );
   }
%>
</body>
</html>
