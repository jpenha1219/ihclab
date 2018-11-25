package controller;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserServiceFactory;

import controller.PMF;
import controller.model.*;

@SuppressWarnings("serial")
public class UsersControllerView extends HttpServlet{
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	
	User currentUser = UserServiceFactory.getUserService().getCurrentUser();
	PersistenceManager pm =PMF.get().getPersistenceManager();
	
							
						
						
						Key k = KeyFactory.createKey(controller.model.User.class.getSimpleName(), new Long(req.getParameter("id")).longValue());
						controller.model.User user = pm.getObjectById(controller.model.User.class, k);
						req.setAttribute("user", user);
						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/Views/Users/perfil.jsp");
						dispatcher.forward(req, resp);
		
					}
					
				
			
		
	
	

}
