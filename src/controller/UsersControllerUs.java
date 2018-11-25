package controller;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserServiceFactory;

import controller.PMF;
import controller.model.*;

@SuppressWarnings("serial")
public class UsersControllerUs extends HttpServlet{
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		PersistenceManager pm =PMF.get().getPersistenceManager();
		
		HttpSession sesion = req.getSession();
		if(sesion.getAttribute("user") != null){

req.setAttribute("users", sesion.getAttribute("user"));}

try {
	
	
	RequestDispatcher dip =getServletContext().getRequestDispatcher("/WEB-INF/view/us.jsp");
	dip.forward(req, resp);

} catch (ServletException e) {
	
	e.printStackTrace();
}
finally {
	pm.close();
}




		}}

