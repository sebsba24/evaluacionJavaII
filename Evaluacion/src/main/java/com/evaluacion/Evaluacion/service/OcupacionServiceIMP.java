package com.evaluacion.Evaluacion.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.evaluacion.Evaluacion.entity.Ocupacion;
import com.evaluacion.Evaluacion.repository.OcupacionRepository;

@Service
public class OcupacionServiceIMP implements OcupacionService{

	@Autowired
	private OcupacionRepository reposistoryOcupacion;
	
	@Override
	public List<Ocupacion> listOcupation() {
		return reposistoryOcupacion.findAll();
	}

}
