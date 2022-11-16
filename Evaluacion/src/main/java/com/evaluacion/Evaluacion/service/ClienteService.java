package com.evaluacion.Evaluacion.service;

import java.util.List;
import java.util.Optional;

import com.evaluacion.Evaluacion.entity.Cliente;

public interface ClienteService {

	public List<Cliente> listCliente();
	public Cliente createUpdate(Cliente cliente);
	public Optional<Cliente> findById(Long numeroDocumento);
	public void delete (Long numeroDocumento);
	public List<Cliente> findByName(String nombre);
}
