
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>1900</title>
</head>
<body>
    <%
    String web = "https://www.google.com/search?q=";
     for (int i =1900; i<=2019;i++){%>

        <a href="<%web+i%>"> <%System.out.println(i);%> </a>

     <%}
    %>
</body>
</html>