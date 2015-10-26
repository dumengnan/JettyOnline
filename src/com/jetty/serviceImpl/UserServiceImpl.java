package com.jetty.serviceImpl;

import com.jetty.beans.User;
import com.jetty.dao.UserDao;
import com.jetty.service.UserService;


public class UserServiceImpl implements UserService {  
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
@Override
public int login(String username, String password){
	return userDao.loginCheck(username, password);
}

@Override
public int register(String username, String password,String company,int gender){
	return userDao.regUser(username, password,company,gender);
}

	@Override
	public int renewpass(String username, String newpass) {
		return userDao.renewPass(username, newpass);
	}
	//@Override
  //  public  void regUser(User user)  throws HibernateException{  
		  //  User user = new User();  
	      //  BeanUtils.copyProperties(userForm, user); 
	//	System.out.println("the username is "+ user.getUsername());
		//this.sessionFactory.getCurrentSession().persist(user);
	   //    dao.saveObject(user);  
//    }  
  
}