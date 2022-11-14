package com.entity.blog;

import java.util.Random;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Blog")
public class Blog {

	@Id
	//@Column(name = "Id")
	private int id;
	private String Title;
	@Column(length = 15000000)
	private String Post;

	public Blog() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Blog( String title, String post) {
		super();
		this.id = new Random().nextInt(10000);//automatically generate id 
		this.Title = title;
		this.Post = post;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getPost() {
		return Post;
	}

	public void setPost(String post) {
		Post = post;
	}

}
