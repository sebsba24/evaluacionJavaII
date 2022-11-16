package com.evaluacion.Evaluacion.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.evaluacion.Evaluacion.entity.Cliente;
import com.evaluacion.Evaluacion.repository.ClienteRepository;

@Service
public class ClienteServiceIMP implements ClienteService {

	@Autowired
	private ClienteRepository repositoryCliente;
	
	@Override
	public List<Cliente> listCliente() {
		return repositoryCliente.findAll();
	}

	@Override
	public Cliente createUpdate(Cliente cliente) {
		return repositoryCliente.save(cliente);
	}

	@Override
	public Optional<Cliente> findById(Long numeroDocumento) {
		return repositoryCliente.findById(numeroDocumento);
	}

	@Override
	public void delete(Long numeroDocumento) {
		repositoryCliente.deleteById(numeroDocumento);
		
	}

	@Override
	public List<Cliente> findByName(String nombre) {
		return repositoryCliente.findByName(nombre);
	}

	
}
