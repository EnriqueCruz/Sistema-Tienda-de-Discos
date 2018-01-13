<%
set cnx = CreateObject("ADODB.connection")
	cnx.connectionstring = Application("myconestr")
	cnx.open
	set myrs = CreateObject("ADODB.recordset")
	myrs.activeconnection = cnx
	SQL = "select * from Disco"
	myrs.source = sql
	myrs.open,,0,2
	
	 if myrs.eof and myrs.bof then
	    response.Write  "Informacion no Disponible"
     else
%>

<html>
<head>
<title>Documento sin t&iacute;tulo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body >

	<form method="post" action="Borrar.asp">
	<table align="center" bgcolor="#CCFF99" border="2">
		 
		 <tr><td colspan="9" align="right"> <input type="submit" name="Borrar" id="Borrar"> </td>
			</tr>
		 
		<tr><td bgcolor="#6666FF" align="center"><Font color="#CCCCCC" face="Verdana, Arial, Helvetica, sans-serif">Id</td>
			<td bgcolor="#6666FF" align="center"><Font color="#CCCCCC" face="Verdana, Arial, Helvetica, sans-serif">Titulo</td>
			<td bgcolor="#6666FF" align="center"><Font color="#CCCCCC" face="Verdana, Arial, Helvetica, sans-serif">Genero</td>
			<td bgcolor="#6666FF" align="center"><Font color="#CCCCCC" face="Verdana, Arial, Helvetica, sans-serif">Artista</td>
			<td bgcolor="#6666FF" align="center"><Font color="#CCCCCC" face="Verdana, Arial, Helvetica, sans-serif">Telefono</td>
			</tr>
	<%
	myrs.movefirst
	do while(not (myrs.eof))
	%>
	<tr><td ><input type="checkbox" name = "Campos[]" value="<% response.Write myrs("Id_Disco") %>"><a href="Modificaciones.asp?Id=<% response.write myrs("Id_Disco")%>"/><Font color="#CC0066" face="Verdana, Arial, Helvetica, sans-serif"><% response.Write myrs("Id_Disco")%> </a></td>
		<td><% response.Write myrs("Titulo")%></td>
		<td><% response.Write myrs("Genero")%></td>
		<td><% response.Write myrs("Precio")%></td>
		<td><% response.Write myrs("Artista")%></td>
		
</tr>
	 
	 <% myrs.movenext
	 loop%>
	 
	 </table>
	 
	 </form>
	 
	 </body>
	 </html>
	 <% end if %>	
		