<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Info</title>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/styles.css">

</head>
<body>

	<div class = "product_info">
		<p>${productInfos.code}</p>
		<p>${productInfos.name}</p>
		<p>${productInfos.quantity}</p>
		<p>${productInfos.price}</p>
		<p>${productInfos.category}</p>
		<p>${productInfos.producer}</p>
		<p>${productInfos.detail.weight}</p>
		<p>${productInfos.detail.color }</p>
		
	</div>
	

		




</body>
</html>