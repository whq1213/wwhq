package whq.dao;

import javax.annotation.Resource;


import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import whq.dao.imp.IUserDao1;
import whq.model.User1;


@Repository("userDao1")
public class UserDao1 extends HibernateDaoSupport implements IUserDao1 {

	@Resource
	public void setSuperSessionFactory(SessionFactory sessionFactory) {
		this.setSessionFactory(sessionFactory);
	}	
	@Override
	public User1 loadByUsername(int user_id) {
		return (User1)this.getSession().createQuery("from User1 where user_id=?")
				.setParameter(0, user_id).uniqueResult();
	}
	


}
