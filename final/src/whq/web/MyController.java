package whq.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import whq.dao.UserDao1;
import whq.model.Message;
import whq.model.User1;
import whq.service.imp.IMessageService;
import whq.service.imp.IUserService1;


@Controller
@RequestMapping("/My")
public class MyController {
	
	private IUserService1 userService1;

	public IUserService1 getUserService1() {
		return userService1;
	}
	@Resource
	public void setUserService1(IUserService1 userService1) {
		this.userService1 = userService1;
	}
	
	private IMessageService messageService;
	
	public IMessageService getMessageService() {
		return messageService;
	}
	@Resource
	public void setMessageService(IMessageService messageService) {
		this.messageService = messageService;
	}
	
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String test(HttpServletRequest req,Model model) {
		
		Cookie[] cookies = req.getCookies();
		//for(Cookie i:cookies){
		//	System.out.println(i.getValue());
		//}
		if(cookies != null){
			for(Cookie i:cookies){
					System.out.println(i.getValue());
				}
			//String userID = cookies[1].getValue();
			//String pw = cookies[2].getValue();
			//model.addAttribute("userID", userID);
			//model.addAttribute("pw", pw);
		}
		System.out.println("����");
		return "login";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String test1(HttpServletRequest req,HttpServletResponse res, int user_id,String password,HttpSession session,Model model) 
	{	
		System.out.println("����"+user_id);
		System.out.println("�ܴa"+password);
		if(userService1==null){
			System.out.println("asdfds");
		}
		User1 u = userService1.login(user_id,password);
		if(u != null){
			String  getcook = req.getParameter("isLogin");
			if(getcook==null){
				System.out.println("����ס����");
			}else{
				Cookie cookie1 = new Cookie("user_id",Integer.toString(u.getUser_id()));
				Cookie cookie2 = new Cookie("password", u.getPassword());
				res.addCookie(cookie1);
				res.addCookie(cookie2);
			}
		}
		session.setAttribute("name", u);//�����L��
		List<Message> mes =  messageService.loadByMesUsername(user_id);
		if(mes==null){
			System.out.println("û������Ϣ");
		}else{
			for(Message m:mes){
				System.out.println(m.getMes_state()+"   "+m.getMes_user_shnhe());
			}
		}
		model.addAttribute("mes", mes);
		return "mm/homepage";
	}
	
	/**
	 * �鿴������Ϣ
	 * @return
	 */
	@RequestMapping(value="/findUserInfo",method=RequestMethod.GET)
	public String findUserInfo(HttpSession session) {
		
		System.out.println("��ѯ�û���Ϣ");
		User1 u = (User1) session.getAttribute("name");
		if(u ==null){
			System.out.println("�û�session ��ȡ�쳣");
		}else{
			System.out.println(u.getPassword()+ "  "+u.getUser_id()+" "+u.getUser_name()+ " "+ u.getIsAdmin()+" "+u.getProfession());
		}	
		return "findUserInfo";
	}
	
	
	@RequestMapping(value="/fi",method=RequestMethod.GET)
	public String f(HttpSession session) {
		
		
		return "mm/FileUpload";
	}
	
	/**
	 * �޸ĸ�����Ϣ
	 * @return
	 */
	@RequestMapping(value="/findUserInfo",method=RequestMethod.POST)
	public String findUserInfo(User1 u) {	
		//������Ҫjsp��user���󴫵ݽ���
		System.out.println("�޸ĸ�����Ϣ");
		if(u==null){
			System.out.println("��ȡ����");
		}else{
			userService1.update(u);
		}
		return "findUserInfo";
	}
	/**
	 * �ļ��ϴ�
	 * @return
	 */
	@RequestMapping(value="/File/upload")
	public String search2() {
		
		System.out.println("�ļ��ϴ�");
		
		return "redirect:/File/upload";
	}
	
	/**
	 * �ļ����
	 * @return
	 */
	@RequestMapping(value="/Down/shenhe")
	public String search3() {
		
		System.out.println("�ļ����");
		
		return "redirect:/Down/shenhe";
	}
	/**
	 * �ļ�����
	 * @return
	 */
	@RequestMapping(value="/Down/download")
	public String search4() {
		
		System.out.println("�ļ�����");
		
		return "redirect:/Down/downloadfiles";
	}
	
	/**
	 * �˳���¼
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/loginout")
	public String loginout(HttpSession session) {
		
		System.out.println("�˳���¼");
		session.removeAttribute("name");
		return "redirect:/My/login";
	}
	/**
	 * �޸�����
	 * 
	 * @param session
	 * @param password
	 * @param password1
	 * @param password2
	 * @return
	 */
	@RequestMapping(value="/changepassword",method=RequestMethod.POST)
	public String changepassword(HttpSession session,String password ,String password1,String password2) {
		
		System.out.println("��ʼ�޸�����");
		User1 u = (User1) session.getAttribute("name");
		
		userService1.updatepassword(u,password, password1, password2);
		System.out.println("�����޸ĳɹ�");
		return "changepassword";
	}
	
	@RequestMapping(value="/changepassword",method=RequestMethod.GET)
	public String changepassword() {
		return "changepassword";
	}
	
	@RequestMapping(value="/uploadrecode",method=RequestMethod.GET)
	public String uploadrecode() {
		return "redirect:/File/uploadrecode";
	}
	
	@RequestMapping(value="/deleteMessage",method=RequestMethod.GET)
	public String deleteMessage() {
		System.out.println(66+"��������");
		messageService.deleteByMainId(6);
		return "redirect:/My/login";
	}

}
