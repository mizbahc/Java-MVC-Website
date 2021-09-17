package com.clk.service;

import com.clk.dao.UserDao;
import com.clk.model.Task;
import com.clk.model.User;

import java.util.List;

public class UserService {
	private UserDao userDao;

	public UserService() {
		this.userDao = new UserDao();
	}

	public boolean saveUser(User user){
		return userDao.saveUser(user);
	}

	public User checkLogin(String username, String password){
		return userDao.checkLogin(username,password);
	}

	public  List<Task> getTasksOfUser(User user){
		return userDao.getTasksOfUser(user);
	}

}
