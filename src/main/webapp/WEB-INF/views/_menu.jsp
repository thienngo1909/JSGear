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
				<a href="${contextPath}/" class="header-logo-link"> <img
					class="logo-main" src="${contextPath}/img/logo.JPG" width="350px"
					height="75px">
				</a>
			</div>
		</div>
		<div class="menu-container-right">
			<div class="menu-container-right-search-cart clearfix">
				<div class="site-searching">
					<form class="form-inline" method="GET" action="${contextPath}/searchingProduct">
						<input type="text" id="search" class="form-control" name="search"
							placeholder="Searching......">
						<button type="submit" class="btn btn-primary">
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>
				<div class="site-cart">
					<a href="#"><i class="fa fa-shopping-cart"
						style="font-size: 40px" aria-hidden="true"></i> 
						<div class="cart-number">1</div>
					</a>
				</div>
			</div>
			<div class="clearfix">
				<div id="menu-main-menu" style="font-size: 30px">
					<ul>
						<li><a class="home-page" href="#">Home</a></li>
						<li><a class="item" href="#">Product</a></li>					
					</ul>
				</div>
			</div>
			<div class="clearfix">
				<div id="menu-main-menu" style="font-size: 30px">
					<ul>
						<li><a class="home-page" href="${contextPath}/productListByCategory?id=1">MOUSE</a></li>
						<li><a class="home-page" href="${contextPath}/productListByCategory?id=2">KEYBOARD</a></li>					
					</ul>
				</div>
			</div>
		</div>

	</div>
</body>
</html>