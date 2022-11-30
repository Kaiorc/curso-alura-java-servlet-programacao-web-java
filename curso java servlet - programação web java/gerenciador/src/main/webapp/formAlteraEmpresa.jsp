<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:url value="/alteraEmpresa" var="linkServletNovaEmpresa"/> 

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>

	<body>
		<form action="${linkServletNovaEmpresa}" method="post">
			
			Nome: <input type="text" name="nome" value="${empresa.nome}"/>
			Data Abertura: <input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>"/>
			<%--Diferen�a entre o formul�rio de cadastro e de altera��o, pois no de altera��o
			deve ser enviado o id para a identifica��o da empresa--%>
			<input type="hidden" name="id" value="${empresa.id}"/>
			<input type="submit"/>	
			
		</form>
	</body>
</html>