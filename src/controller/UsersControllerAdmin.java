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
public class UsersControllerAdmin extends HttpServlet {
	
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	User currentUser = UserServiceFactory.getUserService().getCurrentUser();
	PersistenceManager pm =PMF.get().getPersistenceManager();
	
						
					HttpSession sesion = req.getSession();
					if(sesion.getAttribute("user") != null){
						
						req.setAttribute("user", sesion.getAttribute("user"));
						try {
					Query query4 = pm.newQuery(controller.model.User.class);
					List<controller.model.User> users = (List<controller.model.User>)query4.execute("select from User");
					req.setAttribute("users", users);
					query4.closeAll();
					req.getRequestDispatcher("/WEB-INF/view/admin.jsp").forward(req, resp);
					
						}
						
						
					
					 catch (ServletException e) {
						
						e.printStackTrace();
					}
						pm.close();
					
					}
					else{
						resp.sendRedirect("/index");
					}



}}
					
					
	
	
	
