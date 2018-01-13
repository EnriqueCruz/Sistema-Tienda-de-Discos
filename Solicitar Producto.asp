<%		
			
			vcantid= request.form("cant")
			set cnx = CreateObject("ADODB.connection")
			cnx.connectionstring = Application("myconestr")
			cnx.open
			set myrs = CreateObject("ADODB.recordset")
			sql = "SELECT *  FROM Distribuidor"
			myrs.activeconnection = cnx
			myrs.source=sql
			myrs.open,,0,2
        
		
		
			vct=request.QueryString("ct")
		    vemp=request.QueryString("empresa")
			
'set cnx = CreateObject("ADODB.connection")
'cnx.connectionstring = Application("myconestr")
'cnx.open
'	set myct = CreateObject("ADODB.recordset")
'	myct.activeconnection = cnx
'	sqlct="select * from Distribuidor "
'	myrs.source = sqlct
'	myrs.open,,0,2
	
			if vemp<>"" then	
	   		do while(not(myrs.eof))
	      		if myrs("Empresa")=trim(vemp) then
		      		vnom=myrs("Nombre")
			  		vdire=myrs("Direccion")
			  		vtele=myrs("Telefono")
			  		vcele=myrs("Celular")
			 	exit do
		   		end if
		   		myrs.movenext
			loop
			else
	   			vnom=""      
			end if
		
		
			%>	
            
            



<Script language="JavaScript">

function valida(frm){
	   if(frm.cant.value == ""){
	   alert("Introduce la Cantidad de Producto");
       frm.cant.focus();
	   return(false);
	    }
	   }
	   
	   
	   function solonumeros(e)
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
	
	

function llamar()
	   {
	   var ct=document.getElementById("empresa").value;
	   window.location.href="Solicitar Producto.asp?empresa="+ct;
	   }

</Script>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Documento sin t&iacute;tulo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>

  <form method="post" action="peticion.asp" onSubmit="return validacion(this);">

	<table width="231" border="5" align="center">
  	<tr> 
    	<td colspan="2" align="center">Solicitar Producto</td>
  	</tr>
  	
    <td  align="center">Empresa</td>
    	<td colspan="" align="center"><select name="empresa" id="empresa" onChange="llamar()">
    	  <option value = "" selected> </option>
          
    	  <%myrs.movefirst
			do while(not(myrs.eof))%>
    	  <option value="<%response.Write myrs("Empresa")%> ">
    	    <%response.Write myrs("Empresa")%>
   	      </option>
    	  <%myrs.movenext
			loop%>		
  	  </select></td>
    
    <tr> 
    	<td width="57"  align="center">Nombre</td>
    	<td width="144" colspan="" align="center"><input type="text" name="nomdi" id="nomdi" value="<% response.Write vnom %>" readonly></td>
  	</tr>
  	<tr> 
    	<td  align="center">Direcion</td>
    	<td colspan="" align="center"><input type="text" name="direc" id="direc" value="<% response.Write vdire %>" readonly ></td>
  	</tr>
  	<tr> 
    	
  	</tr>
  	<tr> 
    	<td  align="center">Telefono</td>
    	<td colspan="" align="center"><input type="text" name="tel" id="tel" value="<% response.Write vtele %>" readonly ></td>
  	</tr>
  	<tr> 
    	<td  align="center">Celular</td>
    	<td colspan="" align="center"><input type="text" name="cel" id="cel" value="<% response.Write vcele %>" readonly ></td>
  	</tr>
    <tr> 
    	<td  align="center">Cantidad</td>
    	<td colspan="" align="center"><input type="text" name="cant" id="cant" value=""  onKeyPress="return solonumeros(event)"></td>
  	</tr>
  	<tr> 
    	<td colspan="2" align="center"><input type="Submit" name="soli" id="soli" value="Solicitar Producto"> 
    
  	</tr>
   </table>
 </form>
</body>
</html>
