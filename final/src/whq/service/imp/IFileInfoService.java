package whq.service.imp;

import java.sql.Timestamp;
import java.util.List;


import whq.model.FileInfo;

public interface IFileInfoService {
	public void add(FileInfo f);//上传文件
	public abstract List decide();//审核文件
	public abstract FileInfo FindFileByName(String file_name);
	public abstract void UpDate(int file_id, String filepath, byte check, Timestamp check_time);
	public abstract void DeletByName(FileInfo f);
}
