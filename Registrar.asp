<Script language="JavaScript">

function validacion(frm){
	
	if(frm.nom.value == "" )
	{
	   	 alert("Introduce el Nombre");
		 frm.nom.focus();
		 return(false);
	}
	
		
	 else 
	 if(frm.pass.value == "" )
	 {
	 	alert("Introduce la Contraseña");
     	frm.pass.focus();
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
	<form method="post" action="Valida usuario.asp" onSubmit="return validacion(this);">
		<table border="3" align="center" bgcolor="#99CC00">

			<tr> 
				<td colspan="2" align="center"> Registar </td>
			</tr>

			<tr> 
				<td colspan="2" align="left"> Introduce tus Datos </td>
			</tr>

			<tr>
				<td> Nombre</td>
				<td> <input type="text" name="nom" id="nom" onKeyPress="return sololetras(event)"></td>
			</tr>

			<tr>
				<td>Contraseña</td>
				<td> <input type="password" name="pass" id="pass"></td>
			</tr>

			<tr> 
	 			<td  align="center"> <input type="submit" value="Aceptar"> </td>
                <td  align="center"> <input type="reset" value="Borrar"> </td>
			</tr>			

		</table>
	</form>
</body>
</html>
