package whq.filter;

import java.io.IOException;


import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import whq.model.User1;


public class LoginFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("Æô¶¯¹ýÂËÆ÷");
		HttpServletRequest hsq = (HttpServletRequest)request;
		User1 u = (User1)hsq.getSession().getAttribute("name");
		if(u==null) {
			System.out.println("kong ");
				((HttpServletResponse)response).sendRedirect(hsq.getContextPath()+"/login");
			}
		else{
			System.out.println("not kong ");
			chain.doFilter(request, response);
		}
		
		
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
