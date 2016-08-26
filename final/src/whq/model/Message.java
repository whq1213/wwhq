package whq.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="mes_table")
public class Message {
	
	private  int mes_mainid;
	
	private int mes_user_id;
	private String mes_state;//ÉóºË×´Ì¬
	private String mes_content;//ÏûÏ¢ÄÚÈİ
	private int mes_user_shnhe;
	public int getMes_user_id() {
		return mes_user_id;
	}
	
	@Id
	public int getMes_mainid() {
		return mes_mainid;
	}
	public void setMes_mainid(int mes_mainid) {
		this.mes_mainid = mes_mainid;
	}
	public void setMes_user_id(int mes_user_id) {
		this.mes_user_id = mes_user_id;
	}
	public String getMes_state() {
		return mes_state;
	}
	public void setMes_state(String mes_state) {
		this.mes_state = mes_state;
	}
	public String getMes_content() {
		return mes_content;
	}
	public void setMes_content(String mes_content) {
		this.mes_content = mes_content;
	}
	public int getMes_user_shnhe() {
		return mes_user_shnhe;
	}
	public void setMes_user_shnhe(int mes_user_shnhe) {
		this.mes_user_shnhe = mes_user_shnhe;
	}
	

}
