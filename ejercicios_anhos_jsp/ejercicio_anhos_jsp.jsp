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
    String web = "https://www.google.com/search?q=";
     for (int i =0; i<=9;i++){
         decada++;
    %>
       <li> <a href="<%=web+decada%>"> <%=decada%> </a> </li>

     <%}
    %>
</body>
</html>