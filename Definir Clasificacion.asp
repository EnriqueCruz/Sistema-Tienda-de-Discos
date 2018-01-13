<Script language="JavaScript">

function validacion(frm){

	if (frm.gen.value == "")
	{  alert("Introduce el nombre");
       frm.gen.focus();
	   return(false);
	   }
	   else 
	   if(frm.tit.value == ""){
	   alert("Introduce el Sexo");
       frm.tit.focus();
	   return(false);
	    }
	   else 
	   if(frm.art.value == ""){
	   alert("Introduce la Direccion");
       frm.art.focus();
	   return(false);
	    }	   else 
	   if(frm.edad.value == ""){
	   alert("Introduce el RFC");
       frm.edad.focus();
	   return(false);
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
  <form method="post" action="asigna especificacion.asp" onSubmit="return validacion(this);">
	<table width="231" border="5" align="center">
  	<tr> 
    	<td colspan="2" align="center">Definir Clasificacion</td>
  	</tr>
  	<tr> 
    	<td width="57"  align="center">Genero</td>
    	<td width="144" colspan="" align="center"><input type="text" name="gen" id="gen" onKeyPress="return sololetras(event)" ></td>
  	</tr>
  	<tr> 
    	<td  align="center">Titulo</td>
    	<td colspan="" align="center"><input type="text" name="tit" id="tit"></td>
  	</tr>
  	<tr> 
    	<td  align="center">Artista</td>
    	<td colspan="" align="center"><input type="text" name="art" id="art" onKeyPress="return sololetras(event)" ></td>
  	</tr>
  	<tr> 
   
  	<tr> 
    	<td colspan="2" align="center"><input type="Submit" name="soli" id="soli2" value="Asignar Precio"> 
    
    
  	</tr>
	</table>
  </form>
</body>
</html>
