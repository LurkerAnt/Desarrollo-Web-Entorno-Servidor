<%
    int [] numeros = new int [] {1,2,3,4,5,6};
    String [] aficiones = new String [] {"Deportes", "Cine", "Teatro", "Fotografía","Lectura", "Viajes"};
%>

<%
  String [] numeros1 = request.getParameterValues("numeros");
%>


<%

  for(int i=0; i<numeros1.length; i++){
    for (int i2=0; i2<aficiones.length;i2++){
      if (numeros1[i].equals(aficiones[numeros[i2]-1])){
        out.println(aficiones + "<br/>");
      }
    }
  }
%>
