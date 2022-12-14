<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="name" value="${pageContext.request.userPrincipal.name}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header</title>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/styles.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="menu-container">
		<div class="menu-container-left">
			<div class="menu-logo">
				<a href="${contextPath}/productList" class="header-logo-link"> <img
					class="logo-main" src="${contextPath}/img/logo.JPG" width="350px"
					height="75px">
				</a>
			</div>
		</div>
		<div class="menu-container-right">
			<div class="menu-container-right-search-cart clearfix">
				<div class="site-searching">
					<form class="form-inline" method="GET"
						action="${contextPath}/searchingProduct">
						<input type="text" id="search" class="form-control" name="search"
							placeholder="Searching......">
						<button type="submit" class="btn btn-primary">
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>
				<div class="site-cart">
					<a href="${contextPath}/shoppingCart"><i
						class="fa fa-shopping-cart" style="font-size: 40px"
						aria-hidden="true"></i> <c:if
							test="${myCartInfo.quantityTotal == null}">
							<div class="cart-number">0</div>
						</c:if> <c:if test="${myCartInfo != null}">
							<div class="cart-number">${myCartInfo.quantityTotal}</div>
						</c:if> </a>
				</div>
			</div>
		</div>
	</div>
	<div class="menu-main-menu">
		<ul>
			<li class="dropdown"><a
				href="${contextPath}/productListByCategory">Home</a></li>
			<li class="dropdown"><a
				href="${contextPath}/productListByCategory?category=Mouse">Mouse</a>
				<div class="dropdown-content">
					<a
						href="${contextPath}/productListByCategory?category=MOUSE&producer=Logitech">Logitech</a>
					<a
						href="${contextPath}/productListByCategory?category=MOUSE&producer=Razer">Razer</a>
					<a
						href="${contextPath}/productListByCategory?category=MOUSE&producer=Corsair">Corsair</a>
					<a
						href="${contextPath}/productListByCategory?category=MOUSE&producer=Fuhlen">Fuhlen</a>
					<a
						href="${contextPath}/productListByCategory?category=MOUSE&producer=Steelseries">Steelseries</a>
				</div></li>
			<li class="dropdown"><a
				href="${contextPath}/productListByCategory?category=Keyboad">Keyboad</a>
				<div class="dropdown-content">
					<a
						href="${contextPath}/productListByCategory?category=Keyboad&producer=Logitech">Logitech</a>
					<a
						href="${contextPath}/productListByCategory?category=Keyboad&producer=Razer">Razer</a>
					<a
						href="${contextPath}/productListByCategory?category=Keyboad&producer=Corsair">Corsair</a>
					<a
						href="${contextPath}/productListByCategory?category=Keyboad&producer=Steelseries">Steelseries</a>
				</div></li>
			<li class="dropdown"><a
				href="${contextPath}/productListByCategory?category=Headphone">Headphone</a>
				<div class="dropdown-content">
					<a
						href="${contextPath}/productListByCategory?category=Headphone&producer=Logitech">Logitech</a>
					<a
						href="${contextPath}/productListByCategory?category=Headphone&producer=Razer">Razer</a>
					<a
						href="${contextPath}/productListByCategory?category=Headphone&producer=Corsair">Corsair</a>
					<a
						href="${contextPath}/productListByCategory?category=Headphone&producer=Steelseries">Steelseries</a>
				</div></li>
			<li class="dropdown"><a
				href="${contextPath}/productListByCategory?category=Screen">Screen</a>
			<li class="dropdown"><a
				href="${contextPath}/productListByCategory?category=Laptop">Laptop</a>
			</li>
		</ul>
	</div>
</body>
</html>