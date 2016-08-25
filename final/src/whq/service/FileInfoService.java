package whq.service;

import java.io.File;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import whq.dao.imp.IFileInfoDAO;
import whq.exception.LoginException;
import whq.model.FileInfo;
import whq.service.imp.IFileInfoService;

@Service("fileInfoService")
public class FileInfoService implements IFileInfoService {
	private IFileInfoDAO fileInfoDao;

	public IFileInfoDAO getFileInfoDao() {
		return fileInfoDao;
	}
	@Resource
	public void setFileInfoDao(IFileInfoDAO fileInfoDao) {
		this.fileInfoDao = fileInfoDao;
	}
	
	public void add(FileInfo f)  {
		
		fileInfoDao.add(f);		
	}
	@Override
	public List decide() {
		// TODO Auto-generated method stub
		
		return null;
	}
	@Override
	public FileInfo FindFileByName(String file_name) {
		// TODO Auto-generated method stub
		return  fileInfoDao.findByFileInfoTitle(file_name);
	}
	
	public void UpdateFile(){
		
	}
	@Override
	public void UpDate(int file_id, String filepath, byte check, Timestamp check_time) {
		// TODO Auto-generated method stub
		fileInfoDao.update(file_id, filepath, check, check_time);
		
	}
	@Override
	public void DeletByName(FileInfo f) {
		// TODO Auto-generated method stub
		if(f==null) {
			System.out.println("文件不正确");
			throw new LoginException("文件不存在");
			}
		fileInfoDao.deletByName(f);
		
	}

	
	
}
