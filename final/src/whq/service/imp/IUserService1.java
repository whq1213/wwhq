package whq.service.imp;


import java.util.List;

import whq.model.User1;

public interface IUserService1 {
	public User1 login(int  user_id,String password);
	public void update(User1 u);
	public abstract void add(User1 u);//���
	public abstract  void delete(int user_id);//ɾ��
	public List<User1> list();
	public void updatepassword(User1 u,String password, String password1, String password2);
}
