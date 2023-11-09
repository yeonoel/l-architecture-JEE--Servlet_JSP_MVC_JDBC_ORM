package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;

import dao.IProduitDao;
import dao.ProduitDaoImpl;
import metier.entities.Produit;

@WebServlet(name="cs", urlPatterns= {"*.php"})
public class ControleurServlet extends HttpServlet {
	private IProduitDao metier;
	@Override
	public void init() throws ServletException {
		metier = new ProduitDaoImpl();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath();
		if (path.equals("/index.php")) {
			request.getRequestDispatcher("produit.jsp").forward(request, response);

		}
		else if (path.equals("/chercher.php")) {
			String motCle = request.getParameter("motCle");
			ProduitModel model = new ProduitModel();
			model.setMotCle(motCle);
			List<Produit> produits = metier.produitsParMC("%"+motCle+"%");
			model.setProduits(produits);
			request.setAttribute("model", model);
			request.getRequestDispatcher("produit.jsp").forward(request, response);
			

		} else if (path.equals("/Saisie.php")) {
			request.setAttribute("p", new Produit());
			request.getRequestDispatcher("SaisieProduit.jsp").forward(request, response);
		} else if (path.equals("/SaveProduit.php") && request.getMethod().equals("POST")) {
			String des = request.getParameter("designation");
			Double prix = Double.parseDouble(request.getParameter("prix"));
			int quantite = Integer.parseInt(request.getParameter("quantite"));
			Produit prod = new Produit(des, prix, quantite);
			Produit p = metier.save(prod);
			request.setAttribute("produit", p);
			request.getRequestDispatcher("Confirmation.jsp").forward(request, response);
		}
		else if (path.equals("/Supprime.php")) {
			Long id = Long.parseLong(request.getParameter("id"));
			metier.deleteProduit(id);
			//request.getRequestDispatcher("produit.jsp").forward(request, response);
			response.sendRedirect("chercher.php?motCle=");
		}
		else if (path.equals("/Edite.php")) {
			Long id = Long.parseLong(request.getParameter("id"));
			Produit p = metier.getProduit(id);
			request.setAttribute("produit", p);
			request.getRequestDispatcher("EditProduit.jsp").forward(request, response);

		}
		else if (path.equals("/UpdateProduit.php") && request.getMethod().equals("POST")) {
			Long id = Long.parseLong(request.getParameter("id"));
			String des = request.getParameter("designation");
			Double prix = Double.parseDouble(request.getParameter("prix"));
			int quantite = Integer.parseInt(request.getParameter("quantite"));
			Produit prod = new Produit(des, prix, quantite);
			prod.setId(id);
			Produit p = metier.update(prod);
			request.setAttribute("produit", p);
			request.getRequestDispatcher("Confirmation.jsp").forward(request, response);
		}
		else {
			response.sendError(Response.SC_NOT_FOUND);
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
