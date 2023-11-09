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
				<div class="card-header text-light bg-dark">Confirmation </div>
				<div class="card-body">
					
						<div class="form-group">
							<label class="control-label"> ID : </label> 
							<label class="control-label"> ${produit.id}</label>
							
						</div>
						<div class="form-group">
							<label class="control-label"> Désignation : </label> 
							<label class="control-label"> ${produit.designation}</label>
							
						</div>
						<div class="form-group">
							<label class="control-label"> Prix : </label> 
							<label class="control-label"> ${produit.prix}</label>
							
						</div>
						<div class="form-group">
							<label class="control-label"> Quantité : </label> 
							<label class="control-label"> ${produit.quantite}</label>
							
						</div>
						
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>