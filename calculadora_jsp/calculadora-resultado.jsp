<%
    Integer num1=Integer.parseInt(request.getParameter("operando1"));
    Integer num2=Integer.parseInt(request.getParameter("operando2"));
    String operacion=request.getParameter("operacion");
    Integer resultado;

    switch (operacion){
        case "sum":
        resultado=num1+num2;
        operacion="+";
        break;
        case "res":
        resultado=num1-num2;
        operacion="-";
        break;
        case "mul":
        resultado=num1*num2;
        operacion="*";
        break;
        case "div":
        resultado=num1/num2;
        operacion="/";
        break;
        default:
        resultado=0;
    }

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <p><%=num1%><%=operacion%><%=num2%> = <%=resultado%> </p>
</head>
<body>
</body>
</html>