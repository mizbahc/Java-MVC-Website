package com.clk.config;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	private static SessionFactory sessionFactory = null;

	static{
		if(sessionFactory == null){
			Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
			sessionFactory = configuration.buildSessionFactory();
		}

	}

	public static SessionFactory getSessionFactory(){
		return sessionFactory;
	}

}
