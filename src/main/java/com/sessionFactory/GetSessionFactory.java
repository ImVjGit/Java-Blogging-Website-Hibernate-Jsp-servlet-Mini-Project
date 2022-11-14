package com.sessionFactory;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public  class GetSessionFactory {
	public static SessionFactory factory;

	public static SessionFactory getFactorySession() {

		if (factory == null) {
			factory = new Configuration().configure("config.xml").buildSessionFactory();
		}

		return factory;
	}

	public void closeSessionFactory() {
		if (factory.isOpen())
			factory.close();
	}

}
