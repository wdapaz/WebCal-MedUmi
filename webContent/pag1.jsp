
<%@page import="java.util.List"%>
<%@page import="br.com.garten.calmedumi.Amostra"%>
<%
	HttpSession sess = request.getSession();
	List<Amostra> amostras = (List<Amostra>) sess.getAttribute("amostras");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WebCal MedUmi</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

	<form action="/calmedumi/recParam" method="post">
		Laboratorio: <input type="text" name="lab" /> Garten:<input
			type="text" name="grt" />
		<button type="submit">enviar</button>

	</form>



	<div style="overflow-x: auto;">
	
	
		<table>
			<tr>
				<th>Laboratório</th>
				<th>Garten</th>
				<th>Y</th>

			</tr>
			
		<% if(amostras != null){ %>
			<% for (Amostra amostra : amostras){ %>
			<tr>
				<td><%=amostra.getAmostraGarten()%></td>
				<td><%=amostra.getAmostraLaboratorio()%></td>
				<td>num y</td>

			</tr>
			
			<%}
		} %>

		</table>
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
</style>


</body>
</html>