package whq.dao.imp;

import whq.model.Login;

public interface ILoginDao {
	public void add(Login login);	
	public Login loadByUsername(String username);
}
