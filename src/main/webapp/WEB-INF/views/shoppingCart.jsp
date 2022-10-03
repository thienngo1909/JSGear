<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var = "contextPath" value = "${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSGearProject</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body onLoad="updateCart()">
    <jsp:include page="_header.jsp" />

	<jsp:include page="_menu.jsp" />

	<fmt:setLocale value="en_US" scope="session" />

	<div class="page-title">Cart's Information</div>
    <c:if test = "${empty cartForm or empty cartForm.cartLineInfos}">
        <h2>There is no product in cart</h2>
        <br>
        <h3>Please click "Product" in menu to choose product</h3>
        <a href="${contextPath}/productList">Show Product List</a>
    </c:if>
	<div class="shopping-cart-container">
		<c:if test = "${not empty cartForm and not empty cartForm.cartLineInfos}">
        <form:form method="POST" id="cartForm" modelAttribute="cartForm" action="${contextPath}/shoppingCart">	
           <div class="product-shoppingcart-preview-container">
					<table>			
						<tr>
							<th></th>
							<th>Name</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Subtotal</th>
							<th>#</th>
						</tr>
						<c:forEach items="${cartForm.cartLineInfos}" var="cartLineInfo"	varStatus="varStatus">
							<tr>
								<td><img class="product-image" src="${contextPath}/productImage?code=${cartLineInfo.productInfo.code}" /></td>
								<td style="display:none">
									Code: ${cartLineInfo.productInfo.code} 
									<form:hidden path="cartLineInfos[${varStatus.index}].productInfo.code" />
								</td>
								<td> ${cartLineInfo.productInfo.name}</td>
								<td>
									<span class="price">									
										<fmt:formatNumber value="${cartLineInfo.productInfo.price}" type="currency" />
									</span>
								</td>
								<td>
									<button type="button" class="decreaseQuantity">-</button>
									<form:input	path="cartLineInfos[${varStatus.index}].quantity" id="item-quantity-${varStatus.index}" class="item-quantity"/>
									<button type="button" class="increaseQuantity">+</button>
								</td>
								<td>
									<span class="subtotal">
										<fmt:formatNumber value="${cartLineInfo.amount}" type="currency" />
									</span>
								</td>
							<td><a href="${contextPath}/shoppingCartRemoveProduct?code=${cartLineInfo.productInfo.code}"><i class="fa fa-trash-o" style="font-size:24px;color:red"></i> </a></td>
						</tr>
						</c:forEach>
					</table>
				</div>
            
            <div class="customer-cart-subtotal-container">
				<ul>
					<li>Total: <span class="total">
					<fmt:formatNumber value="${myCartInfo.amountTotal}" type="currency" />
					</span></li>
				</ul>
			</div>
            
            <div style="clear: both"></div>
            <div>
            	
            </div>
            <div class="shopping-cart-nav">
            	<button class="button-update-product" type="submit" value="Update Information">Update Information</button>
            	<a class="btn-continue-buy" href="${contextPath}/productList">Continue Buy</a>
				<a class="btn-enter-customer" href="${contextPath}/customerInfo">Enter Customer Information</a>
				
            </div>
            
        </form:form>
    </c:if>
	</div>
    
    
    <jsp:include page="_footer.jsp" />
    
</body>
</html>