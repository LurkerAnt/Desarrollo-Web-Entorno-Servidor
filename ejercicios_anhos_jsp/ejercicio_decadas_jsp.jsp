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
     for (int i =1900; i<=2010; i+=10){%>
      
         <li> <a href="<%out.print("ejercicio_anhos_jsp.jsp?decadas="+i);%>"> <%=i%> </a> </li>

     <%}
    %>
</body>
</html>