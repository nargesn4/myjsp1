<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deel 2 - Opdracht 12</title>
    <style>
        div.gradenInvoer{
        width: 100%;
        max-width: 400px;
        text-align: center;
        border: 1px solid black;
        border-radius: 5px;
        overflow: hidden;
        margin-top: 1.5em;
        margin-bottom: 1.5em;
        }
        div.gradenInvoerNaam {
            width: 100%;
            line-height: 2em;
            background-color: #800000;
            color: #FFF8DC;
            font-weight: bold;
        }
        p {
            margin: 0 0 10px;
        }
        form {
            display: block;
            margin-top: 0em;
        }
        .invoer_arg {
            width: 50%;
            float: left;
            margin-bottom: 1em;
        }
        div#gradeninvoer_knoppen {
            width: 75%;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 2em;
            overflow: hidden;
        }
    </style>
</head>
<body>
<%!
    int Fahrenheit1;
    int Celsius1;
    String fahrenheit="";
    String celsius="";
%>
<div class="gradenInvoer">
    <div class="gradenInvoerNaam">
        <p>Graden</p>
    </div>
    <form action="deel2.opdracht12.jsp">
        <div class="invoer_arg">
            <p>Celsius</p>
            <input  id="Celsius" type="text" name="Celsius">
        </div>
        <div class="invoer_arg">
            <p>Fahrenheit</p>
            <input type="text" name="Fahrenheit">
        </div>
        <div id="gradeninvoer_knoppen">
            <input type="submit" value="Omrekenen" name="Omrekenen">
        </div>
    </form>
</div>
<%
try {
    if (request.getParameter("Omrekenen")!=null){
        String s =request.getParameter("Celsius");
        String m =request.getParameter("Fahrenheit");
        int sint =Integer.parseInt(s);
        int mint =Integer.parseInt(m);
        if (sint>=0){
            double Fahrenheit = Math.round(sint * 1.8 + 32);
            Fahrenheit1 = (int) Fahrenheit;
            request.setAttribute("Fahrenheit", );
            //fahrenheit = Integer.toString(Fahrenheit1);
        }else if (mint>=0){
            double Celsius = (mint - 32) / 1.8;
            Celsius1 = (int) Celsius;
            //m.equals("");
        }
    }
}catch (NumberFormatException en){

    out.println("somthing went wrong");
}
%>
</body>
</html>






