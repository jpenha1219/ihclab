package controller;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.google.appengine.api.users.UserServiceFactory;

import controller.model.*;

import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.User;



@SuppressWarnings("serial")
public class UsersControllerRegister extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
			RequestDispatcher dip = getServletContext().getRequestDispatcher("/WEB-INF/view/register.html");
			dip.forward(req,resp);
		
		
	}

}
