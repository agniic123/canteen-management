package com.rajan.model;

public class Login {
	
	public String UserNAme;
	
	private String password;
	
	public Login() {	
	}
	
	public Login(String UserNAme, String password) {
		
		this.UserNAme = UserNAme;
		
		this.password = password;
	}
	public String getUserNAme() {
		return UserNAme;
		
	}
	public void setUserNAme(String UserNAme) {
		this.UserNAme = UserNAme;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString()
	{
		return "Login { UserName="+this.UserNAme+",  password="+this.password+" }";
	}

}
