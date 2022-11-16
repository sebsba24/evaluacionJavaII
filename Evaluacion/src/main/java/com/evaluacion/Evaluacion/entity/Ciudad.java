package com.evaluacion.Evaluacion.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ciudades")
public class Ciudad {
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name="idCiudad")
	private Long idCiudad;
	
	@Column(name="nombreCiudad", length = 60)
	private String nombreCiudad;

	public Ciudad() {
		
	}
	
	public Ciudad(Long idCiudad, String nombreCiudad) {
		super();
		this.idCiudad = idCiudad;
		this.nombreCiudad = nombreCiudad;
	}
	
	public Ciudad(String nombreCiudad) {
		super();
		this.nombreCiudad = nombreCiudad;
	}

	public Long getIdCiudad() {
		return idCiudad;
	}

	public void setIdCiudad(Long idCiudad) {
		this.idCiudad = idCiudad;
	}

	public String getNombreCiudad() {
		return nombreCiudad;
	}

	public void setNombreCiudad(String nombreCiudad) {
		this.nombreCiudad = nombreCiudad;
	}
	
	
	
}
