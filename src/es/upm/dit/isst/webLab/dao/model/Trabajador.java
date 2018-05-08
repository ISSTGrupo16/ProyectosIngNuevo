package es.upm.dit.isst.webLab.dao.model;


import java.io.Serializable;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Trabajador implements Serializable {

	@Id
	private String email;
	private String password;
	private String name;
	private String especialidad;

	
	@OneToMany
	private List <Trabajador> trabajadores;
	
	public Trabajador() {
		this.trabajadores = new ArrayList<>();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List <Trabajador> getTrabajador() {
		return trabajadores;
	}

	public void setTrabajador(List <Trabajador> trabajadores) {
		this.trabajadores = trabajadores;
	}
	
	public String getEspecialidad() {
		return especialidad;
	}

	public void setEspecialidad(String especialidad) {
		this.especialidad = especialidad;
	}	
}

