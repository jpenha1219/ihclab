package controller;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.google.appengine.api.users.UserServiceFactory;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.User;



@SuppressWarnings("serial")
public class UsersControllerLogin extends HttpServlet{
	/*public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		HttpSession sesion = req.getSession();
		
		if(sesion.getAttribute("usuario")==null){
			
			String user,password;
			user = req.getParameter("user");
	        password = req.getParameter("password");
			req.setAttribute("user", user);
			RequestDispatcher dip = getServletContext().getRequestDispatcher("/WEB-INF/view/index.jsp");
			dip.forward(req,resp);
		}
		else{
			
		}
		
	}*/
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
		
		 PersistenceManager pm =PMF.get().getPersistenceManager();		
	        HttpSession sesion = request.getSession(true);
	        String usu, pass;
	        usu = request.getParameter("email");
	        pass = request.getParameter("password");
	        
	        
	        String query = "select from "+ controller.model.User.class.getName()+
					" where email=='"+usu +"'"+
					" && password=='"+pass+"' && status==true";
			List<controller.model.User> users=(List<controller.model.User>)pm.newQuery(query).execute();
			if(!users.isEmpty()){
				 //deberíamos buscar el usuario en la base de datos, pero dado que se escapa de este tema, ponemos un ejemplo en el mismo código
				request.setAttribute("users", users.get(0));
				sesion.setAttribute("user", users.get(0));
				
			RequestDispatcher dip =getServletContext().getRequestDispatcher("/WEB-INF/view/index/index.jsp");
			dip.forward(request, response);
			}
	        
	         else{
	        	 RequestDispatcher dip =getServletContext().getRequestDispatcher("/WEB-INF/view/login2.html");
	 			dip.forward(request, response);
	 			 }
	    }
	    
	   //método encargado de la gestión del método GET
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	    	RequestDispatcher dip =getServletContext().getRequestDispatcher("/WEB-INF/view/login.html");
			dip.forward(request, response);
	    
	    }

}
