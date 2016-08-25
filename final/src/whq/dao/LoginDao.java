package whq.dao;


import javax.annotation.Resource;



import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import whq.dao.imp.ILoginDao;
import whq.model.Login;

@Repository("loginDao")
public class LoginDao extends HibernateDaoSupport implements ILoginDao {
	
	@Resource
	public void setSuperSessionFactory(SessionFactory sessionFactory) {
		this.setSessionFactory(sessionFactory);
	}
	
	@Override
	public void add(Login login) {
		this.getHibernateTemplate().save(login);
	}

	@Override
	public Login loadByUsername(String username) {
		return (Login)this.getSession().createQuery("from Login where username=?")
					.setParameter(0, username).uniqueResult();
	}


	

}
