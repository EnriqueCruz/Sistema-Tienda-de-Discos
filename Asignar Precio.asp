<% 
 	set cnx = CreateObject("ADODB.connection")
	cnx.connectionstring =	Application("myconestr")
	cnx.open
	set myrs = CreateObject("ADODB.recordset")
	myrs.activeconnection = cnx
	SQL = "select * from Disco"
	myrs.source = sql
	myrs.open,,0,2
	 
	myrs.movelast
	vegen = myrs("Genero")
	vtitul = myrs("Titulo")
 	vartist = myrs("Artista")	
%>

<Script language="JavaScript">
function valida(frm){
	if (frm.idprod.value == "")
	{  alert("Introduce el nombre");
       frm.idprod.focus();
	   return(false);
	   }
	   else 
	   if(frm.gener.value == ""){
	   alert("Introduce el Sexo");
       frm.gener.focus();
	   return(false);
	    }
	   else 
	   if(frm.titul.value == ""){
	   alert("Introduce la Direccion");
       frm.titul.focus();
	   return(false);
	    }
	   else 
	   if(frm.artis.value == ""){
	   alert("Introduce el Telefono");
       frm.artis.focus();
	   return(false);
	    }
	   else 
	   if(frm.prec.value == ""){
	   alert("Introduce el Numero de Celular");
       frm.prec.focus();
	   return(false);
	    }
	   }
	     
	   function solonumeros (e)
    {
        key=key.code || e.which;
        teclado=String.fromCharCode (key);
        numeros="0123456789";
        especiales="8-37-38-46";//array
        teclado_especial=false;
        
        for (var i in especiales)
        {
            if(key==especiales[i])
            {
                teclado_especial=true;
            }
        }
        if (numeros.indexOf(teclado)==-1 && !tecladoespecial)
        {
            return false;
        }
    }	
	
	function sololetras(e){
	key = e.keycode || e.which;
	teclado = String.fromCharCode(key).toLowerCase();
	letras = " abcdefghijklamnñopqrstuvwxyz";
	especiales = "8-37-38-46-164";
	tecladoespecial= false;
	for(var i in especiales){
			if (key==especiales[i]){
				tecladoespecial = true;
				break;
			}
		}
			if (letras.indexOf(teclado)== -1 && !tecladoespecial){
			return false;	
}
}

</Script>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Documento sin t&iacute;tulo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
	 <form method="post" action="asigna precio.asp" onSubmit="return validacion(this);">
	  <table border="3" align="center" bgcolor="#99CC00">

		<tr> 
			<td colspan="2" align="center"> Asignar Precio </td>
		</tr>

		<tr>
			<td>Artista</td>
			<td> <input type="text" name="artista" id="artista" value="<%response.Write vartist%>" onKeyPress="return sololetras(event)" readonly>
            </td>
		</tr>

		<tr>
			<td>Genero</td>
			<td> <input type="text" name="gener" id="gener" value="<%response.Write vegen%>" onKeyPress="return sololetras(event)"  readonly></td>
		</tr>

		<tr>
			<td>Titulo</td>
			<td> <input type="text" name="titul" id="titul" value="<%response.Write vtitul%>" onKeyPress="return sololetras(event)" readonly></td>
		</tr>
        
		<tr>
			<td>Precio</td>
			<td> <input type="text" name="prec" id="prec" onKeyPress="return solonumeros(event)" ></td>
		</tr>

		<tr> 
			 <td colspan="2" align="center"> <input type="submit" value="Aceptar"> </td>
		</tr>

	   </table>
</body>
</html>
