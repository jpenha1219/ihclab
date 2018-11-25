package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserServiceFactory;

import controller.PMF;
import controller.model.*;

@SuppressWarnings("serial")
public class UsersControllerEdit extends HttpServlet{
	
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	
	User currentUser = UserServiceFactory.getUserService().getCurrentUser();
	PersistenceManager pm =PMF.get().getPersistenceManager();
	
	
		
						try {
							
							String id = req.getParameter("id");
							Long idLong = Long.parseLong(id); 
							controller.model.User user = pm.getObjectById(controller.model.User.class,idLong);
							req.setAttribute("user",user);
							
							 
							
							req.getRequestDispatcher("/WEB-INF/Views/Users/edit.jsp").forward(req, resp);
							
						} catch (Exception e) {
							e.printStackTrace();
						}
						finally{
							pm.close();
						}
		
					
			
	
	}

	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
			
		String id = req.getParameter("id");
		//idRole + nameRole 
		String name = req.getParameter("name");
	String email = req.getParameter("email");
	String role=req.getParameter("role");
	String date=req.getParameter("date");
	String gender=req.getParameter("gender");
	String created=req.getParameter("created");
	String status=req.getParameter("status");
	String paquete=req.getParameter("paquete");
		PersistenceManager pm = PMF.get().getPersistenceManager();
		
		try{
			Long idLong = Long.parseLong(id);
			
			controller.model.User user = pm.getObjectById(controller.model.User.class,idLong);
			user.setEmail(email);
			user.setDate(ParseFecha(date));
			user.setGender(gender);
			user.setStatus(new Boolean(status));
			user.setDate(ParseFecha(created));
			user.setName(name);
			user.setRole(role);
			user.setPaquete(paquete);
			
			
		}
		catch(Exception e){
			System.out.println("Se produjo un Error");
		}
		finally{
			pm.close();
		}
			resp.sendRedirect("/users");
	}
	
	public static Date ParseFecha(String fecha){
	     SimpleDateFormat formato = new SimpleDateFormat("yyyy-mm-dd");
	     Date fechaDate = null;
	     try {
	         fechaDate = formato.parse(fecha);
	     } 
	     catch (ParseException ex) 
	     {
	         System.out.println(ex);
	     }
	     return fechaDate;
	 }
}


