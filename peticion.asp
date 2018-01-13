<%
	vcanti = request.form("cant")

			set cnx = CreateObject("ADODB.connection")
			cnx.connectionstring = Application("myconestr")
			cnx.open
			set myrs = CreateObject("ADODB.recordset")
			sql = "SELECT *  FROM Distribuidor"
			myrs.activeconnection = cnx
			myrs.source=sql
			myrs.open,,0,2
			
			
			myrs("Cantidad") = trim(vcanti)
			myrs.update
			
			response.redirect "Definir Clasificacion.asp"
%>