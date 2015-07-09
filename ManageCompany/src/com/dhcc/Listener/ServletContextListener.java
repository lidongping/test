package com.dhcc.Listener;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.annotation.WebListener;

import com.dhcc.dao.Operation;
import com.dhcc.pojo.Application;

/**
 * Application Lifecycle Listener implementation class ServletContextListener
 *
 */
@WebListener
public class ServletContextListener implements javax.servlet.ServletContextListener {

	private Operation op=new Operation();
    private boolean isRun=true;
    

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0) {
     
    	final ServletContext application=arg0.getServletContext();
    	Thread t=new Thread(new Runnable() {
			
			@Override
			public void run() {
				
				while(isRun){
					
					ArrayList<Application> list=(ArrayList<Application>) op.getAll();
					application.setAttribute("all", list);
					try {
						Thread.sleep(1000*60);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
	
			}
		});
    	
    	t.start();
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0) {
        	isRun=false;
    }
	
}
