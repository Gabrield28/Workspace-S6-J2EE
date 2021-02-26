package model;

import java.io.Serializable;

public class User implements Serializable{

	private String username, password;
	private Employee emp;
	public User() 
	{
		emp = new Employee();
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
	
	public Employee getEmp() {
		return emp;
	}
	public void setEmp(Employee e) {
		this.emp = e;
	}
}
