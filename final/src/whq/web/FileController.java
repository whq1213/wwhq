package whq.web;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import whq.model.FileInfo;
import whq.model.User1;
import whq.service.imp.IFileInfoService;

@Controller
@RequestMapping("/File")
public class FileController {
	private IFileInfoService fileInfoService;

	public IFileInfoService getFileInfoService() {
		return fileInfoService;
	}
	@Resource
	public void setFileInfoService(IFileInfoService fileInfoService) {
		this.fileInfoService = fileInfoService;
	}
	@RequestMapping(value="/upload",method=RequestMethod.GET)
	public String upload() {
		System.out.println("传");
		
		return "upload";
	}
	@RequestMapping(value="/upload",method=RequestMethod.POST)
	public String upload(@RequestParam("files")MultipartFile files,String type1,String type2,String type3,HttpServletRequest hsq) {
		System.out.println(type1);
		System.out.println(type2);
		System.out.println(type3);
		FileInfo f = new FileInfo();
		System.out.println(files.getOriginalFilename());
		f.setFile_name(files.getOriginalFilename());
		f.setTitle(type1);
		f.setType(type3);
		User1 u = (User1) hsq.getSession().getAttribute("name");//带
		if(u==null){
			System.out.println("lkgfasdkl");
			
		}
		System.out.println(u.getUser_id());
		
		f.setUp_user_id(u.getUser_id());
		Timestamp t = new Timestamp(new Date().getTime()); 
		System.out.println(t); 
  	  	f.setUp_time(t);
		System.out.println("上传");
		System.out.println(files.toString());
		
		String temp = hsq.getSession().getServletContext().getRealPath("/resourse/template");;//缓存路径
		File file =new File(temp+"/"+f.getFile_name());
		try {
			FileUtils.copyInputStreamToFile(files.getInputStream(), file);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("上传出错");
			e.printStackTrace();
		}

		fileInfoService.add(f);
		return "upload";
	}
	
	
	
	
	
}
