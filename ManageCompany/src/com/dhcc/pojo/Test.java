package com.dhcc.pojo;

import java.sql.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.hql.ast.util.SessionFactoryHelper;

public class Test {

	public static void main(String[] args) {
		Date dat=java.sql.Date.valueOf("2015-12-11");
		Configuration con=new Configuration();
		con.configure("hibernate.cfg.xml");
		SessionFactory fac=con.buildSessionFactory();
		Session session=fac.openSession();
		Application app=new Application(0007, "buidshaiuh", "sdas", 1, "fga",dat , "sda");
		session.beginTransaction();
		session.save(app);
		session.getTransaction().commit();
		session.close();
	}

}
