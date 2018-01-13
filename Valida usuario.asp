<%

vnom = request.Form("nom")
vpass = request.Form("pass")

	set cnx = CreateObject("ADODB.connection")
	cnx.connectionstring = Application("myconestr")
	cnx.open
	set myrs = CreateObject("ADODB.recordset")
	myrs.activeconnection = cnx
	sql = "select * from Usuario where Nombre=  '"+trim(vnom)+"' and Password= '"+trim(vpass) +"'"
	myrs.source=sql
	myrs.open,,0,2

	if myrs.eof and myrs.bof then
		response.write"ERROR Usuario no Valido"
		Response.AddHeader"REFRESH","4;URL=Registrar.asp"
	
	else
	
		response.Redirect("Pagina Principal.asp")
		
	end if		
%>
