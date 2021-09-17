package com.clk.dao;

import com.clk.config.HibernateUtil;
import com.clk.model.Task;
import com.clk.model.User;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.junit.jupiter.api.Test;

import java.util.List;

public class UserDao {
	private static Session session;

	public boolean saveUser(User user){
		session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();

		try {
			System.out.println("Saving new user");
			session.persist(user);
			session.flush();

			transaction.commit();
			session.close();
			return true;
		}catch (Exception e){
			return false;
		}

	}



	public User checkLogin(String username, String password){
		session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();

		User user = getSingleUser(username);

		if(user == null){
			System.out.println("No user found");
			return null;
		}else {
			System.out.println("User found:" + user);
			String checkPasswordSql = "select password from t_user where username=?";
			Query query = session.createNativeQuery(checkPasswordSql);
			query.setParameter(1,username);
			Object passwordInDb = query.getSingleResult();
			System.out.println(passwordInDb);
			if (password.equals(passwordInDb.toString())){
				System.out.println("Correct password");
				return user;
			}else {
				return null;
			}

		}

	}

	public List<Task> getTasksOfUser(User user){
		session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();


		user = getSingleUser(user.getUserName());

		List list = user.getTasks();
		transaction.commit();
		session.close();
		return  list;
	}

	private static User getSingleUser(String username){

		String getIdSQL = "select id from t_user where username=?";

		Query query = session.createNativeQuery(getIdSQL);
		query.setParameter(1,username);
		Object id = query.getSingleResult();

		Integer userId = Integer.parseInt(String.valueOf(id));
		User user = session.get(User.class, userId.intValue());

		return user;

	}



}
