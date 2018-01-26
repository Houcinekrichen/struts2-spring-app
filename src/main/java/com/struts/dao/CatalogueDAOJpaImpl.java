package com.struts.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.struts.entities.Produit;

@Transactional

public class CatalogueDAOJpaImpl implements ICatalogueDAO {
	
	@PersistenceContext
	private EntityManager em ;

	public void addProduit(Produit p) {
		em.persist(p);
		
	}

	public List<Produit> listProduits() {
		
		return em.createQuery("select o from Produit o").getResultList();
	}

	public Produit getProduit(String reference) {
		
		return em.find(Produit.class, reference);
	}

	public void deleteProduit(String reference) {
		Produit p = getProduit(reference);
		em.remove(p);
		
	}

	public void update(Produit p) {
		em.merge(p);
		
	}

}
