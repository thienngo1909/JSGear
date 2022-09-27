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
<title>Shopping Cart Confirmation</title>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/styles.css">
</head>
<body>
	<jsp:include page="_header.jsp" />

	<jsp:include page="_menu.jsp" />
	
	<fmt:setLocale value="en_US" scope="session" />
	<div class="page-title-form">
		<p>Confirmation</p>
		<h3>Please check your information before submit</h3>
	</div>
	<div class="customer-form-confirm">
		<h3>Customer Information</h3>
		<ul>
			<li>Name: ${myCartInfo.customerInfo.name}</li>
			<li>Address: ${myCartInfo.customerInfo.address}</li>
			<li>Email: ${myCartInfo.customerInfo.email}</li>
			<li>Phone: ${myCartInfo.customerInfo.phone}</li>
		</ul>
		<form class="edit-btn" method="POST" action="${contextPath}/shoppingCartConfirmation">
			<input type="submit" value="Accept" class="btn-confirmation"/>
			<a href="${contextPath}/shoppingCart">Edit Your Cart</a>
			<a href="${contextPath}/customerInfo">Edit Your Information</a>
		</form>
	</div>
	
	
	<div class="product-information">
			<table>
				<tr>
					<th>Image</th>
					<th>Code</th>
					<th>Product's Name</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Total</th>
				</tr>
				<c:forEach items="${myCartInfo.cartLineInfos}" var="cartLineInfo">
				<tr>
					<td><img src="${contextPath}/productImage?code=${cartLineInfo.productInfo.code}"></td>
					<td>${cartLineInfo.productInfo.code}</td>
					<td>${cartLineInfo.productInfo.name}</td>
					<td>${cartLineInfo.productInfo.price}</td>
					<td>${cartLineInfo.quantity}</td>
					<td><fmt:formatNumber value="${cartLineInfo.amount}" type="currency"/></td>
				</tr>
				</c:forEach>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
		
	</div>
	<div class="product-subtotal">
		<table>
			<tr>
				<td>SubTotal:</td>
				<td><fmt:formatNumber value="${myCartInfo.amountTotal}" type="currency" /> </td>
			</tr>
			<tr>
				<td>Tax:</td>
				<td>0%</td>
			</tr>
			<tr>
				<td class="td-last-child">Total:</td>
				<td class="td-last-child"><fmt:formatNumber value="${myCartInfo.amountTotal}" type="currency" /> </td>
			</tr>
		</table>	
	</div>
	
	<jsp:include page="_footer.jsp" />
</body>
</html>