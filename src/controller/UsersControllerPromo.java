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
public class UsersControllerPromo extends HttpServlet {
	
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	User currentUser = UserServiceFactory.getUserService().getCurrentUser();
	PersistenceManager pm =PMF.get().getPersistenceManager();
	
					
	
	HttpSession sesion = req.getSession();
	
							if(sesion.getAttribute("user") != null){
					
					req.setAttribute("users", sesion.getAttribute("user"));
				
					try {
						RequestDispatcher dip = getServletContext().getRequestDispatcher("/WEB-INF/view/promotion.jsp");
					dip.forward(req,resp);
						
					
					} catch (ServletException e) {
						
						e.printStackTrace();
					}
					finally {
						pm.close();
					}
	
			
		
	
							}}}
	
