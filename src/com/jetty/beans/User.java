package com.jetty.beans;

public class User {  

  private String username;  
  private String password;  
  private String company;
  private int gender;  
  private int id;
  
  public String getCompany() {
	return company;
}

public void setCompany(String company) {
	this.company = company;
}

  public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getUsername() {  
      return username;  
  }  

  public void setUsername(String username) {  
      this.username = username;  
  }  

  public String getPassword() {  
      return password;  
  }  

  public void setPassword(String password) {  
      this.password = password;  
  }  

  public int getGender() {  
      return gender;  
  }  

  public void setGender(int gender) {  
      this.gender = gender;  
  }  

}  