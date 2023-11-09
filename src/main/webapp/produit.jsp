<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
	<title>Produits</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<p class="spacer"></p>
	<div class="container">
		<div class="col-md-12 col-xm-12 col-sm-6 col-md-offset-1)">
			<div class="border ">
				<div class="card-header text-light bg-dark">Simulateur de crédit</div>
				<div class="card-body">
					<form action="chercher.php" method="get">
						<div class="form-group">
							<label class="control-label"> Mot clé : </label> 
							<input  type="text" name="motCle" value="${model.motCle}"/>
							<button type="submit" class="btn btn-primary">Calculer</button>
						</div>
						
					</form>
					<table class="table table-striped)">
						<tr>
							<th>ID</th><th>Désignation</th><th>Prix</th><th>Quantité</th>
						</tr>
						<c:forEach items="${model.produits}" var="p">
							<tr>
								<td>${p.id }</td><td>${p.designation} </td><td>${p.prix }</td><td>${p.quantite}</td>
								<td> <a onclick="return confirm('Etes vous sure')" href="Supprime.php?id=${p.id }"> Supprimer </a> </td>
								<td> <a href="Edite.php?id=${p.id }"> Editer </a></td>
							</tr>
						</c:forEach>
						
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>