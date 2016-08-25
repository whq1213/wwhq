package whq.service;

import javax.annotation.Resource;



import org.springframework.stereotype.Service;

import whq.dao.imp.ILoginDao;
import whq.model.Login;
import whq.service.imp.ILoginService;





@Service("loginService")
public class LoginService implements ILoginService {

	private ILoginDao loginDao;
	
	
	
	public ILoginDao getLoginDao() {
		return loginDao;
	}

	@Resource
	public void setLoginDao(ILoginDao loginDao) {
		this.loginDao = loginDao;
	}
	@Override
	public String add(Login login) {
		Login u = loginDao.loadByUsername(login.getUsername());
		if(u!=null) 
		return "false";	
		else	
		loginDao.add(login);
		return "success";
	}

	

	
	
	
	@Override
	public Login login(String username, String password) {
		Login u = loginDao.loadByUsername(username);
		if(u==null) System.out.println(1);
		if(!u.getPassword().equals(password)) 
			{System.out.println(2);}
		return u;
	}
	
}
