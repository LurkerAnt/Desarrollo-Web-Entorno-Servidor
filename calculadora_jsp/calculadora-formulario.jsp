<!--calculadora-formulario.jsp
contendrá un form con
un input text para el operando 1 (name="operando1")
un select para la operación, con cuatro opciones (name del select = "operacion",
values de los option = "sum", "res", "mul", "div")
un input text para el operando 2 (name="operando2")
un submit para enviar el formulario-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form action="calculadora-resultado.jsp" method="get">
        <input type="text" name="operando1">
        <select name="operacion" id="operacion">
            <option value="sum">+</option>
            <option value="res">-</option>
            <option value="mul">*</option>
            <option value="div">/</option>
        </select>
        <input type="text" name="operando2" id="operando2">
        <input type="submit" value="Calcular">

    </form>

</body>
</html>