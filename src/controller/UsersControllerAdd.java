package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
public class UsersControllerAdd extends HttpServlet {


	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{


		doPost(req,resp);

	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		String password=req.getParameter("password");	
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		

		String gender=req.getParameter("gender");
		String birth = req.getParameter("birth");
		String paquete=req.getParameter("paquete");

		System.out.println("primera prueba");
		controller.model.User user = new controller.model.User( password, email, name,  ParseFecha(birth),gender, paquete );
		PersistenceManager pm = PMF.get().getPersistenceManager();
		try{ 
			pm.makePersistent(user);
			System.out.println("1");
		}
		finally{
			pm.close();
		}
		resp.sendRedirect("/index ");
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
