<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Account</title>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/styles.css">
</head>
<body>
	<jsp:include page="_header.jsp" />

	<jsp:include page="_menu.jsp" />

	<div class="page-title">
		<h3>Account List</h3>
	</div>
	<div class="account-list-container">
		<c:if test="${not empty accountDetailInfo}">
			<form:form method="POST" id="accountDetailInfo"
				modelAttribute="accountDetailInfo"
				action="${contextPath}/manageAccount">
				<div class="product-shoppingcart-preview-container">
					<table>
						<tr>
							<th style="display: none"></th>
							<th>No</th>
							<th>UserName</th>
							<th>Name</th>
							<th>Address</th>
							<th>Email</th>
							<th>Phone</th>
							<th>Role</th>
						</tr>
						<c:forEach items="${accountDetailInfo.accountInfo}"
							var="accountInfo" varStatus="varStatus">
							<tr>
								<td style="display: none">${accountInfo.id} <form:hidden
										path="accountInfo[${varStatus.index}].id" />
								</td>
								<td>${varStatus.index + 1}</td>
								<td>${accountInfo.userName} <form:hidden
										path="accountInfo[${varStatus.index}].userName" />
								</td>
								<td>${accountInfo.name} <form:hidden
										path="accountInfo[${varStatus.index}].name" />
								</td>
								<td>${accountInfo.address} <form:hidden
										path="accountInfo[${varStatus.index}].address" />
								</td>
								<td>${accountInfo.email} <form:hidden
										path="accountInfo[${varStatus.index}].email" />
								</td>
								<td>${accountInfo.phone} <form:hidden
										path="accountInfo[${varStatus.index}].phone" />
								</td>
								<td><form:select
										path="accountInfo[${varStatus.index}].role.id">

										

										<c:forEach items="${roleList}" var="role">
											
												<option value="${role.id}" ${role.id == accountInfo.role.id ? 'selected="selected"' : '' }>${role.roleName}</option>
											

										</c:forEach>
									</form:select>
								</td>

							</tr>
						</c:forEach>
					</table>
				</div>
				<div style="clear: both"></div>
				<div></div>
				<div class="account-list-nav">
					<button class="button-update-account" type="submit"
						value="Update Information">Update Information</button>
				</div>

			</form:form>
		</c:if>
	</div>


	<jsp:include page="_footer.jsp" />
</body>
</html>