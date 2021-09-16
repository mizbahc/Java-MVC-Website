package com.clk.service;

import com.clk.dao.TaskDao;
import com.clk.model.Task;

public class TaskService {
	private TaskDao taskDao;

	public TaskService() {
		this.taskDao = new TaskDao();
	}

	public boolean saveTask(Task task){
		return taskDao.saveTask(task);
	}

	public Task updateTaskStatus(String taskbody){
		return taskDao.updateTaskStatus(taskbody);
	}
}


