<!Doctype html>
<%@ page import="com.mySchool.Auto" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mySchool.DataUtils" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deel3 - PraktijkOpdracht</title>
    <link href="deel3.praktijkOpdracht.css" rel="stylesheet" type="text/css">
</head>
<body>
<div>
    <form action="deel3.searchResult.jsp">
        <label>Kies merk</label>
        <select id="merk" name="merkAuto">
            <option value="alle">Alle merken</option>
            <option value="Ford">Ford</option>
            <option value="Opel">Opel</option>
            <option value="Subaru">Subaru</option>
            <option value="Mercedes">Mercedes</option>
            <option value="Ferrari">Ferrari</option>
            <option value="Lotus">Lotus</option>
            <option value="Citroen">Citroen</option>
            <option value="Volvo">Volvo</option>
            <option value="Mini">Mini</option>
        </select>
        <br>
        <label>Minimum prijs</label>
        <input type="text" id="minPrijs"  name="minprijs" >
        <label>Maximum prijs</label>
        <input type="text" id="maxPrijs"  name="maxprijs">
        <input type="submit" value="Ok" name="Ok">
    </form>
</div>
<%
        ArrayList<Auto> autolijst = DataUtils.getAutolijst();
        for (Auto auto : autolijst) {
%>
<div class="autokader">
    <img src=<%=auto.getFoto()%>>
    <p class="merktype"><%=auto.getMerk()%> <%=auto.getType()%>
    </p>
    <p class="autoprijs"><%=auto.getPrijsFormat()%>
    </p>
</div>
<%}%>

</body>
</html>