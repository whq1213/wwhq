package whq.service.imp;


import java.util.List;

import whq.model.User1;

public interface IUserService1 {
	public User1 login(int  user_id,String password);
	public void update(User1 u);
	public abstract void add(User1 u);//Ìí¼Ó
	public abstract  void delete(int user_id);//É¾³ý
	public List<User1> list();
}
