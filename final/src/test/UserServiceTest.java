package test;









import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import whq.model.FileInfo;
import whq.model.User1;
import whq.service.imp.IFileInfoService;
import whq.service.imp.IUserService1;


/** 声明用的是Spring的测试类 **/
@RunWith(SpringJUnit4ClassRunner.class)

/** 声明spring主配置文件位置，注意：以当前测试类的位置为基准,有多个配置文件以字符数组声明 **/
@ContextConfiguration(locations={"beans.xml"})



public class UserServiceTest {
   @Resource
  private IUserService1 userService;
   // @Resource
   // private IFileInfoService fileInfoService;
    //@Test // 新增（来个20条数据） 注意新增的时候先把事务注掉，要不会回滚操作
    public void testadd() {
    	String file_name = "README.html";
    	System.out.println(1);
    	//FileInfo f = fileInfoService.FindFileByName(file_name);
    //	System.out.println(f.getTitle());
      
    }
    @Test // 新增（来个20条数据） 注意新增的时候先把事务注掉，要不会回滚操作
    public void testad() {	
    	User1 u= new User1();
    	u.setIsAdmin((byte)1);
    	u.setPassword("1");
    	u.setProfession("案说法的发挥");
    	u.setUser_name("weh");
    	u.setUser_id(1002);
		//userService.update(u);
    //	userService.add(u);
    	List<User1> t = userService.list();
    	Iterator it=t.iterator();  
        
    	while(it.hasNext())  
    	{  
    	    System.out.println(it.next());  
    	}  
    	//userService.delete(1002);
      
    }
   
   
}