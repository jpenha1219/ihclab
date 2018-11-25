package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.google.appengine.api.users.UserServiceFactory;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.User;



@SuppressWarnings("serial")
public class UsersControllerLogout extends HttpServlet{
		
		   protected void doGet(HttpServletRequest request, HttpServletResponse response)
		            throws ServletException, IOException {
		        
		        //me llega la url "proyecto/login/out"
		        HttpSession sesion = request.getSession();
		        	
		        	sesion.removeAttribute("user");
		            sesion.invalidate();
		            RequestDispatcher dip = getServletContext().getRequestDispatcher("/WEB-INF/view/login.html");
					dip.forward(request,response);
		        	           
		        
		   }

}