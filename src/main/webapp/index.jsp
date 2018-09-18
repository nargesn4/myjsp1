<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mySchool.HelloAppEngine" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="static java.lang.System.out" %>
<html>
<head>
  <link href='//fonts.googleapis.com/css?family=Marmelad' rel='stylesheet' type='text/css'>
  <title>JSP & Databases</title>
</head>
<body>
<%
  String tekst;
  Calendar nu = Calendar.getInstance();
  int huidigUur = nu.get(Calendar.HOUR_OF_DAY);
  if ((huidigUur >= 6) && (huidigUur <= 12)) {
    tekst = "Goedemorgen";
  } else if ((huidigUur > 12) && (huidigUur <= 18)) {
    tekst = "Goedemiddag";
  } else {
    tekst = "Goedeavond";
  }
%>
<h1><%= tekst%>
</h1>
<h3>Huidig uur: <%= huidigUur %>
</h3>
  <table>
    <tr>
      <td colspan="2" style="font-weight:bold;">Opdrachten:</td>
    </tr>
    <tr>
      <td><a href='deel1.opdracht1.jsp'>Deel 1 - opdracht 1</a></td>
    </tr>
    <tr>
      <td><a href='deel1.opdracht2.jsp'>Deel 1 - opdracht 2</a></td>
    </tr>
    <tr>
      <td><a href='deel1.opdracht4.jsp'>Deel 1 - opdracht 4</a></td>
    </tr>
    <tr>
      <td><a href='deel1.opdracht5.jsp'>Deel 1 - opdracht 5</a></td>
    </tr>
    <tr>
      <td><a href='deel1.opdracht6.jsp'>Deel 1 - opdracht 6</a></td>
    </tr>
    <tr>
      <td><a href='deel1.opdracht7.jsp'>Deel 1 - opdracht 7</a></td>
    </tr>
  </table>

</body>
</html>
