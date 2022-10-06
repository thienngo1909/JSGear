<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Cart Finalize</title>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/styles.css">
<script src="https://kit.fontawesome.com/68996e32fe.js" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="_header.jsp" />

	<jsp:include page="_menu.jsp" />

	<fmt:setLocale value="en_US" scope="session" />
	
	
	<div class="page-title-finalize">
		<p>THANK YOU!</p>
		<i class="fa-solid fa-check"></i>
		<h2>${lastOrderedCartInfo.customerInfo.name}</h2>
		<h3>Your order has been successfully processed</h3>
		<h3>We'll send more information to your gmail and call you soon. </h3>
	</div>
	
	<jsp:include page="_footer.jsp" />
</body>
</html>