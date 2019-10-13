<%
private static final int fil =6;
private static final int col =12;
%>

<%
    int [][] matriz = new int [fil][col]; // fil ->filas, col= columnas
    matriz[1][1]=1;
    matriz[2][2]=2;
    matriz[3][3]=3;
    matriz[4][4]=4;
    matriz[5][5]=5;
    

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <style>
        .negativo{
            color: red;
        }
    </style>

    <title>Document</title>

</head>
<body>
    <table> 
       <%for (int fil=0; fil<filas; fil++) {%>
           <tr>
                <%for (int col=0; col<columnas; col++) {
                    int valor = matriz [fil][col];
                    String clase=null;
                        if (valor<0) {
                            clase= "negativo"
                        } else if (valor ==0){
                            clase="cero";
                        }else{
                            clase="positivo";
                       <% }%>
                    <td class ='<%clase%>'><%=valor%></td>
                <% } %>    
           </tr>
        <% } %>
    </table>
</body>
</html>