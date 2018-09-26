<%--
  Created by IntelliJ IDEA.
  User: narges
  Date: 19-9-2018
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deel 2 - Opdracht 11</title>
</head>
<body>
<h3>Hoogste en laagste</h3>
<p>Voer een geheel getal in</p>
<form action="deel2.opdracht11.jsp" method="get">
    <input type="text" name="naam">
    <input type="submit" name="Ok" value="Ok">
</form>
<%!
    int getal;
    int hoogste=0;
    int laagste=1000;
    String s;
%>
<%try {
    if (request.getParameter("Ok") != null) {
        s= request.getParameter("naam");
        getal = Integer.parseInt(s);
        if (getal < laagste) {
            laagste = getal;
            out.println("<p>Laagste getal is : " + laagste + "<br>");
            out.println("<p>Hoogste getal is : " + hoogste + "<br>");
        } else if (getal > hoogste) {
            hoogste = getal;
            out.println("<p>Laagste getal is : " + laagste + "<br>");
            out.println("<p>Hoogste getal is : " + hoogste + "<br>");
        }
    }
}catch (NumberFormatException en){
    out.println("<p>je moet een geheel getal invoeren");
}
%>
</body>
</html>
