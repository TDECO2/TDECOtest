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

	<ul>
		<li><a class="active" href="${pageContext.request.contextPath}/admin/accueilAdmin">Accueil admin</a></li>
		<li><a class="active" href="${pageContext.request.contextPath}/admin/accueilGeneral">Accueil général</a></li>
		<li><a href="${pageContext.request.contextPath}/admin/listeAdmin">Gestion des administrateurs</a></li>
		<li><a href="${pageContext.request.contextPath}/produit/listeProduit">Gestion des produits</a></li>
		<li><a href="${pageContext.request.contextPath}/categorie/listeCategorie">Gestion des catégories</a></li>
	</ul>

	<h1
		style="background-color: lightgreen; color: darkgreen; text-align: center;">
		${nomApp}</h1>

	<h1
		style="background-color: lightblue; color: darkgreen; text-align: center; font-size: 16pt">
	  ${salutation}	
	</h1>
	

</body>
</html>