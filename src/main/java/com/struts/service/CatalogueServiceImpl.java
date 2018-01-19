package com.struts.service;

import java.util.List;

import com.struts.dao.ICatalogueDAO;
import com.struts.entities.Produit;

public class CatalogueServiceImpl implements  ICatalagueService {
	
	private ICatalogueDAO dao ;
	
	

	public void setDao(ICatalogueDAO dao) {
		this.dao = dao;
	}

	public void addProduit(Produit p) {
		dao.addProduit(p);

	}

	public List<Produit> listProduits() {
		
		return dao.listProduits();
	}

	public Produit getProduit(String reference) {
		
		return dao.getProduit(reference);
	}

	public void deleteProduit(String reference) {
		dao.deleteProduit(reference);

	}

	public void update(Produit p) {
		dao.update(p);

	}

}
