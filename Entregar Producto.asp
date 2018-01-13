<Script language="JavaScript">

function validacion(frm){
	if(frm.disco.value == "")
	{
	   	alert("Introduce el Nombre del Disco");
	    frm.disco.focus();
		return(false);
	}
	
	else 
	if( frm.precio.value == "")  
	{   
		alert("Introduce el Precio del Disco");
		frm.precio.focus();
  		return (false);
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
</Script>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Documento sin t&iacute;tulo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
	<form method="post" action="" onSubmit="return validacion(this);">
 
  		<table border="3" align="center" bgcolor="#FF6633">
    
  		<tr> 
			<td colspan="2" align="center"> Entregar Producto </td>
		</tr>

		<tr> 
			<td colspan="2" align="left"> Introduce tus Datos </td>
		</tr>

		<tr>
			<td> Cliente</td>
			<td> <select name="cliente">
     			</select>
			</td>
		</tr>

		<tr>
			<td>Disco</td>
			<td> <input type="text" name="disco" id="disco" readonly>
			</td>
		</tr>

		<tr>
			<td>Precio</td>
			<td> <input type="text" name="precio" id="precio" readonly></td>
		</tr>

		<tr> 
			<td colspan="2" align="center"> <input type="submit" value="ENVIAR"> </td>
		</tr>

		</table>
</form>
</body>
</html>
