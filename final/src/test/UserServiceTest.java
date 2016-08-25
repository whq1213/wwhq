package test;



import java.io.File;


import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
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
  //  @Resource
   // private IUserService1 userService;
    @Resource
    private IFileInfoService fileInfoService;
    //@Test // 新增（来个20条数据） 注意新增的时候先把事务注掉，要不会回滚操作
    public void testadd() {
    	String file_name = "README.html";
    	System.out.println(1);
    	FileInfo f = fileInfoService.FindFileByName(file_name);
    	System.out.println(f.getTitle());
      
    }
    @Test // 新增（来个20条数据） 注意新增的时候先把事务注掉，要不会回滚操作
    public void testad() {
   Timestamp t =new Timestamp(new Date().getTime()); 
    	fileInfoService.UpDate(1, "wer", (byte)1, t);
	
      
    }
   
   
}