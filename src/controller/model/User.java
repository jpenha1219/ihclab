package controller.model;

import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import java.io.*;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class User implements Serializable {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Long id;
	
	@Persistent
	private String email;
	
	@Persistent
	private String name;
	
	@Persistent
	private String password;
	
	@Persistent
	private String role;
	
	@Persistent
	private String gender;
	
	@Persistent
	private Date created;
	
	@Persistent
	private Date date;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Persistent
	private boolean status;
	
	@Persistent
	private String paquete;
	
	

	public User(String password,String email,String name, Date date,  String gender, String paquete) {
		super();
		this.password=password;
		this.name=name;
		this.email = email;
		this.role="usuario";
		this.date=date;
		this.created=new Date();
		this.gender=gender;
		this.status=true;
		this.paquete=paquete;
		
	}
	
	public User(String name, String password, String email){
		this.name=name;
		this.email=email;
		this.password=password;
		this.gender="male";
		this.date=new Date();
		this.role="administrador";
		this.paquete="10mb";
		this.status=true;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", name=" + name + ", role=" + role + ", gender=" + gender
				+ ", created=" + created + ", date=" + date + ", status=" + status + ", paquete=" + paquete + "]";
	}

	public String getPaquete() {
		return paquete;
	}

	public void setPaquete(String paquete) {
		this.paquete = paquete;
	}

	public String getId() {
		return Long.toString(id);
	}

	public void setId(String idPersona) {
		Long clave =Long.parseLong(idPersona);
		this.id = clave;
	}

	public String getEmail() {return this.email;}
	public void setEmail(String email) {this.email = email;}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	
	

}
