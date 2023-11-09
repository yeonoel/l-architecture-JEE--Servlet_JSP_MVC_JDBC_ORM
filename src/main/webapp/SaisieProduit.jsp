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
				<div class="card-header text-light bg-dark">Saisie un produit</div>
				<div class="card-body">
					<form action="SaveProduit.php" method="post">
						<div class="form-group">
							<label class="control-label"> Désignation : </label> 
							<input class="form-control" type="text" name="designation" value="${p.designation}"/>
							<span></span>
						</div>
						<div class="form-group">
							<label class="control-label"> Prix : </label> 
							<input class="form-control"  type="text" name="prix" value="${p.prix}"/>
							<span></span>
						</div>
						<div class="form-group">
							<label class="control-label"> Quantité : </label> 
							<input class="form-control"  type="text" name="quantite" value="${p.quantite}"/>
							<span></span>
						</div>
						<button type="submit" class="btn btn-primary">Calculer</button>
						
					</form>
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>