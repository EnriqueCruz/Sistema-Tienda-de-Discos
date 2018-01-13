<%
 	vpreci = request.Form("prec")
 	set cnx = CreateObject("ADODB.connection")
	cnx.connectionstring =	Application("myconestr")
	cnx.open
	set myrs = CreateObject("ADODB.recordset")
	myrs.activeconnection = cnx
	SQL = "select * from Disco"
	myrs.source = sql
	myrs.open,,0,2
	if myrs.eof and myrs.bof then
		vid = 1
	else
		myrs.movelast
		vid = myrs
		vid = myrs("Id_Disco") + 1
	end if
	
		myrs.addnew
		
		myrs("Id_Disco") = trim(vid)
		myrs("Precio") = trim(vpreci)
	myrs.update
	response.Redirect("Definir Clasificacion.asp")
%>