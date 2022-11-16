package com.evaluacion.Evaluacion.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.evaluacion.Evaluacion.entity.Ciudad;
import com.evaluacion.Evaluacion.repository.CiudadRepository;

@Service
public class CiudadServiceIMP implements CiudadService{

	@Autowired
	private CiudadRepository repositoryCiudad;

	@Override
	public List<Ciudad> ListCity() {
		return repositoryCiudad.findAll();
	}
	
	
}
