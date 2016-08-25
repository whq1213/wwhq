package whq.servlet;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 列出web系统中所有下载文件
 * 
 * @author lenovo
 *
 */
public class ListFileServlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 获取上传文件的目录
		String uploadFilePath = this.getServletContext().getRealPath("/resourse/template");

		Map<String, String> fileNameMap = new HashMap<String, String>();
		// 递归遍历filepath目录下的所有文件和目录，将文件的文件名存储到map集合中
		listfile(new File(uploadFilePath), fileNameMap);
		// 将Map集合发送到listfile.jsp页面进行显示
		req.setAttribute("fileNameMap", fileNameMap);
		req.getRequestDispatcher("/listfile.jsp").forward(req, resp);
	}

	/**
	 * 递归遍历指定目录下的所有文件 可能会有重复命名的文件
	 * 
	 * @param file
	 * @param map
	 */
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

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
