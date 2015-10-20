package com.jetty.daoImpl;

import java.util.Iterator;
import java.util.List;

import com.jetty.beans.User;
import com.jetty.dao.UserDao;  
  
public class UserDaoImpl extends BaseDaoImpl implements UserDao {  

	
	// 登录验证，如果失败返回null
	@Override
		public int loginCheck(String name, String password) {
			try{
				String hql = "from User u where u.username=?";
				List list =  this.getHibernateTemplate().find(hql,new String[]{name});
				if(null == list || 0 == list.size()){
					return -1;//用户未注册
				}

				hql = "from User u where u.username=? and u.password=?";
				List list2 =  this.getHibernateTemplate().find(hql, new String[] { name, password });
				System.out.println(list2);
				if(null == list2 || 0 == list2.size()){
					return -2;//密码错误
				}

				Iterator it =list2.iterator();
				User user=(User)it.next();

				return user.getId();//登录成功,返回用户id

			}catch (Exception e){
				System.out.println("login failed ");
				e.printStackTrace();
				return 0;//出现异常
			}
		}
	
	
	@Override
	public  int regUser(String username, String password,String company,int gender){
	
	// 定义HQL语句
				String hql = "from User u where u.username=? ";
				// 用find方法执行HQL语句
				List<User> list = (List<User>) this.getHibernateTemplate().find(hql, new String[] { username});
				if (list != null && list.size() > 0) 
				{
					//用户名重复
					System.out.println("用户名重复");
					return -3;
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
						System.out.println("注册成功 "+user.getId());
						}
					catch (Exception e) {
						e.printStackTrace();
						return 0;//出现异常
					}

					return user.getId();//注册成功返回用户id
				}


	}
  
}  