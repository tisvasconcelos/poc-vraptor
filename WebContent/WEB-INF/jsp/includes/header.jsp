<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
		<div id="header">
			<div id="menu">
				<ul class="menu">
					<li><a href="<c:url value="/"/>"><span>Home</span></a></li>
					<li>
						<a href="#" class="parent"><span>Produtos</span></a>
						<div>
							<ul>
								<li><a href="<c:url value="/produtos/novo"/>"><span>Novo</span></a></li>
								<li><a href="<c:url value="/produtos/lista"/>"><span>Listar</span></a></li>
								<li><a href="<c:url value="/produtos/busca"/>"><span>Buscar</span></a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="#" class="parent"><span>Clientes</span></a>
						<div>
							<ul>
								<li><a href="#"><span>Novo</span></a></li>
								<li><a href="#"><span>Listar</span></a></li>
								<li><a href="#"><span>Buscar</span></a></li>
							</ul>
						</div>
					</li>
					<li class="last"><a href="<c:url value="/contato"/>"><span>Contato</span></a></li>
				</ul>
			</div>
		</div>