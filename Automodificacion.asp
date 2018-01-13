
<Script language="JavaScript">

function valida(frm){
	if (frm.Id.value == "")
	{  alert("Introduce el Id");
       frm.nombre.focus();
	   return(false);
	   }
	   else 
	   if(frm.dir.value == ""){
	   alert("Introduce la Direccion");
       frm.dir.focus();
	   return(false);
	    }
	   else 
	   if(frm.tel.value == ""){
	   alert("Introduce el Telefono");
       frm.tel.focus();
	   return(false);
	    }
	   else 
	   if(frm.cel.value == ""){
	   alert("Introduce el Numero de Celular");
       frm.cel.focus();
	   return(false);
	    }
	   else 
	   if(frm.mail.value == ""){
	   alert("Introduce el Correo Electronico");
       frm.mail.focus();
	   return(false);
	    }
	   
	   }
	   function mostrar()
	   {
	   var varid;
	   varid = document.getElementById("Id").value;
	   window.location.href = "Automodificacion.asp?Id="+varid;
	   }
	   </Script>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Documento sin t&iacute;tulo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<form method="post" action="" onSubmit="return valida(this);">
<table border="2" align = "center" bgcolor="#0099CC"  >
	
	<tr><td align="center">Id</td> 
		<td align="" ><input type = "text" name = "Id" id="Id" style="background:#F9F" /> </td>
		<td rowspan="3"><input type="submit" name="Acepta" value="Aceptar" onBlur="mostrar()"></td>
	</tr>
	
	<tr><td align="center">Nombre</td> 
		<td align=""><input type = "text" name = "nombre"  readonly="" style=""> </td>
	</tr>
	
	<tr><td align="center">Sexo</td> 
		<td> <input type="text" name="Sexo" readonly=""> </td>
	</tr>
	
	<tr><td align="center">Direccion</td> 
		<td><input type = "text" name = "dir" > </td>
		<td rowspan="3"><input type="reset" name="Borrar" value="Borrar"></td>
	</tr>
	
	<tr><td align="center">Telefono</td> 
		<td><input type = "text" name = "tel" > </td>
	</tr>
	
	<tr><td align="center">Celular</td> 
		<td><input type = "text" name = "cel" > </td>
	</tr>
	
	<tr><td align="center">Correo</td> 
		<td><input type = "text" name = "mail"> </td>
		<td rowspan="3"><inpuT type="button" name="Consultas" value="Consultas"></td>
	</tr>
	
	<tr><td align="center">RFC</td> 
		<td><input type = "text" name = "rfc" readonly=""> </td>
	</tr>
	
	<tr><td align="center">Edad</td> 
		<td><input type="text" readonly=""></td>
	</tr>
	
	</table>
</form>
	



</body>
</html>
