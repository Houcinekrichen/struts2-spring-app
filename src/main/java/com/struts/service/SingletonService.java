package com.struts.service;

//import com.struts.dao.CatalogueDAOImpl;

public class SingletonService {

	private static CatalogueServiceImpl service;

	static {
		//CatalogueDAOImpl dao = new CatalogueDAOImpl();
		//dao.initialisation();
		//service = new CatalogueServiceImpl();
		//service.setDao(dao);
	}

	public static ICatalagueService getService() {
		return service;
	}

}
