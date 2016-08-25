package whq.service.imp;

import java.util.List;

import whq.model.Login;

public interface ILoginService {
	public String add(Login user);
	public Login login(String username,String password);
	
}
