<%

Integer numIncre=0;
Integer numeroAInc= numeroAInc.parseInt(reques.getParameter("incremento"));
numIncre+=numeroAInc;
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
    <form action="incrementacion.jsp" method="GET">
        <input type="number" name="incremento" id=""> <input type="submit" value="incrementar">
    </form>

    <p>Resultado: <%numIncre%> </p>

    <a href= "incremento.jsp">Reset</a>
</body>
</html>