package whq.dao.imp;

import java.sql.Timestamp;

import java.util.List;

import whq.model.FileInfo;
import whq.model.User1;
public interface IFileInfoDAO {
	
	
	public FileInfo findByFileInfoID(int file_id);				//按文件ID查询
	public List<FileInfo> findByFileUserID(int up_user_id);				//按用户ID查询
	public FileInfo findByFileInfoTitle(String fileTitle);		//按文件名查询
	
	public List<FileInfo> likeQueryByTitle(String fileTitle);	//模糊查询文件
	
	public abstract void add(FileInfo f);                        //增加文件
	
	public abstract void deletByName(FileInfo f);					//删除文件
	public abstract void update(int file_id,String filepath,byte check,Timestamp check_time);	
	
	public abstract void updateCount(int file_id, int down_count);
	//public void uploadFileInfo(FileInfo fileinfo);
	//public void updateFileInfo(FileInfo fileinfo);
	//public FileInfo downloadFileInfo();
}
