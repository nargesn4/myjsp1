<%@page import="com.mySchool.Auto" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mySchool.DataUtils" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>searchResult</title>
    <link href="deel3.praktijkOpdracht.css" rel="stylesheet" type="text/css">
</head>
<body>
<div>
    <form action="deel3.searchResult.jsp">
        <label>Kies merk</label>
        <select id="merk" name="merkAuto">
            <option value="Alle merken">Alle merken</option>
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
        <input type="text" id="minPrijs" name="minprijs">
        <label>Maximum prijs</label>
        <input type="text" id="maxPrijs" name="maxprijs">
        <input type="submit" value="Ok" name="Ok">
    </form>
</div>
<%try{
    String selectedmerk = request.getParameter("merkAuto");
    int minprijs = Integer.parseInt(request.getParameter("minprijs"));
    int maxprijs = Integer.parseInt(request.getParameter("maxprijs"));
    ArrayList<Auto> autolijst = DataUtils.getAutolijst();
    for (Auto auto : autolijst) {
        if( auto.getPrijs() >= minprijs && auto.getPrijs() <= maxprijs && (auto.getMerk().equals(selectedmerk) || (selectedmerk.equals("Alle merken")) ) ){
%>
<div class="autokader">
    <img src=<%=auto.getFoto()%>>
    <p class="merktype"><%=auto.getMerk()%> <%=auto.getType()%>
    </p>
    <p class="autoprijs"><%=auto.getPrijsFormat()%>
    </p>
</div>
<%
        }
    }
}catch (Exception merk){
            String selectedmerk = request.getParameter("merkAuto");
            ArrayList<Auto> autolijst = DataUtils.getAutolijst();
            for (Auto auto : autolijst)
        if (auto.getMerk().equals(selectedmerk) || (selectedmerk.equals("Alle merken"))) {
%>
<div class="autokader">
    <img src=<%=auto.getFoto()%>>
    <p class="merktype"><%=auto.getMerk()%> <%=auto.getType()%>
    </p>
    <p class="autoprijs"><%=auto.getPrijsFormat()%>
    </p>
</div>
<%}
}%>
</body>
</html>
