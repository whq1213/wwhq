package whq.service.imp;

import java.util.List;

import whq.model.Message;

public interface IMessageService {
	public abstract List<Message> loadByMesUsername(int  mes_user_id);
	public abstract void add(Message mes);//����
	public abstract  void deleteByMainId(int mes_mainid);//ɾ��
	public abstract Message loadByMainId(int mes_mainid);
}
