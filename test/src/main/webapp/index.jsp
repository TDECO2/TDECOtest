<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/w3.css" />"></link>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/CommerceStyle.css" />"></link>
</head>
<body>


	<h1
		style="background-color: lightgreen; color: darkgreen; text-align: center;">
		Interface Administrateur</h1>

	<h1
		style="background-color: lightblue; color: darkgreen; text-align: center; font-size: 16pt">
	  ${salutation}	
	</h1>
		<spring:url value="${pageContext.request.contextPath}/admin/accueilAdmin" var="adminUrl" />
<button class="btn btn-danger" onclick="location.href='${adminUrl}'">Accueil admins</button>
	<spring:url value="${pageContext.request.contextPath}/magasin/accueilClient" var="produitUrl" />
<button class="btn btn-danger" onclick="location.href='${produitUrl}'">Accueil clients</button>

	
</body>
</html>