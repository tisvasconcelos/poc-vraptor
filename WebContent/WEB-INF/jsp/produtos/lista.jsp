<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Produtos > Lista</title>
	<c:import url="/WEB-INF/jsp/includes/imports.jsp"/>
</head>	
<body>
	<div id="main">
		<c:import url="/WEB-INF/jsp/includes/header.jsp"/>
		<div id="content">
			<h2>Produtos > Lista</h2>
			<table cellspacing="0" cellpadding="0" border="0" width="100%">
				<colgroup>
					<col width="47%" />
					<col width="47%" />
					<col width="" />
				</colgroup>
				<thead>
					<tr>
						<th>Nome</th>
						<th colspan="2">Tipo</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="produto" items="${produtos}">
					<tr>
						<td>${produto.nome}</td>
						<td>${produto.tipo}</td>
						<td>
							<a href="<c:url value="/produtos/editar/${produto.id}"/>" class="edit">Editar</a>
							<a href="<c:url value="/produtos/excluir/${produto.id}"/>" class="delete">Excluir</a>
						</td>
					</tr>					
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<!-- Necessario para rodar o plugin de menus -->	
	<a href="http://apycom.com/" id="apycom"></a>

	<c:import url="/WEB-INF/jsp/includes/ready.jsp"/>
</body>
</html>
