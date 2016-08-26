package whq.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import whq.dao.imp.IMessageDao;
import whq.model.Message;
import whq.service.imp.IMessageService;
@Service("messageService")
public class MessageService  implements IMessageService{
	private IMessageDao messageDao;
	
	public IMessageDao getMessageDao() {
		return messageDao;
	}
	@Resource
	public void setMessageDao(IMessageDao messageDao) {
		this.messageDao = messageDao;
	}

	@Override
	public List<Message> loadByMesUsername(int mes_user_id) {
		// TODO Auto-generated method stub
		return messageDao.loadByMesUsername(mes_user_id);
	}

	@Override
	public void add(Message mes) {
		// TODO Auto-generated method stub
		messageDao.add(mes);
		
	}

	@Override
	public void deleteByMainId(int mes_mainid) {
		// TODO Auto-generated method stub
		Message mes = messageDao.loadByMainId(mes_mainid);
		messageDao.deleteByMainId(mes);
	}

	@Override
	public Message loadByMainId(int mes_mainid) {
		// TODO Auto-generated method stub
		return messageDao.loadByMainId(mes_mainid);
	}

}
