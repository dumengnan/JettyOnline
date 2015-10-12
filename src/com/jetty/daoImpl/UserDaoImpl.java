package com.jetty.daoImpl;

import java.util.List;

import com.jetty.beans.User;
import com.jetty.dao.UserDao;  
  
public class UserDaoImpl extends BaseDaoImpl implements UserDao {  

	
	// 登录验证，如果失败返回null
	@Override
		public User loginCheck(String name, String password) {
			// 定义HQL语句
			String hql = "from User u where u.username=? and u.password=?";
			// 用find方法执行HQL语句
			List<User> list = (List<User>) this.getHibernateTemplate().find(hql, new String[] { name, password });
			if (list != null && list.size() > 0) {// 登录成功
				System.out.println("login successs");
				logger.info("login check succ, user.name=" + list.get(0).getUsername());
				return list.get(0);
			} else {// 登录失败
				return null;
			}
		}
	
	
	@Override
	public  User regUser(String username, String password,String company,int gender){
	
	// 定义HQL语句
				String hql = "from User u where u.username=? ";
				// 用find方法执行HQL语句
				List<User> list = (List<User>) this.getHibernateTemplate().find(hql, new String[] { username});
				if (list != null && list.size() > 0) 
				{
					//用户名重复
					System.out.println("用户名重复");
				} 
				else 
				{// 注册
					User user=new User();
					user.setGender(gender);
					user.setUsername(username);
					user.setPassword(password);
					user.setCompany(company);
					
					try{
						this.getHibernateTemplate().save(user);
						System.out.println("注册成功");
						}
					catch (Exception e)
					{e.printStackTrace();}
					}

				return null;
	}
  
}  