package com.niit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="user_details")
@Component
public class User {
	@Id
/*	@GeneratedValue(strategy = GenerationType.IDENTITY)*/
	@Column(unique=true)
	private int id;
/*	@NotNull
	@NotEmpty(message="username should not be empty")*/
	private String username;
	/*@NotNull
	@NotEmpty(message="email should not be empty")
	@Email*/
	private String email;
/*	@Size(min=8, max=20)
	@NotEmpty(message="Password should not be empty")*/
	private String password;
/*	@NotNull
	@NotEmpty(message="Location should not be empty")*/
	private String location;
	/*@NotNull*/
	private String role;
	/*@NotEmpty(message="plz give ur name")*/
	private String name;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	private boolean active;
	
	@Transient
	private MultipartFile image;

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}
	
	
	

}
