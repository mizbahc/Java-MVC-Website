package com.clk.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "t_user")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String lastName;

	@Column(unique = true)
	private String userName;

	@Column
	private String password;

	@OneToMany(mappedBy = "taskOwner", fetch = FetchType.EAGER)
	private List<Task> tasks;

	public User() {
	}

	public User(String name, String lastName, String userName,String password) {
		this.name = name;
		this.lastName = lastName;
		this.userName = userName;
		this.password = password;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
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

	public List<Task> getTasks() {
		return tasks;
	}

	public void setTasks(List<Task> tasks) {
		this.tasks = tasks;
	}
}
