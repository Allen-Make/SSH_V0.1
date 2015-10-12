package com.allen.registration.service;




import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.allen.registration.model.User;
import com.myhibernate.HibernateSessionFactory;


public class UserManager {
	public boolean exisit(User u) throws Exception
	{
		SessionFactory sf = HibernateSessionFactory.getSessionFactory();
    	Session s =sf.openSession();	
        s.beginTransaction();

		long count = (long) s.createQuery("select count(*) from User u where u.id = :id")
				.setString("id", String.valueOf(u.getId()))
				.uniqueResult();
		s.getTransaction().commit();

		if(count > 0) {
			return true;
		}
		return false;	
	}
	
	public void add(User u) throws Exception
	{
		SessionFactory sf = HibernateSessionFactory.getSessionFactory();
    	Session s =sf.openSession();
		s.beginTransaction();		
        s.save(u);
        s.getTransaction().commit();
        s.close();
        sf.close();
		
	}
	
}
