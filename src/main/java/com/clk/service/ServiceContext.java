package com.clk.service;



public class ServiceContext {
	private static UserService userService;
	private static TaskService taskService;


	public static UserService getUserService() {
		synchronized (ServiceContext.class){
			if (userService == null){
				userService = new UserService();
			}
		}
		return userService;
	}

	public static TaskService getTaskService() {
		synchronized (ServiceContext.class){
			if (taskService == null){
				taskService = new TaskService();
			}
		}
		return taskService;
	}
}
