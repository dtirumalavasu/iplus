package com.iplus.model;
import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class User {
	private String firstName;
	private String lastName;
	private String middleName;
	@Id
	private String userName;
	private String password;
	private String email;
	private Long  mobileNo;
	private String gender;
	private String city;
	private String state;
	private String country;
	private Long zipCode;
	
	
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Long getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(Long mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Long getZipCode() {
		return zipCode;
	}
	public void setZipCode(Long zipCode) {
		this.zipCode = zipCode;
	}
	@Override
	public String toString() {
		return "User [firstName=" + firstName + ", lastName=" + lastName
				+ ", middleName=" + middleName + ", userName=" + userName
				+ ", password=" + password + ", email=" + email + ", mobileNo="
				+ mobileNo + ", gender=" + gender + ", city=" + city
				+ ", state=" + state + ", country=" + country + ", zipCode="
				+ zipCode + "]";
	}
	
	
}
	
	
	
