<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    
</head>
<body>
     <%
    Integer decada= Integer.parseInt(request.getParameter("decadas"));
    String web1 = "https://www.google.com/search?q=";
    String web2 = "https://www.google.com/search?q=";
    String web3 = "https://www.google.com/maps/search/";
    String web4 = "https://en.wikipedia.org/wiki/";
     for (int i =0; i<=9;i++){
         decada++;
    %>
    <li>
    <a href="<%=web1+decada%>"> Busqueda en Google: <%=decada%></a><br>
    <a href="<%=web2+decada + "&tbm=isch"%>">   Busqueda en Google imagenes: <%=decada%></a><br>
    <a href="<%=web3+decada+"/"%>">     Busqueda en Google maps: <%=decada%></a><br>
    <a href="<%=web4+decada%>">     Busqueda en Wikipedia: <%=decada%></a><br>
    </li>
    
     <%}
    %>
</body>
</html>