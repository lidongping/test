package com.dhcc.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class GetSession {
	public static Session getSession(){
		Configuration con=new Configuration();
		con.configure("hibernate.cfg.xml");
		SessionFactory fac=con.buildSessionFactory();
		Session session=fac.openSession();
		return session;
	}
}
