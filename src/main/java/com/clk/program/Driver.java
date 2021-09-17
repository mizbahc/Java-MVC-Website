package com.clk.program;

import com.clk.config.HibernateUtil;
import com.clk.dao.TaskDao;
import com.clk.dao.UserDao;
import com.clk.model.Task;
import com.clk.model.User;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.junit.jupiter.api.Test;

import java.util.List;

public class Driver {
	//User user2 = new User("john", "doe", "john", "1234");
	public static void main(String[] args) {
		/*
		User user = new User("john", "doe", "john","1234");

		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.persist(user);

		session.flush();
		transaction.commit();

		//String sql = "select a.name,a.password from t_user a where a.name= ?";
		String sql = "select name,password,id from t_user  where name= ?"; // both works
		String sql2 = "update t_user set password=? where username=?";
		Query query = session.createNativeQuery(sql);
		query.setParameter(1,"john");
		Object[] users =	(Object[]) query.getSingleResult();
		System.out.println(users[1]);
		System.out.println(users[0].toString());
		System.out.println(users[2].getClass());
		System.out.println(users[2]);

		Query query2 = session.createNativeQuery(sql2);
		query2.setParameter(1,"asdfgh");
		query2.setParameter(2,"john");


		query2.executeUpdate();

		System.out.println(users[1].getClass());
		System.out.println(users[0].toString());

		session.close();
		HibernateUtil.getSessionFactory().close();

*/


	}

	@Test
	public void testSaveUser(){
		UserDao dao = new UserDao();
		User user3 = new User("user3","user3","user3","user3");
		dao.saveUser(user3);
	}

	@Test
	public void testCheckLogin(){
		UserDao dao = new UserDao();
		User user = dao.checkLogin("john", "1234");
		System.out.println(user);
	}

	@Test
	public void testSaveTask(){
		UserDao userDao = new UserDao();
		User user = userDao.checkLogin("john", "1234");
		TaskDao taskDao = new TaskDao();
		Task task = new Task(user, "task4");
		taskDao.saveTask(task);
	}

}
