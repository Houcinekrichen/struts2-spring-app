package com.struts.dao;

import java.util.List;

import com.struts.entities.Produit;

public interface ICatalogueDAO {
	
	public void addProduit(Produit p);
	public List<Produit> listProduits();
	public Produit getProduit (String reference);
	public void deleteProduit (String reference) ;
	public void update (Produit p);
	
	
}
