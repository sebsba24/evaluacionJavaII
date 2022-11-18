package com.evaluacion.Evaluacion.entity;

import java.util.Date;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="clientes")
public class Cliente {

	@Id
	@Column(name="numeroDocumento")
	private Long numeroDocumento;
	
	@Column(name="nombre", length = 60)
	private String nombre;
	
	@Column(name="apellidos", length = 60)
	private String apellidos;
	
	@JsonFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "fechaNacimiento")
	private Date fechaNacimiento;
	
	@Column(name="edad")
	private int edad;
	
	@Column(name="correo", length = 60)
	private String correo;
	
	@Column(name="telefono", length = 60)
	private String telefono;
	
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name ="idCiudad")
	private Ciudad ciudad;
	
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name ="idOcupacion")
	private Ocupacion ocupacion;

	public Cliente() {
	}

	public Cliente(String nombre, String apellidos, Date fechaNacimiento, int edad, String correo,
			String telefono, Ciudad ciudad, Ocupacion ocupacion) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.fechaNacimiento = fechaNacimiento;
		this.edad = edad;
		this.correo = correo;
		this.telefono = telefono;
		this.ciudad = ciudad;
		this.ocupacion = ocupacion;
	}

	public Cliente(Long numeroDocumento, String nombre, String apellidos, Date fechaNacimiento, int edad, String correo,
			String telefono, Ciudad ciudad, Ocupacion ocupacion) {
		super();
		this.numeroDocumento = numeroDocumento;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.fechaNacimiento = fechaNacimiento;
		this.edad = edad;
		this.correo = correo;
		this.telefono = telefono;
		this.ciudad = ciudad;
		this.ocupacion = ocupacion;
	}



	public Long getNumeroDocumento() {
		return numeroDocumento;
	}

	public void setNumeroDocumento(Long numeroDocumento) {
		this.numeroDocumento = numeroDocumento;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public Date getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}
	
	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public Ciudad getCiudad() {
		return ciudad;
	}

	public void setCiudad(Ciudad ciudad) {
		this.ciudad = ciudad;
	}

	public Ocupacion getOcupacion() {
		return ocupacion;
	}

	public void setOcupacion(Ocupacion ocupacion) {
		this.ocupacion = ocupacion;
	}
	
	
	
	
	
}
