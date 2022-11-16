package com.evaluacion.Evaluacion.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.evaluacion.Evaluacion.entity.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, Long> {

	@Query("Select a from Cliente a where nombre like :fil")
	public List<Cliente> findByName(@Param("fil") String nombre);
}
