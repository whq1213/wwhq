package whq.service;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import whq.dao.imp.IUserDao1;
import whq.exception.LoginException;
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
			System.out.println("用户名不正确");
			throw new LoginException("用户名不正确");
			}
		if(!u.getPassword().equals(password)) {
			System.out.println("密码不正确");
			throw new LoginException("密码不正确");
			}
		else{
			u.setPassword(password);
			u.setId(user_id);
		}
		return u;
	}

}
