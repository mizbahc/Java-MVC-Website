package com.clk.model;

import javax.persistence.*;

@Entity
@Table(name = "t_task")
public class Task {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne(fetch = FetchType.EAGER)
	private User taskOwner;
	@Column(unique = true)
	private String taskBody;
	private String taskStatus;

	public Task() {
	}

	public Task(User owner, String taskBody) {
		this.taskOwner = owner;
		this.taskBody = taskBody;
		taskStatus = "undone";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getTaskOwner() {
		return taskOwner;
	}

	public void setTaskOwner(User taskOwner) {
		this.taskOwner = taskOwner;
	}

	public String getTaskBody() {
		return taskBody;
	}

	public void setTaskBody(String taskBody) {
		this.taskBody = taskBody;
	}

	public String getTaskStatus() {
		return taskStatus;
	}

	public void setTaskStatus(String taskStatus) {
		this.taskStatus = taskStatus;
	}
}
