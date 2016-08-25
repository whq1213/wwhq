package whq.model;

import javax.persistence.Entity;


import javax.persistence.GeneratedValue;
import javax.persistence.Id;


import javax.persistence.Table;

@Entity
@Table(name="t_login")
public class Login {
	
		private String username;
		private String password;
		private int id;
		@GeneratedValue
		@Id
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		
		
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		
		
	
		
		
		
}
