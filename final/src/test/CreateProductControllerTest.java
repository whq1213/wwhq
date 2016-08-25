package test;







import java.io.File;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;

import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.mock.web.MockHttpSession;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import whq.web.DownloadFileController;
import whq.web.MyController;

@RunWith(SpringJUnit4ClassRunner.class)  //此处调用Spring单元测试类  
@ContextConfiguration(locations = {"user-servlet.xml","beans.xml"})//加载Spring配置文件
public class CreateProductControllerTest
{
	@Resource
	private DownloadFileController down;
	 //private MyController userController;
	private MockHttpServletRequest request;
	private MockHttpServletResponse response;
	private MockHttpSession session;     
    @Before
    public void before()
    { 
        request = new MockHttpServletRequest();
        response = new MockHttpServletResponse();
        
        session = new MockHttpSession();
       
     
    }
    @Test
    public void  testGettingToDetails (){
    	// userController = new MyController();
    	// userController.test1(request, response, 1001, "1", session);
    	// request.setMethod("POST");
    	//.addParameter("viewDetails", "true");
    	 
    	
    }
    
    @Test
    public void  testG (){
    	down.upload(request, response);
    	//userController.test1(request, response, 1001, "1", session);
    	// request.setMethod("POST");
    	//.addParameter("viewDetails", "true");
    	 
    	
    }
    public void listfile(File file, Map<String, String> map) {
		if (!file.isFile()) {
			File[] files = file.listFiles();
			for (File f : files) {
				listfile(f, map);
			}
		} else {
			String realPath = file.getName();
			if (map.containsKey(file.getName())) {
				System.out.println("文件名有重复");
			} else {
				map.put(file.getName(), realPath);
			}
		}
	
	}
  
    
}