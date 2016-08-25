package whq.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="fileinfo_table")
public class FileInfo {
	private String file_name;		//文件真实名称
	
	private int file_id;       		//文件id，唯一标识
	private String title;			//标题
	private int item_info_id;		//文件所属栏目
	private String type;			//文件类型，如doc、pdf
	private String filepath;		//文件路径
	private int  up_user_id;		//上传用户
	private byte check_status;		//文件是否被审核
	private int down_count;			//下载次数
	private Timestamp up_time;		//上传时间
	private Timestamp check_time;	//审核时间
	
	
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	/**
	 * 获取文件id
	 * @return
	 */
	
	@Id
	public int getFile_id() {
		return file_id;
	}
	/**
	 * 设置文件id
	 * @param file_id
	 */
	public void setFile_id(int file_id) {
		this.file_id = file_id;
	}
	/**
	 * 获取文件标题
	 * @return
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * 设置文件标题
	 * @param title
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * 获取文件所属栏目
	 * @return
	 */
	public int getItem_info_id() {
		return item_info_id;
	}
	/**
	 * 设置文件所属栏目
	 * @param item_info_id
	 */
	public void setItem_info_id(int item_info_id) {
		this.item_info_id = item_info_id;
	}
	/**
	 * 获取文件类型
	 * @return
	 */
	public String getType() {
		return type;
	}
	/**
	 * 设置文件类型
	 * @param type
	 */
	public void setType(String type) {
		this.type = type;
	}
	/**
	 * 获取文件存储路径
	 * @return
	 */
	public String getFilepath() {
		return filepath;
	}
	/**
	 * 设置文件存储路径
	 * @param filepath
	 */
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	
	public int getUp_user_id() {
		return up_user_id;
	}
	public void setUp_user_id(int up_user_id) {
		this.up_user_id = up_user_id;
	}
	/**
	 * 获取审核状态
	 * @return
	 */
	public byte getCheck_status() {
		return check_status;
	}
	/**
	 * 设置审核状态
	 * @param check_status
	 */
	public void setCheck_status(byte check_status) {
		this.check_status = check_status;
	}
	/**
	 * 获取文件下载次数
	 * @return
	 */
	public int getDown_count() {
		return down_count;
	}
	/**
	 * 设置文件下载次数
	 * @param down_count
	 */
	public void setDown_count(int down_count) {
		this.down_count = down_count;
	}
	/**
	 * 获取文件上传时间
	 * @return
	 */
	public Timestamp getUp_time() {
		return up_time;
	}
	/**
	 * 设置文件上传时间
	 * @param up_time
	 */
	public void setUp_time(Timestamp up_time) {
		this.up_time = up_time;
	}
	/**
	 * 获取文件审核通过时间
	 * @return
	 */
	public Timestamp getCheck_time() {
		return check_time;
	}
	/**
	 * 设置文件审核通过时间
	 * @param check_time
	 */
	public void setCheck_time(Timestamp check_time) {
		this.check_time = check_time;
	}
	
	
}
