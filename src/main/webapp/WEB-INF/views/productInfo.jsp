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
	<jsp:include page="_header.jsp"></jsp:include>
	<jsp:include page="_menu.jsp"></jsp:include>
	<fmt:setLocale value="en_US" scope="session" />

	<div class="row">
		<div class="col-25">
			<img src="${contextPath}/productImage?code=${productInfos.code}" />
		</div>
		<div class="col-75">
			<p>Code: ${productInfos.code}</p>
			<p>Name: ${productInfos.name}</p>
			<p>Quantity: ${productInfos.quantity}</p>
			<h3 style="color: red;">
				Price:
				<fmt:formatNumber value="${productInfos.price}" type="currency"></fmt:formatNumber>
			</h3>
			</p>
			<p>Category: ${productInfos.category}</p>
			<p>Producer: ${productInfos.producer}</p>
			<p>Weight: ${productInfos.detail.weight}</p>
			<p>Color: ${productInfos.detail.color }</p>
			<h4>Insurance: ${productInfos.detail.insurance }</h4>
			<p>${productInfos.detail.specification }</p>
			<div class="buy-product">
			
				<c:if test="${productInfos.quantity > 0}">
					<a class="buy-link" href="${contextPath}/buyProduct?code=${productInfos.code}">Buy
					Now</a>
				</c:if>
				<c:if test="${productInfos.quantity <= 0}">
					<p style="color: red;font-size: 30px">Out of stock</p>
				</c:if>
				
			</div>

		</div>
	</div>

		
			<jsp:include page="_footer.jsp"></jsp:include>

</body>
</html>