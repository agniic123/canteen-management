package com.rajan.dao;

import java.util.ArrayList;

import com.rajan.model.BillDetails;
import com.rajan.model.Category;
import com.rajan.model.Item;
import com.rajan.model.Login;
import com.rajan.model.OrderMaster;
import com.rajan.model.registration;

public class UserService {		
	DBConnect dbconnect = new DBConnect();
	
	public boolean addregistration(registration registration) {
		return dbconnect.addregistration(registration);
	}
	public boolean isRegistrationExists(String id) {
		return dbconnect.isRegistrationExists(id);
	}
	public ArrayList<registration> getAllregistration() {
		return dbconnect.getAllregistration();
	}

	public ArrayList<Category> getAllCategorys() {
		return dbconnect.getAllCategory();
	}
	public  boolean UserLogin(registration registration) {
		return  dbconnect.UserLogin(registration);		
	}
	
	public ArrayList<Item> getAllItems(int catId) {
		return dbconnect.getAllItemsByCategory(catId);
	}
	
	public ArrayList<OrderMaster> getAllOrders(int id) {
		return dbconnect.getAllOrders(id);
	}
	
	public ArrayList<BillDetails> getBill(int id) {
		return dbconnect.getBill(id);
	}
}