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
public class UsersControllerDelete extends HttpServlet {
	
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	
	User currentUser = UserServiceFactory.getUserService().getCurrentUser();
	PersistenceManager pm =PMF.get().getPersistenceManager();
	
						
						String id = req.getParameter("id");
						Long idLong = Long.parseLong(id);
						
						try{
							Query query4 = pm.newQuery(controller.model.User.class);
							query4.setFilter("id == idParam");
							query4.declareParameters("Long idParam");
							query4.deletePersistentAll(idLong);
							query4.closeAll();
						}
						finally{
							pm.close();
						}
						resp.sendRedirect("/users");
					}
		
					
				
				
		
	
}


