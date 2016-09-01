package com.niit.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

@Entity
@Table(name="FORUM")
@Component
public class Forum {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(unique=true)
	private int forum_id;
	@NotNull
	@NotEmpty(message="forum name should not be empty")
	private String form_title;
	@NotNull
	@NotEmpty(message="forum description should not be empty")
	private String forum_description;
	@NotNull
	private Date forum_creationDate;
	@NotNull
	private String Category;
	@NotNull
	private String forum_username;
	public int getForum_id() {
		return forum_id;
	}
	public void setForum_id(int forum_id) {
		this.forum_id = forum_id;
	}
	public String getForm_title() {
		return form_title;
	}
	public void setForm_title(String form_title) {
		this.form_title = form_title;
	}
	public String getForum_description() {
		return forum_description;
	}
	public void setForum_description(String forum_description) {
		this.forum_description = forum_description;
	}
	public Date getForum_creationDate() {
		return forum_creationDate;
	}
	public void setForum_creationDate(Date forum_creationDate) {
		this.forum_creationDate = forum_creationDate;
	}
	public String getCategory() {
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
	}
	public String getForum_username() {
		return forum_username;
	}
	public void setForum_username(String forum_username) {
		this.forum_username = forum_username;
	}
	
	

}
