<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Produtos > Novo</title>
	<c:import url="/WEB-INF/jsp/includes/imports.jsp"/>
</head>	
<body>
	<div id="main">
		<c:import url="/WEB-INF/jsp/includes/header.jsp"/>
		<div id="content">
			<h2>Produtos > Novo</h2>
			<c:choose>
				<c:when test="${not empty produto.id}">
					<form action="<c:url value="/produtos/atualizar"/>" method="post">
					<input type="hidden" name="produto.id" value="${produto.id}" />
				</c:when>
				<c:otherwise>
					<form action="<c:url value="/produtos/salvar"/>" method="post">
				</c:otherwise>
			</c:choose>
				<fieldset>
					<p>
						<label>Nome:</label>
						<input type="text" name="produto.nome" value="${produto.nome}" />
					</p>
					<p>
						<label>Tipo:</label>
						<select name="produto.tipo">
							<option value="">Selecione</option>
							<option value="dvd">DVD</option>
							<option value="cd">CD</option>
							<option value="bluray">Blu-ray</option>
						</select>
					</p>
					<p class="full">
						<label>Descrição:</label>
						<textarea name="produto.descricao">${produto.descricao}</textarea>
					</p>
					<p class="full">
						<button type="submit" class="save">Salvar</button>
					</p>
				</fieldset>
			</form>
		</div>
	</div>

	<!-- Necessario para rodar o plugin de menus -->	
	<a href="http://apycom.com/" id="apycom"></a>

	<c:import url="/WEB-INF/jsp/includes/ready.jsp"/>
</body>
</html>