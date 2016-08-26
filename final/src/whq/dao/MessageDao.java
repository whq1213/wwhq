package whq.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import whq.dao.imp.IMessageDao;
import whq.model.Message;


@Repository("messageDao")
public class MessageDao extends HibernateDaoSupport implements IMessageDao {
	
	@Resource
	public void setSuperSessionFactory(SessionFactory sessionFactory) {
		this.setSessionFactory(sessionFactory);
	}	
	
	@Override
	public Message loadByMainId(int mes_mainid) {
		return (Message)this.getSession().createQuery("from Message where mes_mainid = ?")
				.setParameter(0, mes_mainid).uniqueResult();
	}
	
	
	@Override
	public List<Message> loadByMesUsername(int mes_user_id) {
		// TODO Auto-generated method stub
		
		
		return this.getSession().createQuery("from Message where mes_user_id = ?").setParameter(0, mes_user_id).list();
	}

	@Override
	public void add(Message mes) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(mes);
	}

	@Override
	public void deleteByMainId(Message mes) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(mes);
	}

	



}
