
package controller.model;

import java.util.List;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Renato Alonso Mendizabal Alpaca
 */
public class Email {
    
    public static boolean enviarCorreo(String de, String email, String mensaje, String asunto){
        boolean enviado = false;
            try{
            
           
        Properties props = new Properties();
        Session session = Session.getDefaultInstance(props, null);

        	
          Message msg = new MimeMessage(session);
          msg.setFrom(new InternetAddress(de));
          InternetAddress  para = new InternetAddress(email);
         
         
      
              msg.addRecipient(Message.RecipientType.TO, para);
          
      
          msg.setSubject(asunto);
          msg.setText(mensaje);
          Transport.send(msg);
        
            }catch(Exception e){
                e.printStackTrace();
            }
        
        return enviado;
    }
    
}
