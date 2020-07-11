package com.rajan.controller;

import javax.servlet.http.*;

import com.rajan.constants.GlobalConstants;
import com.rajan.dao.CookServices;
import com.rajan.dao.UserService;
import com.rajan.model.Login;
import com.rajan.model.registration;

public class BaseController extends HttpServlet {
	private static final long serialVersionUID = 4481510681863866579L;
	public CookServices cService = new CookServices();	

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			String action = request.getParameter("action");
			doPostAction(action, request, response);
		} catch (Exception e) {
			System.out.println("Error in Input Output " + e);
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			String action = request.getParameter("action");
			doPostAction(action, request, response);
		} catch (Exception e) {
			System.out.println("Error in Input Output " + e);
		}
	}
	
	public void doPostAction(String action, HttpServletRequest request, HttpServletResponse response) {		
		
		try {
			action = action.toLowerCase();
			String contextPath = request.getContextPath() + "/";
			
			if (action.equals("adminregistration")) {
				Login alogin = new Login(request.getParameter("uName"),request.getParameter("apass"));
				System.out.println(alogin);
				if(!cService.isadminloginExist(alogin.getUserNAme())) {
					if (cService.adminlogin(alogin)) {
						HttpSession session = request.getSession();
						System.out.println(alogin);
						session.setAttribute(GlobalConstants.USER, alogin);
						GlobalConstants.MESSAGE = GlobalConstants.ERROR_REG_ALREADY_add;
					} else 
						GlobalConstants.MESSAGE = GlobalConstants.ERROR_REG_ALREADY;
					
	        	}else {
	        		
	        		GlobalConstants.MESSAGE = String.format(GlobalConstants.ERROR_CAT_ALREADY,alogin.getUserNAme());
	        	}	
				GlobalConstants.JSP_PAGE = contextPath + "adminregistration.jsp";
	        	response.sendRedirect(GlobalConstants.JSP_PAGE);
			}
			else if (action.equals("login")) {
				Login login = new Login();
				login.setUserNAme(request.getParameter("userName"));
				System.out.println("Username: "+request.getParameter("userName"));
				login.setPassword(request.getParameter("pass"));
				System.out.println("Password: "+request.getParameter("pass"));

				if (cService.checkLogin(login)) {					
					
					HttpSession session = request.getSession();
					System.out.println(login);
					session.setAttribute(GlobalConstants.USER, login);
					GlobalConstants.JSP_PAGE = "cookSer.jsp";
				} else {
					GlobalConstants.MESSAGE = GlobalConstants.ERROR_INVALID_CREDS;
					GlobalConstants.JSP_PAGE = "LoginPage.jsp";
				}
				response.sendRedirect(GlobalConstants.JSP_PAGE);
			}
		} catch (Exception e) {
			System.out.println("Error in doPostAction() " + e);
			e.printStackTrace();
		}
	}

	public void doGetAction(String action, HttpServletRequest request, HttpServletResponse response) {
		try {
			System.out.println("Action in doGet " + action);
		} catch (Exception e) {
			System.out.println("Error in doGetAction - " + e);
		}

	}
	}
