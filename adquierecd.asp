<%		
			set cnx = CreateObject("ADODB.connection")
			cnx.connectionstring = Application("myconestr")
			cnx.open
			set myrs = CreateObject("ADODB.recordset")
			sql = "SELECT DISTINCT Artista from Disco"
			myrs.activeconnection = cnx
			myrs.source=sql
			myrs.open,,0,2
        
			%>	