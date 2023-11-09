package dao;

import java.util.List;

import metier.entities.Produit;

public class TestDao {

	public static void main(String[] args) {
		ProduitDaoImpl dao = new ProduitDaoImpl();
		Produit p1 = dao.save(new Produit("HP 6589", 900, 45));
		Produit p2 = dao.save(new Produit("HP imprimante 768", 1900, 15));
		System.out.println(p1.toString());
		System.out.println(p2.toString());
		
		System.out.println();
		System.out.println("Lister les produits");
		List<Produit> prod = dao.produitsParMC("%im%");
		for (Produit p: prod) {
			System.out.println(p.toString());
		}
	}

}
