package whq.dao.imp;

import java.sql.Timestamp;

import java.util.List;

import whq.model.FileInfo;
import whq.model.User1;
public interface IFileInfoDAO {
	
	
	public FileInfo findByFileInfoID(int file_id);				//���ļ�ID��ѯ
	public List<FileInfo> findByFileUserID(int up_user_id);				//���û�ID��ѯ
	public FileInfo findByFileInfoTitle(String fileTitle);		//���ļ�����ѯ
	
	public List<FileInfo> likeQueryByTitle(String fileTitle);	//ģ����ѯ�ļ�
	
	public abstract void add(FileInfo f);                        //�����ļ�
	
	public abstract void deletByName(FileInfo f);					//ɾ���ļ�
	public abstract void update(int file_id,String filepath,byte check,Timestamp check_time);	
	
	public abstract void updateCount(int file_id, int down_count);
	//public void uploadFileInfo(FileInfo fileinfo);
	//public void updateFileInfo(FileInfo fileinfo);
	//public FileInfo downloadFileInfo();
}
