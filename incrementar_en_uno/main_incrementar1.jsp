<%  
    String parametroEntrada = request.getParameter("Incrementar");
    int numeroIncrem;

    if (parametroEntrada==null){
        numeroIncrem=0;
    } else {
        numeroIncrem+=Integer.valueOf(parametroEntrada);
    }

%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <form method="get">
        <input type="number" name="incremento" value="<%=numeroIncrem%>"> 
        <input type="submit" value="Incrementar" value="Incrementar">
    </form>
    
   <a href="main.jsp">Reset</a>

    <a href="incremento.jsp">Reset</a>
</body>

</html>