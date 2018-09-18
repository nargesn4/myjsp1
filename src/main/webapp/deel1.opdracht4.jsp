<!DOCTYPE html>
<%@ page import="static java.lang.System.out" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deel 1 - Opdracht4</title>
</head>
<body>
<%
    long arg0 = 0L;
    long arg1 = 1L;
    long som = arg0 + arg1;
    long maxWaarde = 900000000000000000L;
    while(som <maxWaarde){
        som=arg0+arg1;
        out.println(som+", ");
        arg1=arg0;
        arg0=som;
    }
%>
</body>
</html>