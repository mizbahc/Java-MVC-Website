package com.clk.dao;

import com.clk.config.HibernateUtil;
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
			return null;
		}else {
			String checkPasswordSql = "select password from t_user where username=?";
			Query query = session.createNativeQuery(checkPasswordSql);
			query.setParameter(1,username);
			Object passwordInDb = query.getSingleResult();
			if (password.equals(passwordInDb)){
				return user;
			}else {
				return null;
			}

		}

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

	/*@Test
	public void test2(){
		User user = checkLogin("user3","user3");
		System.out.println(user.getId());
	}*/


}
