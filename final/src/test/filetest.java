package test;

import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import whq.dao.FileInfoDAO;
import whq.model.FileInfo;


/** 声明用的是Spring的测试类 **/
@RunWith(SpringJUnit4ClassRunner.class)

/** 声明spring主配置文件位置，注意：以当前测试类的位置为基准,有多个配置文件以字符数组声明 **/
@ContextConfiguration(locations={"beans.xml"})
public class filetest {
	@Resource
	private FileInfoDAO fileInfoDao;
	
	
	@Test
	public void findByFileInfoID() {
		// TODO Auto-generated method stub
		System.out.println(123);
		int file_id = 1;
		FileInfo  f= fileInfoDao.findByFileInfoID(file_id);
		dd(f);
		
	}
	@Test
	public void addtest(){
		
		FileInfo f = new FileInfo();
		f.setFile_id(2);
		fileInfoDao.add(f );
		
	}
	public static void dd(FileInfo f){
		System.out.println(f.getDown_count());
		System.out.println(f.getFile_id());
		
	}
	

}
