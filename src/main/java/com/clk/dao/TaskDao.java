package com.clk.dao;

import com.clk.config.HibernateUtil;
import com.clk.model.Task;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.junit.jupiter.api.Test;

public class TaskDao {

	public boolean saveTask(Task task){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.save(task);
		session.flush();
		transaction.commit();
		session.close();
		return true;
	}


	public Task updateTaskStatus(String taskbody){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		String getTaskId = "select * from t_task where taskbody=?";
		Query query = session.createNativeQuery(getTaskId,Task.class);
		query.setParameter(1, taskbody);
		Task task =(Task) query.getSingleResult();

		if(task.getTaskStatus().equals("done")){
			task.setTaskStatus("undone");
		}else{
			task.setTaskStatus("done");
		}

		transaction.commit();
		session.close();
		return task;
	}

	@Test
	public void test(){
		Task task = updateTaskStatus("first task");
		System.out.println(task.getId());
		System.out.println(task.getTaskStatus());
	}
}
