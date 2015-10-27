package com.example.myproject;
import java.io.IOException;
import java.io.IOException;
import java.util.List;

import javax.jdo.Extent;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.Entity;


import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class RajeshideaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,RuntimeException{
		//storing data into jdo by getting data from form
		PersistenceManager pm=PMF.get().getPersistenceManager();
		String name=req.getParameter("username");
		String email=req.getParameter("emailId");
		
		Example ex=new Example();
		ex.setName(name);
		ex.setEmail(email);		
		
		pm.makePersistent(ex);
		Extent<Example> test=pm.getExtent(Example.class,false);
		for(Example e:test){
			System.out.println(e.getName());
		}
		res.sendRedirect("welcome.jsp");
		pm.close();
	}


}
