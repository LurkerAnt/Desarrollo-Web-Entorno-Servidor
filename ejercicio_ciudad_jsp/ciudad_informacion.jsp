<!DOCTYPE html>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    
</head>
<body>
     <%
    String web = "https://www.google.com/search?q=";
    String ciudad= request.getParameter("city");
     %>
        Tu ciudad favorita es <%=ciudad%>. <br>
        Pulsa <a href="<%=web+ciudad%>">aqui</a> pare ver informacion.
    
</body>
</html>