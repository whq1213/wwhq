package whq.dao;

import java.sql.Timestamp;
import java.util.List;



import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;



import whq.dao.imp.IFileInfoDAO;
import whq.model.FileInfo;

@Repository("fileInfoDao")
public class FileInfoDAO extends HibernateDaoSupport implements IFileInfoDAO{
	
	@Resource
	public void setSuperSessionFactory(SessionFactory sessionFactory) {
		this.setSessionFactory(sessionFactory);
	}

	@Override
	public FileInfo findByFileInfoID(int file_id) {
		// TODO Auto-generated method stub
		Session session = this.getSession();
		Query query = session.createQuery("from FileInfo where file_id =?");
		FileInfo fileinfo = (FileInfo)query.setParameter(0, file_id).uniqueResult();
		return fileinfo;
	}

	@Override
	public FileInfo findByFileInfoTitle(String filename) {
		// TODO Auto-generated method stub
		Session session = this.getSession();
		Query query = session.createQuery("from FileInfo where file_name = ?");
		FileInfo fileinfo = (FileInfo)query.setParameter(0, filename).uniqueResult();
		return fileinfo;
	}

	@Override
	public List<FileInfo> likeQueryByTitle(String fileTitle) {
		// TODO Auto-generated method stub
		Session session = this.getSession();
		Query query = session.createQuery("from FileInfo as file where flie.title like :subtitle");
		query.setString("subtitle", "%" + fileTitle + "%" );
		List list = query.list();
		return list;
	}

	@Override
	public void add(FileInfo f) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(f);
		
	}

	

	@Override
	public void update(int file_id, String filepath, byte check, Timestamp check_time) {
		// TODO Auto-generated method stub
		Session session = this.getSession();		
		session.beginTransaction();
		Query query = session.createQuery("update FileInfo as file set file.filepath = ? ,file.check_time = ? ,file.check_status = ? where file_id = ?");	
		query.setParameter(0, filepath);
		query.setParameter(1, check_time);
		query.setParameter(2, check);
		query.setParameter(3, file_id);
		query.executeUpdate();
		session.getTransaction().commit();
		
	}

	@Override
	public void deletByName(FileInfo f) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(f);
	}

}
