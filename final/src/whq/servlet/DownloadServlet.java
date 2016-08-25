package whq.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DownloadServlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fileName = req.getParameter("filename");

		fileName = new String(fileName.getBytes("iso8859-1"), "UTF-8");
		String fileSaveRootPath = this.getServletContext().getRealPath("/WEB-INF/files");
		String path = findFileSavePathByFileName(fileSaveRootPath);
		File file = new File(path + "\\" + fileName);
		if (!file.exists()) {
			req.setAttribute("message", "您要下载的资源已被删除！！");
			req.getRequestDispatcher("/message.jsp").forward(req, resp);// message.jsp
																		// 消息提示框
			return;
		}
		String realname = fileName;// 用来处理文件名
		// 设置响应头，控制浏览器下载该文件
		resp.addHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(realname, "UTF-8"));
		//读取要下载的文件，保存到文件输入流
		FileInputStream in = new FileInputStream(path + "\\" + fileName);
		//创建输出流
		OutputStream out = resp.getOutputStream();
		//缓存流
		byte[] buffer = new byte[1024];
		int len = 0;
		//循环将输入流中的内容读取到缓冲区当中
		while((len = in.read(buffer)) > 0){
			//输出缓冲区的内容到浏览器，实现文件下载
			out.write(buffer, 0, len);
		}
		in.close();
		
		out.close();
	}

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	/**
	 * 通过文件名和存储上传文件根目录找出要下载的文件的所在路径
	 * 
	 * @param filename
	 *            要下载的文件名
	 * @param saveRootPath
	 *            上传文件保存的根目录，也就是/WEB-INF/files目录
	 */
	public String findFileSavePathByFileName(String saveRootPath) {
		String dir = saveRootPath;
		File file = new File(dir);
		if (!file.exists()) {
			file.mkdirs();
		}
		return dir;
	}
}