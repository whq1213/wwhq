package whq.dao.imp;

import java.util.List;

import whq.model.Message;



public interface IMessageDao {
	public abstract List<Message> loadByMesUsername(int  mes_user_id);
	public abstract void add(Message mes);//Ìí¼Ó
	public abstract  void deleteByMainId(int mes_mainid);//É¾³ý
	public abstract Message loadByMainId(int mes_mainid);

}
