package whq.dao.imp;

import java.util.List;

import whq.model.User1;


public interface IUserDao1 {
	public User1 loadByUsername(int  user_id);
	public void update(User1 u);
	public abstract void add(User1 u);//���
	public abstract  void delete(int user_id);//ɾ��
	public List<User1> list();
	
	


}
