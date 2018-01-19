package com.struts.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.struts.entities.Produit;

public class CatalogueDAOImpl implements ICatalogueDAO {

	private Map<String, Produit> produits = new HashMap<String, Produit>();
	
	Logger logger = Logger.getLogger(getClass());
	
	
	public void addProduit(Produit p) {
		produits.put(p.getReference(), p);
	}

	public List<Produit> listProduits() {
		
		return new ArrayList<Produit>(produits.values());
	}

	public Produit getProduit(String reference) {
		
		return produits.get(reference);
	}

	public void deleteProduit(String reference) {
		produits.remove(reference);

	}

	public void update(Produit p) {
		produits.put(p.getReference(),p);

	}
	public void initialisation () {
		addProduit(new Produit("001", "PC", 1200, 1, true));
		addProduit(new Produit("002", "Portable", 1200, 1, false));
		addProduit(new Produit("003", "tablette", 1200, 1, true));
		logger.info("initialisation du catalague");
	}

}
