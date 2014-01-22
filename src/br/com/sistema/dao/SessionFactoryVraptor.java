package br.com.sistema.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class SessionFactoryVraptor {

	private static final SessionFactory factory;
	
	static {
		factory = new AnnotationConfiguration().configure("hibernate.cfg.xml").buildSessionFactory();
	}
	
	public static Session getSession(){
		return factory.openSession();
	}
}
