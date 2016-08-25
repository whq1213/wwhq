package whq.web;

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
import whq.model.User1;
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
	@RequestMapping(value="/login/a")
	public String search() {
		
		System.out.println("查询地址");
		
		return "search";
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
		System.out.println("测试");
		return "login";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String test1(HttpServletRequest req,HttpServletResponse res, int user_id,String password,HttpSession session) 
	{	
		System.out.println("工号"+user_id);
		System.out.println("密碼"+password);
		if(userService1==null){
			System.out.println("asdfds");
		}
		User1 u = userService1.login(user_id,password);
		if(u != null){
			String  getcook = req.getParameter("isLogin");
			if(getcook==null){
				System.out.println("不记住密码");
			}else{
				Cookie cookie1 = new Cookie("user_id",Integer.toString(u.getId()));
				Cookie cookie2 = new Cookie("password", u.getPassword());
				res.addCookie(cookie1);
				res.addCookie(cookie2);
			}
		}
		
		session.setAttribute("name", u);//傳入繪畫
		
		//return "redirect:/File/upload";
		//return "redirect:/Down/load";
		return "main";
		//return "most/index";
	}
	
	@RequestMapping(value="/File/upload")
	public String search2() {
		
		System.out.println("查询地址");
		
		return "redirect:/File/upload";
	}
	
	
	@RequestMapping(value="/Down/shenhe")
	public String search3() {
		
		System.out.println("查询地址");
		
		return "redirect:/Down/shenhe";
	}
	
	@RequestMapping(value="/Down/download")
	public String search4() {
		
		System.out.println("查询地址");
		
		return "redirect:/Down/downloadfiles";
	}
	

}
