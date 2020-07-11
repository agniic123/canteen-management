package com.rajan.model;

public class registration {

	  String Id;
	  String Name; 
	  String Number;
	  String Password;
	 
		public registration() {	
		}
		
		public registration(String Id,String Password, String Name,String Number) {
			this.Id = Id;
			this.Name = Name;
			this.Number = Number;
			this.Password = Password;
		}
		
	 public String getId() {
			return Id;
		}
	
	public void setId(String Id) {
		this.Id = Id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String Name) {
		this.Name = Name;
	}
	
	public String getNumber() {
		return Number;
	}
	public void setNumber(String Number) {
		this.Number = Number;
	}
	
	public String getpassword() {
		return Password;
	}
	public void setpassword( String Password) {
		this.Password = Password;
	}
	
	
	@Override
	public String toString()
	{
		return "registration { id="+this.Id+", Name="+this.Name+",Number="+this.Number+",Password="+this.Password+" }";
	}

}
