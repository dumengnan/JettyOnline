package com.jetty.daoImpl;

import java.io.InputStream;
import java.io.Serializable;
import java.util.List;

import org.apache.log4j.Logger;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.jetty.dao.BaseDao;

//BaseDao的实现类，它继承自Spring提供的HibernateDaoSupport
public class BaseDaoImpl extends HibernateDaoSupport implements BaseDao {

	// 定义一个Logger，便于它及其子类计入日志用
	protected Logger logger = Logger.getLogger(this.getClass());

	// 删除实体
	public <T> void deleteEntity(T entity) {
		this.getHibernateTemplate().delete(entity);
	}

	// 根据实体类型和ID删除实体
	public <T> void deleteEntityById(Class<T> entityClass, Serializable id) {
		this.getHibernateTemplate().delete(entityClass.getName(), id);
	}

	// 查询某个实体的全部实例
	public <T> List<T> getAllEntity(Class<T> entityClass) {
		return (List<T>) this.getHibernateTemplate().find("from " + entityClass.getName());
	}

	// 通过主键获取实体
	public <T> T getEntityById(Class<T> entityClass, Serializable id) {
		return (T) this.getHibernateTemplate().get(entityClass, id);
	}

	// 保存实体
	public <T> void saveEntity(T entity) {
		this.getHibernateTemplate().saveOrUpdate(entity);
	}

	// 修改实体
	public <T> void updateEntity(T entity) {
		this.getHibernateTemplate().clear();
		this.getHibernateTemplate().saveOrUpdate(entity);
	}

	public String AcquireServerInfo(){//获取配置文件serverconfig.xml中的服务器ｉｐ地址和端口号
		String serverip = null;
		String serverport = null;

		SAXReader reader = new SAXReader();
		InputStream in = Thread.currentThread().getContextClassLoader().getResourceAsStream("/config/serverconfig.xml");

		try{
			Document doc = reader.read(in);

			Element serveripElt = (Element) doc.selectObject("/config/server-info/server-ip");
			Element serverportElt = (Element) doc.selectObject("/config/server-info/server-port");

			serverip = serveripElt.getStringValue();
			serverport = serverportElt.getStringValue();

		}catch (Exception e){
			e.printStackTrace();
		}
		return serverip+":"+serverport;
	}
}
