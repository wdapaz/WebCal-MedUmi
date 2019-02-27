
<%@page import="br.com.garten.calmedumi.ListaAmostras"%>
<%@page import="java.util.List"%>
<%@page import="br.com.garten.calmedumi.Amostra"%>
<%
	HttpSession sess = request.getSession();
	ListaAmostras amostras = (ListaAmostras) sess.getAttribute("amostras");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WebCal MedUmi</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

	<form id="formAmostra" action="/calmedumi/recParam" method="post">
		Laboratorio: <input type="text" name="lab" /> Garten:<input
			type="text" name="grt" />
		<button type="submit">enviar</button>

	</form>



	<div style="overflow-x: auto;">
	
	
		<table>
			<tr>
				<th>Laboratório</th>
				<th>Garten</th>
				
			</tr>
			
		<% if(amostras != null){ %>
			<% for (Amostra amostra : amostras){ %>
			<tr>
				<td><%=amostra.getAmostraGarten()%></td>
				<td><%=amostra.getAmostraLaboratorio()%></td>
				
			</tr>
			
			<%}
		} %>
		
		</table>
		<h3>
			<%
				if(amostras != null && amostras.size() > 1){
					out.println(amostras.getLinearRegression().toString());
				}
			
			
			%>
		</h3>	
	</div>
	
<style>
	
	table {
		border-collapse: collapse;
		border-spacing: 0;
		width: 100%;
		border: 1px solid #ddd;
	}
	
	th, td {
		text-align: left;
		padding: 8px;
	}
	
	tr:nth-child(even) {
		background-color: #f2f2f2
	}
	
	#formAmostra{
		margin-bottom:15px
	}
	
</style>
</body>
</html>