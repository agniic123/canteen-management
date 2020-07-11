package com.rajan.controller;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rajan.dao.DBConnect;
import com.rajan.dao.UserService;
import com.rajan.model.registration;

public class TableController extends reglogin {
	UserService usersc=new UserService();

	private static final long serialVersionUID = -2019821864628575150L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)	{
		try {
			String action = request.getParameter("action");
			doPostAction(action, request, response);
		} catch (Exception e) {
			System.out.println("Error in Input Output " + e);
		}
	
	
		
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			String action = request.getParameter("action");
			doPostAction(action, request, response);
		} catch (Exception e) {
			System.out.println("Error in Input Output " + e);
		
		}
	}
	public void doPostAction(String action, HttpServletRequest request, HttpServletResponse response) {		
		String contextPath = request.getContextPath() + "/";
		
		
}
}