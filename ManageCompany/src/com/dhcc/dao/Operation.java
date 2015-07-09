package com.dhcc.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.dhcc.pojo.Application;
import com.dhcc.utils.GetSession;



public class Operation {
	
	
	
	public void save(Application app) throws Exception{
		Session session=GetSession.getSession();
		session.beginTransaction();
		session.save(app);
		session.getTransaction().commit();
		session.close();
	}
	
	public void delete(int id) throws Exception{
		Session session=GetSession.getSession();
		Application app=(Application)session.load(Application.class, id);
		session.beginTransaction();
		session.delete(app);
		session.getTransaction().commit();
		session.close();
		
	}
	
	public void update(int id,String name,String webName,int status,String adName,Date applyDate,String detail) throws Exception{
		Session session=GetSession.getSession();
		session.beginTransaction();
		Application app=(Application)session.load(Application.class, id);
		app.setId(id);
		app.setName(name);
		app.setWebName(webName);
		app.setStatus(status);
		app.setAdName(adName);
		app.setApplyDate(applyDate);
		app.setDetail(detail);
		session.update(app);
		session.getTransaction().commit();
		session.close();
		
	}
	
	public Application load(int id) throws Exception{
		Session session=GetSession.getSession();
		Application app=(Application)session.load(Application.class, id);
		return app;
		
	}
	
	public List getAll(){
		Session session=GetSession.getSession();
		session.beginTransaction();
		Query query=session.createQuery("from Application");
		List list=query.list();
		session.getTransaction().commit();
		session.close();
		return list;
	}
	
	public List queryPage() throws Exception{
		Session session=GetSession.getSession();
		session.beginTransaction();
		Query query=session.createQuery("from Appliction");
		query.setFirstResult(0);
		query.setMaxResults(3);
		List list=query.list();
		session.getTransaction().commit();
		session.close();
		return list;
		
	}
}
