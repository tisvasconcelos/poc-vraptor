<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Index</title>
	<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="../css/menu.css" type="text/css" media="screen" />
</head>	
<body>
	<div id="main">
		<div id="header">
			<div id="menu">
				<ul class="menu">
					<li><a href="#"><span>Home</span></a></li>
					<li>
						<a href="#" class="parent"><span>Produtos</span></a>
						<div>
							<ul>
								<li><a href="#"><span>Novo</span></a></li>
								<li><a href="#"><span>Listar</span></a></li>
								<li><a href="#"><span>Buscar</span></a></li>
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
					<li class="last"><a href="#"><span>Contato</span></a></li>
				</ul>
			</div>
		</div>
		<div id="content">
			<h2>Contato</h2>
			<form action="#" method="post">
				<fieldset>
					<p>
						<label>Nome:</label>
						<input type="text" name="contato.nome" value="" />
					</p>
					<p>
						<label>E-mail:</label>
						<input type="text" name="contato.email" value="" />
					</p>
					<p>
						<label>Assunto:</label>
						<input type="text" name="contato.assunto" value="" />
					</p>
					<p class="full">
						<label>Mensagem:</label>
						<textarea name="contato.mensagem"></textarea>
					</p>
					<p class="full">
						<button type="submit" class="send">Enviar</button>
					</p>
				</fieldset>
			</form>
		</div>
	</div>

	<!-- Necessario para rodar o plugin de menus -->	
	<a href="http://apycom.com/" id="apycom"></a>

	<script src="../js/jquery.min.js"></script>
	<script src="../js/menu.js"></script>
	<script src="../js/script.js"></script>
</body>
</html>
