<%
    boolean result =true;
    String salida;

    if (result){
        salida= "verdadero";
    }else{
        salida="falso";
    }
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Un parrafo u otro</title>
</head>
<body>
   <p><%=salida%></p>
</body>
</html>


