<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Votre Panier</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/w3.css" />"></link>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/CommerceStyle.css" />"></link>

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/w3.css" />"></link>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/CommerceStyle.css" />"></link>
</head>
<body>

	<ul>
		<li><a class="active" href="${pageContext.request.contextPath}/admin/accueilSuperAdmin">Accueil</a></li>
			<li><a class="active" href="${pageContext.request.contextPath}/admin/accueil">Accueil</a></li>
		<li><a href="${pageContext.request.contextPath}/admin/listeAdmin">Afficher un administrateur par id</a></li>
		<li><a href="${pageContext.request.contextPath}/admin/ajouterAdmin">Ajouter un administrateur</a></li>
		<li><a href="${pageContext.request.contextPath}/produit/listeProduit">Gestion des produits</a></li>
		<li><a href="${pageContext.request.contextPath}/categorie/listeCategorie">Gestion des cat�gories</a></li>
	</ul>

	<ul>
		<li><a href="${pageContext.request.contextPath}/magasin/accueilClient">Accueil</a></li>
		<li><a href="${pageContext.request.contextPath}/magasin/listeCategories">Liste des Cat�gories</a></li>
		<li><a href="${pageContext.request.contextPath}/magasin/affichFormKW">Trouver un Produit</a></li>
		<li><a class="active" href="${pageContext.request.contextPath}/magasin/afficherPanier">Acc�der au Panier</a></li>
	</ul>

	<div class="divCorps">
		<h1>Votre Panier :</h1>
		<h2>Total du panier : ${totalPanier} eur</h2>
		<table>

			<tr>
				<th>ID</th>
				<th>Produit</th>
				<th>D�scription</th>
				<th>Prix</th>
				<th>Quantit�</th>
				<th></th>
			</tr>

			<c:forEach var="prod" items="${panier}">

				<tr>
					<td>${prod.idProduit}</td>
					<td>${prod.designation}</td>
					<td>${prod.description}</td>
					<td>${prod.prix}</td>
					<td>${prod.quantite}</td>
					<td><a
						href="${pageContext.request.contextPath}/magasin/supprimerPanier/${prod.idProduit}">Supprimer
							du panier</a></td>
				</tr>

			</c:forEach>


		</table>
	</div>
</body>
</html>