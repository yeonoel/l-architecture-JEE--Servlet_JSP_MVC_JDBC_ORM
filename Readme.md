# Application

![Alt text](<architectural.drawio (1).png>)

# Cette application permet de chercher les produits dont la désignation contient un mot clé

* Saisie et ajouter un produit
* Chercher des produits
* Editer et modifier un project
* Suppeimer un produit

## Chaque produit est defini par:
* id : de type numerique auto incrémenté
* Désignation 
* Prix de type double
* Quantité de type entier

## Les donnée sont stockées dans une base de données MySQL

### La couche DAP formée princpalement de:
* une Interface IproduitDao
* Une classe SingletonConection
* Une implement tation JDBC de cette interface dans laquelle on fait le mapping relationnelle
* Une classe TestDao

### La couche Web
* Un seul controleur (Servlet) : class ControlleurServlet
* Un Model : ProduitModel
* Des vues JSP (Produit, Confirmation, EditProduit, header, SaisieProduit)

## utilisation du fremework Sprint IOC pour l'injection de dépendance

## Utilisation de css Bootstrap

