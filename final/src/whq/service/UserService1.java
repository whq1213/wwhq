package whq.service;

import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import whq.dao.imp.IUserDao1;
import whq.exception.LoginException;
import whq.exception.PasswordException;
import whq.model.User1;
import whq.service.imp.IUserService1;
@Service("userService1")
public class UserService1 implements IUserService1 {
	private IUserDao1 userDao1;
	
	
	public IUserDao1 getUserDao1() {
		return userDao1;
	}

	@Resource
	public void setUserDao1(IUserDao1 userDao1) {
		this.userDao1 = userDao1;
	}


	@Override
	public User1 login(int  user_id, String password) {
		
		User1 u = userDao1.loadByUsername(user_id);
		System.out.println(u);
		if(u==null) {
			System.out.println("�û�������ȷ");
			throw new LoginException("�û�������ȷ");
			}
		if(!u.getPassword().equals(password)) {
			System.out.println("���벻��ȷ");
			throw new LoginException("���벻��ȷ");
			}
		else{
			u.setPassword(password);
			u.setUser_id(user_id);
		}
		return u;
	}

	@Override
	public void update(User1 u) {
		// TODO Auto-generated method stub
		
		User1 uu = userDao1.loadByUsername(u.getUser_id());
		 if(uu==null) {
				System.out.println("���³�������");
				throw new LoginException("���³�������");
		}else{
		userDao1.update(u);
		}
		
		
	}

	@Override
	public void add(User1 u) {
		// TODO Auto-generated method stub
		
		 userDao1.add(u);
		
		
	}

	@Override
	public void delete(int user_id) {
		// TODO Auto-generated method stub
		 User1 uu = userDao1.loadByUsername(user_id);
		 if(uu==null) {
				System.out.println("ɾ����������");
				throw new LoginException("ɾ����������");
		}else{
		userDao1.delete(user_id);	
				}
		
	}

	@Override
	public List<User1> list() {
		// TODO Auto-generated method stub		
		return userDao1.list();
	}

	@Override
	public void updatepassword(User1 u,String password,String password1,String password2) {
		// TODO Auto-generated method stub
	if(!u.getPassword().equals(password)){
		System.out.println("ԭʼ�������");
		System.out.println();
		throw new PasswordException("ԭʼ�������");
	}else if(password1.equals(password2)){
		u.setPassword(password1);
		userDao1.update(u);
	}else{
		System.out.println("�����������벻һ��");
		throw new PasswordException("�����������벻һ��");
		
	}
		
	}

}
