package com.niit.shopingcart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
import java.io.Serializable;
@Entity
@Table(name = "USER_DETAILS")
@Component
public class UserDetails implements Serializable  {
	
 
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Column (name="admin", columnDefinition="tinyint default 0 ")
	private byte admin;

	public byte getAdmin() {
		return admin;
	}

	public void setAdmin(byte admin) {
		this.admin = admin;
	}

	private String password;
	@Column(name = "con_password")
	private String con_password;

	public String getCon_password() {
		return con_password;
	}

	public void setCon_password(String con_password) {
		this.con_password = con_password;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Id
	@Column(name = "id")
	private String id;

	private String name;

	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Column(name = "email")
	private String email;

	private String address;

	@Column(name = "mobile")
	private String mobile;
	@Column(name = "gender")
	private String gender;
}
