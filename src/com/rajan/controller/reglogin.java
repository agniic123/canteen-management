package com.rajan.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rajan.constants.GlobalConstants;
import com.rajan.dao.DBConnect;
import com.rajan.dao.UserService;
import com.rajan.model.registration;

/**
 * Servlet implementation class reglogin
 */
@WebServlet("/reglogin")
public class reglogin extends CookController {
	private static final long serialVersionUID = 1L;
	
	private UserService uServices = new UserService();	

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			String action = request.getParameter("action1");
			System.out.println(action);
			doPostAction1(action, request, response);
		} catch (Exception e) {
			System.out.println("Error in Input Output " + e);
		}
	}

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			String action1 = request.getParameter("action1");
			doPostAction1(action1, request, response);
		} catch (Exception e) {
			System.out.println("Error in Input Output " + e);
		}
	}
	
	public void doPostAction1(String action1, HttpServletRequest request, HttpServletResponse response) {	
		System.out.println("doPostAction1 is"+action1);
		try {
			registration login = new registration();
			String contextPath = request.getContextPath() + "/";
			action1 = action1.toLowerCase();
			if (action1.equals("registration")) {
				login = new registration(request.getParameter("id"),
						                        request.getParameter("pass"),request.getParameter("Name"),
						request.getParameter("num"));
				login.setId(request.getParameter("id"));
				login.setpassword(request.getParameter("pass"));
				login.setName(request.getParameter("Name"));
				login.setNumber(request.getParameter("num"));
				System.out.println(login);
				if(!uServices.isRegistrationExists(login.getId())) {
					if (uServices.addregistration(login)) {
						HttpSession session = request.getSession();
						System.out.println(login);
						session.setAttribute(GlobalConstants.USER, login);
						GlobalConstants.MESSAGE = GlobalConstants.ERROR_REG_ALREADY_add;
					} else 
						GlobalConstants.MESSAGE = GlobalConstants.ERROR_REG_ALREADY;
					
	        	}else {
	        		
	        		GlobalConstants.MESSAGE = String.format(GlobalConstants.ERROR_CAT_ALREADY,login.getId());
	        	}	
				GlobalConstants.JSP_PAGE = contextPath + "registration.jsp";
	        	response.sendRedirect(GlobalConstants.JSP_PAGE);
			}
			else if(action1.equals("userlogin")){
				System.out.println("elseif");
				login.setId(request.getParameter("id"));
				login.setpassword(request.getParameter("pass"));
				
				if (uServices.UserLogin(login)) {	
					login.getName();
					System.out.println("if");
					HttpSession session = request.getSession();
					session.setAttribute(GlobalConstants.USER, login);
					GlobalConstants.JSP_PAGE = "UserHome.jsp";
				} else {
					GlobalConstants.MESSAGE = GlobalConstants.ERROR_INVALID_CREDS;
					GlobalConstants.JSP_PAGE = "studentlogin.jsp";
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