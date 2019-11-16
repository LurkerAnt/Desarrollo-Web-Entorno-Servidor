<%  
    int acumulador=0;
    int incremento=1;

    //recoge el parametro y sirve como variable de control
    String parametroIncremento = request.getParameter("incremento");
    String parametroAcumulado= request.getParameter("acumulado");
    //Declarar un booleano así me ahorra el tener que hacer un if-else (visto en mm)
    boolean parametroRecibido = (parametroIncremneto!=null && parametroAcumulado!=null);
    //boolean para controlar que se quiere incrementar
    boolean quierenIncrementar = (request.getParameter("Incrementar")!=null);
    //parse a int para poder trabajar o sumarlo or whatever.
    int numeroIncrem=Integer.valueOf(parametroEntrada);

    if (parametroRecibido && quierenIncrementar){
        //iguala el incremento al recibido 
        incremento=parametroIncremento
        //iguala el valor y lo suma 
        acumulador=parametroAcumulado + incremento;
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
    <form>
        <input type="number" name="acumulado" value="<%=acumulador%>"> 
        <input type="number" name="incremento" value="<%=incremento%>">
        <input type="submit" value="Incrementar" value="Incrementar">
    </form>
    
    <a href="incremento_en_n.jsp">Reset</a>
</body>

</html>