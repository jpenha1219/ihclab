package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserServiceFactory;

import controller.PMF;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import controller.model.*;

@SuppressWarnings("serial")
public class UsersControllerIndex extends HttpServlet {
	
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	User currentUser = UserServiceFactory.getUserService().getCurrentUser();
	PersistenceManager pm =PMF.get().getPersistenceManager();
	
						
					HttpSession sesion = req.getSession();
					Query query4 = pm.newQuery(controller.model.User.class);
					List<controller.model.User> users = (List<controller.model.User>)query4.execute("select from User");
					req.setAttribute("users", users);
					
					try {
						req.getRequestDispatcher("/WEB-INF/Views/Users/index.jsp").forward(req, resp);
						query4.closeAll();
					
					} catch (ServletException e) {
						
						e.printStackTrace();
					}
					finally {
						pm.close();
					}
	
			
		
	
	}
	}
