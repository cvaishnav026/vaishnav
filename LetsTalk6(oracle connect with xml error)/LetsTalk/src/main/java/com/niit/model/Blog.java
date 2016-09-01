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
@Table(name="BLOG")
@Component
public class Blog {
	
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@NotNull
@NotEmpty(message="id cannot be empty")
@Column(unique=true)
private int blod_id;
@NotNull
@NotEmpty(message="title cannot be empty")
private String blog_title;
@NotNull
@NotEmpty(message="decription cannot be empty")
private String blog_description;
private Date blog_creationTime;
@NotNull
private String blog_username;
public int getBlod_id() {
	return blod_id;
}
public void setBlod_id(int blod_id) {
	this.blod_id = blod_id;
}
public String getBlog_title() {
	return blog_title;
}
public void setBlog_title(String blog_title) {
	this.blog_title = blog_title;
}
public String getBlog_description() {
	return blog_description;
}
public void setBlog_description(String blog_description) {
	this.blog_description = blog_description;
}
public Date getBlog_creationTime() {
	return blog_creationTime;
}
public void setBlog_creationTime(Date blog_creationTime) {
	this.blog_creationTime = blog_creationTime;
}
public String getBlog_username() {
	return blog_username;
}
public void setBlog_username(String blog_username) {
	this.blog_username = blog_username;
}


}
