<%
    //parametros a recibir del index.html
    
    String name;
    String charClass;

    //parametros a generar en este jsp

    int strength=0;
    int dexterity=0;
    int constitution=0;
    int charisma=0;
    int intelligence=0;
    int wisdom=0;
    int hitpoints=0;
    
    //almacenar del index los parametros aqui.
    name = request.getParameter("nombrePersonaje");
    charClass=request.getParameter("clasePersonaje");


    //en este "metodo" lo que se hace es roll de stats
    //comprueba si reset es null y si no lo es pide el nombre y clase
    //sino genera los stats en D&D tiras 4 dados y coges los 3 más altos
    //aqui se rollean 3 porque es más sencillo y como vas a hacer el roll hasta que te 
    //parezca bien da un poco igual el funcionamiento interno.
    if(request.getParameter("resetButton")!=null){
        name=request.getParameter("nombrePersonaje");
        charClass=request.getParameter("clasePersonaje");
        for(int i=0; i<3; i++){
            strength+=(int)(Math.random() * 6 + 1);
            dexterity+=(int)(Math.random() * 6 + 1);
            constitution+=(int)(Math.random() * 6 + 1);
            charisma+=(int)(Math.random() * 6 + 1);
            intelligence+=(int)(Math.random() * 6 + 1);
            wisdom+=(int)(Math.random() * 6 + 1);  
        }
        hitpoints=10+ ((int) Math.floor((constitution - 10) / 2.0));
    }else{
        for(int i=0; i<3; i++){
            strength+=(int)(Math.random() * 6 + 1);
            dexterity+=(int)(Math.random() * 6 + 1);
            constitution+=(int)(Math.random() * 6 + 1);
            charisma+=(int)(Math.random() * 6 + 1);
            intelligence+=(int)(Math.random() * 6 + 1);
            wisdom+=(int)(Math.random() * 6 + 1);  
        }
        hitpoints=10+ ((int) Math.floor((constitution - 10) / 2.0));
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
    <!-- Este formulario te enseña los stats actuales que tiene el personaje 
    y te lanza a la pagina para grabarlos -->
    <form action="recordCharacter.jsp">
        Nombre: <input type="text" name="name" id="charName" value="<%=name%>"> <br>
        <br> Class: <input type="text" name="charClassIs" id="charClassIs" value="<%=charClass%>"> <br>
        <br>Strength: <input type="text" name="statStrength" id="statStrength" value="<%=strength%>"> <br>
        <br>Dexterity: <input type="text" name="statDexterity" id="statDexterity" value="<%=dexterity%>"> <br>
        <br>Constitution: <input type="text" name="statConstitution" id="statConstitution"
            value="<%=constitution%>"><br>
        <br>Charisma: <input type="text" name="statCharisma" id="statCharisma" value="<%=charisma%>"> <br>
        <br>Intelligence: <input type="text" name="statIntelligence" id="statIntelligence"
            value="<%=intelligence%>"><br>
        <br>Wisdom: <input type="text" name="statWisdom" id="statWisdom" value="<%=wisdom%>"> <br>
        <br>Hit Points: <input type="text" name="statHitPoints" id="statHitPoints" value="<%=hitpoints%>"> <br>
        <button type="submit" name="recordCharacter">Record Character</button>

    </form>
    <!-- Este formulario hace que se llame recursivamente hasta que los stats te convezcan 
    y los grabes en otra pagina -->
    <!-- lanza el nombre y la clase para que se guarde -->
    <form action="statsRandomizer.jsp">
        <input type="hidden" name="nombrePersonaje" value="<%=name%>">
        <input type="hidden" name="clasePersonaje" value="<%=charClass%>">
        <button type="submit" name="resetButton">Reroll Stats</button>
    </form>

    

</body>

</html>