<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/styles.css">
</head>
<body>
	<jsp:include page="_header.jsp" />
	<jsp:include page="_menu.jsp" />
	
	<div class="back-btn">
		<a class="back-link" href="${contextPath}/accountInfo">Go Back</a>
	</div>
	
	<div class="accountinfo-container">
		<h3>Your Account Information</h3>
		<ul class="">
			<li>Name: ${accountInfo.name}</li>
			<li>Address: ${accountInfo.address}</li>
			<li>Email: ${accountInfo.email}</li>
			<li>Phone: ${accountInfo.phone}</li>
		</ul>
		<form class="edit-btn" method="POST" action="">
			<input type="submit" value="Accept" class="btn-confirmation"/>
			<a href="">Edit Your Information</a>
		</form>
	</div>
	
	<div class="orderDetaillist-container">
		<c:if test = "${not empty orderList}">
			<table>
				<tr>
					<th>No</th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Amount</th>
				</tr>
				<c:forEach items="${orderList}" var="orderDetailInfo" varStatus="varStatus">
					<tr>
						<td>${varStatus.index + 1}</td>
						<td>${orderDetailInfo.productName}</td>
						<td>${orderDetailInfo.price}</td>
						<td>${orderDetailInfo.quantity}</td>
						<td style="color: red;font-weight:bold;">
						${orderDetailInfo.amount}							
						</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
	
	<jsp:include page="_footer.jsp" />
</body>
</html>