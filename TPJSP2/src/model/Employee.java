package model;

import java.io.Serializable;

public class Employee implements Serializable{

	@Override
	public String toString() {
		return  firstname + " " + lastname;
	}
	String firstname, lastname, role;
	
	public Employee() {
		
	}
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
}
