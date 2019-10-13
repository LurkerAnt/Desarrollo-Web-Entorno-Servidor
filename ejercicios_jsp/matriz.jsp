<%
private static final int filas =6;
private static final int columnas =12;
%>

<%
    int [][] mat = new int [filas][columnas]; // fil ->filas, col= columnas
    mat[1][1]=1;
    mat[2][2]=2;
    mat[3][3]=3;
    mat[4][4]=4;
    mat[5][5]=5;
%>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Matriz</title>
</head>

<body>
    <table>
        <%for (int filas1=0; filas1<filas; filas1++) {%>
            <tr>
                <%for (int columnas1=0; columnas1<columnas; columnas1++) {
                    int value =mat[filas1][columnas1];   
                    String class=null;
                    if (value<0){
                        class="negativo";
                    } else if (value==0){
                        class="cero";    
                    } else{    
                    class="positivo";
                    }%>
                <td class='<%class%>'><%=value%></td>
                <%}%>
            </tr>
        <%}%>
    </table>
</body>
</html>