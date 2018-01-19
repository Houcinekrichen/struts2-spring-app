package com.struts.web;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.struts.entities.Produit;
import com.struts.service.ICatalagueService;
import com.struts.service.SingletonService;

public class ProduitAction extends ActionSupport {

	public Produit produit = new Produit();
	public List<Produit> produits;
	public String ref;
	public boolean editmode = false;

	ICatalagueService service = SingletonService.getService();

	public String index() {
		produits = service.listProduits();
		return "SUCCESS";
	}

	public String save() {
		if (editmode == false) {
			service.addProduit(produit);

		}else {
			service.update(produit);
			editmode=true;
			produit = new Produit();
		}

		produits = service.listProduits();
		return "SUCCESS";
	}

	public String delete() {

		service.deleteProduit(ref);
		produits = service.listProduits();
		return "SUCCESS";
	}

	public String edit() {
		editmode = true;
		produit = service.getProduit(ref);
		produits = service.listProduits();
		return "SUCCESS";
	}
}
