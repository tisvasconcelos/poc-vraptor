<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Index</title>
	<c:import url="/WEB-INF/jsp/includes/imports.jsp"/>
</head>	
<body>
	<div id="main">
		<c:import url="/WEB-INF/jsp/includes/header.jsp"/>
		<div id="content"></div>
	</div>

	<!-- Necessario para rodar o plugin de menus -->	
	<a href="http://apycom.com/" id="apycom"></a>
	
	<c:import url="/WEB-INF/jsp/includes/ready.jsp"/>
</body>
</html>