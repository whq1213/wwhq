package test;









import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import whq.dao.imp.IMessageDao;
import whq.model.FileInfo;
import whq.model.Message;
import whq.model.User1;
import whq.service.imp.IFileInfoService;
import whq.service.imp.IUserService1;


/** �����õ���Spring�Ĳ����� **/
@RunWith(SpringJUnit4ClassRunner.class)

/** ����spring�������ļ�λ�ã�ע�⣺�Ե�ǰ�������λ��Ϊ��׼,�ж�������ļ����ַ��������� **/
@ContextConfiguration(locations={"beans.xml"})



public class UserServiceTest {
   @Resource
  private IUserService1 userService;
    @Resource
    private IFileInfoService fileInfoService;
    @Resource
    private IMessageDao messageDao;
    
  
    @Test // ����������20�����ݣ� ע��������ʱ���Ȱ�����ע����Ҫ����ع�����
    public void testad() {	
    	Message m = new Message();
    	m.setMes_content("�ֶ�");
    	m.setMes_state("sd");
    	m.setMes_user_id(1001);
    	m.setMes_user_shnhe(1002);
    	
    	
    	System.out.println(messageDao.loadByMainId(2));
    	
    	System.out.println(messageDao.loadByMesUsername(1001));
//    	User1 u= new User1();
    	
//    	u.setIsAdmin((byte)1);
//    	u.setPassword("1");
//    	u.setProfession("��˵���ķ���");
//    	u.setUser_name("weh");
//    	u.setUser_id(1002);
//		//userService.update(u);
//    //	userService.add(u);
//    	List<FileInfo> t = fileInfoService.findByFileUserID(1001);
//   // 	List<User1> t = userService.list();
//    	Iterator it=t.iterator();  
//        if(it ==null){
//        	System.out.println(123);
//        }
//    	while(it.hasNext())  
//    	{  
//    	    System.out.println(it.next());  
//    	}  
//    	//userService.delete(1002);
      
    }
   
   
}