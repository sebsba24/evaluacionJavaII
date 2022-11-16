package com.evaluacion.Evaluacion.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.evaluacion.Evaluacion.entity.Ciudad;
import com.evaluacion.Evaluacion.entity.Cliente;
import com.evaluacion.Evaluacion.entity.Ocupacion;
import com.evaluacion.Evaluacion.service.CiudadService;
import com.evaluacion.Evaluacion.service.ClienteService;
import com.evaluacion.Evaluacion.service.OcupacionService;

@Controller
public class CrudController {

	@Autowired
	private CiudadService ciudadService;
	
	@Autowired 
	private OcupacionService ocupacionService;
	
	@Autowired
	private ClienteService clienteService;
	
	@RequestMapping("/listarCiudad")
	@ResponseBody
	public List<Ciudad> listCiudad(){
		List<Ciudad> lista = ciudadService.ListCity();
		return lista;
	}
	
	@RequestMapping("/listarOcupacion")
	@ResponseBody
	public List<Ocupacion> listOcupacion(){
		List<Ocupacion> lista = ocupacionService.listOcupation();
		return lista;
	}
	
	@RequestMapping("/listarClienteNombre")
	@ResponseBody
	public List<Cliente> consultaNombre(String nombre){
		List<Cliente> lista = clienteService.findByName("%"+nombre+"%");
		return lista;
	}
	
	@RequestMapping("/registrarCliente")
	@ResponseBody
	public Map<String, Object> create(Cliente cliente){
		Map<String,Object> salida = new HashMap<String, Object>();
		try {
			Cliente clienteRegis = clienteService.createUpdate(cliente);
			if(clienteRegis == null) {
				salida.put("Mensaje", "Error de registro");		
			}else {
				List<Cliente> lista = clienteService.listCliente();
				salida.put("lista", lista);
				salida.put("mensaje", "El cliente se ha guardado");
			}		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	
	@RequestMapping("/actualizarCliente")
	@ResponseBody
	public Map<String, Object> update(Cliente cliente){
		Map<String,Object> salida = new HashMap<String, Object>();
		try {
			Cliente clienteRegis = clienteService.createUpdate(cliente);
			if(clienteRegis == null) {
				salida.put("Mensaje", "Error al actualizar el cliente");		
			}else {
				List<Cliente> lista = clienteService.listCliente();
				salida.put("lista", lista);
				salida.put("mensaje", "El cliente se ha actualizado");
			}		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	
	@RequestMapping("/eliminarCliente")
	@ResponseBody
	public Map<String, Object> delete(String numeroDocumento){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Optional<Cliente> optCliente = clienteService.findById(Long.parseLong(numeroDocumento));
			if (optCliente == null){
				salida.put("Mensaje", "Numero de documento no encontrado: "+numeroDocumento);			
			}else {
				clienteService.delete(Long.parseLong(numeroDocumento));
				List<Cliente> lista = clienteService.listCliente();
				salida.put("lista", lista);
				salida.put("mensaje", "El cliente se ha eliminido");
			}
		}catch (Exception e) {
				e.printStackTrace();
			}
			return salida;
	}
	
	@RequestMapping("/listarClientes")
	public String verInicio() {
		return "clientes";
	}
	
	
}
	
