package whq.dao;

import java.util.List;

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
	@Override
	public void update(User1 u) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(u);
		
	}
	@Override
	public void add(User1 u) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(u);
	}
	@Override
	public void delete(int user_id) {
		// TODO Auto-generated method stub
		User1 u = this.loadByUsername(user_id);
		this.getHibernateTemplate().delete(u);
		
	}
	@Override
	public List<User1> list() {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from User1").list();
	}
	
	


}
