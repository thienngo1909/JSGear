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
	<div class="page-title-form" style="color:black">
		<p>Confirmation</p>
		<h3>Please check your information before submit</h3>
	</div>
	<h3 class="mid-title" style="color:black">Customer Information</h3> 
	<div class="customer-form-confirm">
		
		<div class="row">
			<div class="customer-information">
				<p>Name: </p>
				<h4>${myCartInfo.customerInfo.name}</h4>
			</div>
			<div class="customer-information">
				<p>Email: </p>
				<h4>${myCartInfo.customerInfo.email}</h4>
			</div>
		</div>
		
		<div class="row">
			<div class="customer-information">
				<p>Phone: </p>
				<h4>${myCartInfo.customerInfo.phone}</h4>
			</div>
			<div class="customer-information">
				<p>Address: </p>
				<h4>${myCartInfo.customerInfo.address}</h4>
			</div>
		</div>
		<div class="row" style="color:red;">
			<div class="customer-information">
				<p>Total Quantity: </p>
				<h4>${myCartInfo.quantityTotal}</h4>
			</div>
		</div>
	</div>
	
	<form class="edit-btn" method="POST" action="${contextPath}/shoppingCartConfirmation">
			<input type="submit" value="Accept" class="btn-confirmation"/>
			<a href="${contextPath}/shoppingCart">Edit Your Cart</a>
			<a href="${contextPath}/customerInfo">Edit Your Information</a>
	</form>
	<div class="product-information">
			<p>Product's Information</p>
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
					<td><img src="${contextPath}/productImage?code=${cartLineInfo.productInfo.code}" style="width:250px;height:200px;"></td>
					<td>${cartLineInfo.productInfo.code}</td>
					<td>${cartLineInfo.productInfo.name}</td>
					<td>${cartLineInfo.productInfo.price}</td>
					<td>${cartLineInfo.quantity}</td>
					<td><fmt:formatNumber value="${cartLineInfo.amount}" type="currency"/></td>
				</tr>
				</c:forEach>
			</table>
		
	</div>
	<div class="product-subtotal" style="color:red; font-weight: bold;">
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