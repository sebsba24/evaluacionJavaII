<!DOCTYPE html>
<html lang="es" >
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>CRUD Evalucion</title>
</head>
<body> 

 <div class="container">
 <h3>Crud Clientes</h3>
		 <div class="col-md-23" >  

				   <div class="row" style="height: 70px">
						<div class="col-md-2" >
								<input class="form-control" id="id_txt_filtro"  name="filtro" placeholder="Ingrese el nombre" type="text" maxlength="30"/>
						</div>
						<div class="col-md-2" >
							<button type="button" class="btn btn-primary" id="id_btn_filtrar" style="width: 150px">Filtrar</button>
						</div>
						<div class="col-md-2">
							<button type="button" data-toggle='modal'  data-target="#id_div_modal_registra"  class='btn btn-success' style="width: 150px">Registrar</button>
						</div>
					</div>
					<div class="row" > 
						<div class="col-md-12">
								<div class="content" >
						
									<table id="id_table" class="table table-striped " >
										<thead class="table table-dark">
											<tr>
												<th style="width: 5%" >Numero Documento</th>
												<th style="width: 25%">Nombre</th>
												<th style="width: 8%">Apellidos</th>
												<th style="width: 8%">Fecha Nacimiento</th>
												<th style="width: 8%">Ciudad</th>
												<th style="width: 8%">Correo</th>
												<th style="width: 8%">Telefono</th>
												<th style="width: 10%">Ocupacion</th>
												<th style="width: 10%">Actualizar</th>
												<th style="width: 10%">Eliminar</th>
											</tr>
										</thead>
											<tbody>
											</tbody>
										</table>
								</div>	
						</div>
					</div>
		  </div>
  
  	 <div class="modal fade" id="id_div_modal_registra" >
			<div class="modal-dialog" style="width: 60%">
		
				<!-- Client content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Registro de Clientes</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudModalidad" class="form-horizontal" method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos del cliente</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_numero_documento">Numero Documento</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_reg_numero_documento" name="numeroDocumento" placeholder="Ingrese el Numero de documento" type="text" maxlength="10"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_nombre">Nombre</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese el nombre" type="text" maxlength="60"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_apellido">Apellidos</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_reg_apellido" name="apellidos" placeholder="Ingrese los apellidos" type="text" maxlength="60"/>
		                                        </div>
		                                    </div>		   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_fecha_nacimiento">Fecha nacimiento</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_reg_fecha_nacimiento" name="fechaNacimiento" type="date"/>
		                                        </div>
		                                    </div>
											<div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_edad">Edad</label>
		                                        <div class="col-lg-8">
													<input class="form-control input-sm" id="id_edad" name="edad" type="number" readonly/>
		                                        </div>
		                                    </div>  
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_ciudad">Ciudad</label>
		                                        <div class="col-lg-8">
													<select id="id_reg_ciudad" name="ciudad">
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>
		                                        </div>
		                                    </div>   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_correo">Correo</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_reg_correo" name="correo" placeholder="Ingrese el correo" type="text" maxlength="50"/>
		                                        </div>
		                                    </div>    
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_telefono">Telefono</label>
		                                        <div class="col-lg-8">
													 <input class="form-control" id="id_reg_telefono" name="telefono" placeholder="Ingrese el telefono" type="text" maxlength="10"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_ocupacion">Ocupacion</label>
		                                        <div class="col-lg-8">
													 <select id="id_reg_ocupacion" name="ocupacion" class='form-control'>
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_registra">Registrar</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        
		                    </div>
		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>
  
		 <div class="modal fade" id="id_div_modal_actualiza" >
			<div class="modal-dialog" style="width: 60%">
		
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualizar Cliente</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaCrudModalidad" class="form-horizontal" method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos del Cliente</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_numeroDocumento">Numero Documento</label>
		                                        <div class="col-lg-8">
		                                           <input class="form-control" id="id_act_numeroDocumento" readonly="readonly" name="numeroDocumento" type="text" maxlength="10"/>
		                                        </div>
		                                     </div>
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_nombre">Nombre</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_apellidos">apellidos</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_act_apellidos" name="apellidos" placeholder="Ingrese los apellidos" type="text" maxlength="60"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_fecha_nacimiento">Fecha nacimiento</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_act_fecha_nacimiento" name="fechaNacimiento" placeholder="Ingrese la fecha de nacimiento" type="date"/>
		                                        </div>
											</div>
											<div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_edad">Edad</label>
		                                        <div class="col-lg-8">
													<input class="form-control input-sm" id="id_act_edad" name="edad" type="number" readonly/>
		                                        </div>
		                                    </div>	   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_ciudad">Ciudad</label>
		                                        <div class="col-lg-8">
													<select id="id_act_ciudad" name="ciudad">
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>
		                                        </div>
		                                    </div>   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_correo">Correo</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_act_correo" name="correo" placeholder="Ingrese el correo" type="text" maxlength="50"/>
		                                        </div>
		                                    </div>    
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_telefono">Telefono</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_act_telefono" name="telefono" placeholder="Ingrese el telefono" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>  
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_ocupacion">Ocupacion</label>
		                                        <div class="col-lg-8">
													<select id="id_act_ocupacion" name="ocupacion" class='form-control'>
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_actualiza">Actualizar</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        </div>

		                </form>   
				
				</div>
				</div>
			</div>		
		</div>
</div>

<script type="text/javascript">
$.getJSON("listarCiudad", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_ciudad").append("<option value="+item.idCiudad +">"+ item.nombreCiudad +"</option>");
		$("#id_act_ciudad").append("<option value="+item.idCiudad +">"+ item.nombreCiudad+"</option>");
	});
});

$.getJSON("listarOcupacion", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_ocupacion").append("<option value="+item.idOcupacion +">"+ item.nombreOcupacion +"</option>");
		$("#id_act_ocupacion").append("<option value="+item.idOcupacion +">"+ item.nombreOcupacion +"</option>");
	});
});


$("#id_btn_filtrar").click(function(){
	var fil=$("#id_txt_filtro").val();
	$.getJSON("listarClienteNombre",{"nombre":fil}, function (lista){
		agregar(lista);
	});
});

$('#id_reg_fecha_nacimiento').on('change', function(){
	$('#id_edad').val(validarFecha());
})

function validarFecha(){
	var fecha_seleccionada = $('#id_reg_fecha_nacimiento').val();
	var fecha_nacimiento= new Date (fecha_seleccionada);
	var fecha_actual = new Date();
	var id_edad = (parseInt((fecha_actual - fecha_nacimiento) / (1000*60*60*24*365)));
	return id_edad;
}

$('#id_act_fecha_nacimiento').on('change', function(){
	$('#id_act_edad').val(validarFechaAct());
})

function validarFechaAct(){
	var fecha_seleccionada = $('#id_act_fecha_nacimiento').val();
	var fecha_nacimiento= new Date (fecha_seleccionada);
	var fecha_actual = new Date();
	var id_act_edad = (parseInt((fecha_actual - fecha_nacimiento) / (1000*60*60*24*365)));
	return id_act_edad;
}

function agregar(lista){
	 $('#id_table').DataTable().clear();
	 $('#id_table').DataTable().destroy();
	 $('#id_table').DataTable({
			data: lista,
			searching: false,
			ordering: true,
			processing: true,
			pageLength: 5,
			lengthChange: false,
			columns:[
				{data: "numeroDocumento"},
				{data: "nombre"},
				{data: "apellidos"},
				{data: "fechaNacimiento"},
				{data: "ciudad.nombreCiudad"},
				{data: "correo"},
				{data: "telefono"},			
				{data: "ocupacion.nombreOcupacion"},
				{data: function(row, type, val, meta){
					var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\''+row.numeroDocumento + '\',\'' + row.nombre +'\',\'' + row.apellidos  +'\',\'' + row.fechaNacimiento + '\',\'' + row.ciudad.idCiudad + '\',\'' +  row.correo + '\',\'' +  row.telefono + '\',\'' + row.ocupacion.idOcupacion+ '\')">Editar</button>';
					return salida;
				},className:'text-center'},	
				{data: function(row, type, val, meta){
				    var salida='<button type="button" style="width: 90px" class="btn btn-danger btn-sm" onclick="eliminar(\'' + row.numeroDocumento + '\')">Eliminar</button>';
					return salida;
				},className:'text-center'},													
			]                                     
	    });
}

function eliminar(numeroDocumento){
	mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar,null,numeroDocumento);
}

function accionEliminar(numeroDocumento){
	$.ajax({
		type: "POST",
		url: "eliminarCliente",
		data: {"numeroDocumento":numeroDocumento},
		success: function(data){
			agregar(data.lista);
			mostrarMensaje(data.mensaje);
		},
		error: function(){
			mostrarMensaje(MSG_ERROR)
		}
	});
}

$('#id_reg_ciudad').select2({
	tags: true,
	placeholder: 'Selecciona una opcion'

});

$('#id_act_ciudad').select2({
	tags: true,
	placeholder: 'Selecciona una opcion',
});


function editar(numeroDocumento,nombre,apellidos,fechaNacimiento,idCiudad,correo,telefono,idOcupacion){	
	$('#id_act_numeroDocumento').val(numeroDocumento);
	$('#id_act_nombre').val(nombre);
	$('#id_act_apellidos').val(apellidos);
	$('#id_act_fecha_nacimiento').val(fechaNacimiento);
	$('#id_act_ciudad').val(idCiudad);
	$('#id_act_correo').val(correo);
	$('#id_act_telefono').val(telefono);
	$('#id_act_ocupacion').val(idOcupacion);
	$('#id_div_modal_actualiza').modal("show");
}

function limpiarFormulario(){
	$('#id_reg_nombre').val('');	
	$('#id_reg_apellido').val('');
	$('#id_reg_fecha_nacimiento').val('');
	$('#id_reg_ciudad').val('');
	$('#id_reg_correo').val('');
	$('#id_reg_telefono').val('');
	$('#id_reg_ocupacion').val('');
}

$("#id_btn_registra").click(function(){
	var validator = $('#id_form_registra').data('bootstrapValidator');
    validator.validate();
	
    if (validator.isValid()) {
        $.ajax({
          type: "POST",
          url: "registrarCliente", 
          data: $('#id_form_registra').serialize(),
          success: function(data){
        	  agregar(data.lista);
        	  $('#id_div_modal_registra').modal("hide");
        	  mostrarMensaje(data.mensaje);
        	  limpiarFormulario();
        	  validator.resetForm();
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR);
          }
        });
        
    }
});

$("#id_btn_actualiza").click(function(){
	var validator = $('#id_form_actualiza').data('bootstrapValidator');
    validator.validate();
    if (validator.isValid()) {
        $.ajax({
          type: "POST",
          url: "actualizarCliente", 
          data: $('#id_form_actualiza').serialize(),
          success: function(data){
        	  agregar(data.lista);
        	  $('#id_div_modal_actualiza').modal("hide");
        	  mostrarMensaje(data.mensaje);
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR);
          }
        });
    }
});



</script>

<script type="text/javascript">
	$('#id_form_registra').bootstrapValidator({
        message: 'El valor no es valido',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"numeroDocumento":{
        		selector : "#id_reg_numero_documento",
        		validators: {
        			notEmpty: {
        				message: 'El numero de identificacion es obligatorio'
        			},
        			stringLength :{
        				message: 'La cantidad de carateres en de 10',
        				min : 10,
        				max : 10
        			}
        		}
        	},
        	"nombre": {
        		selector : '#id_reg_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 2 a 100 caracteres',
                    	min : 2,
                    	max : 100
                    }
                }
            },
            "apellidos": {
        		selector : '#id_reg_apellido',
                validators: {
                    notEmpty: {
                        message: 'El apellido es obligatorio'
                    },
                    stringLength :{
                    	message:'Los apellidos pueden ser de 2 a 100 caracteres',
                    	min : 2,
                    	max : 100
                    }
                }
            },
            "fechaNacimiento": {
        		selector : '#id_reg_fecha_nacimiento',
                validators: {
                	notEmpty: {
                        message: 'La fecha de nacimiento es obliigatoria'
                    },
                }
            },
			"#id_edad": {
        		selector : '#id_edad',
                validators: {
                	notEmpty: {
                        message: 'Para ser un cliente viable se debe encontrar \r en etapa productiva'
                    },
					lessThan: {
		                value: 65,
		                inclusive: true,
		                message: 'La edad debe ser menor a 65'
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'La edad debe ser mayor a 18'
		            }
                }
            },
            "fk_ciudad.idCiudad": {
        		selector : '#id_reg_ciudad',
                validators: {
                	notEmpty: {
                        message: 'La ciudad de residencia es un campo obligatorio'
                    },
                }
            },
            "correo": {
        		selector : '#id_reg_correo',
                validators: {
                	notEmpty: {
                        message: 'El correo es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'el correo tiene un maximo de 50 caracteres',
                    	max : 100
                    }
                }
            },
            "telefono": {
        		selector : '#id_reg_telefono',
                validators: {
                	notEmpty: {
                        message: 'El telefono es un  campo obligatorio'
                    },
                    stringLength :{
                    	message:'El telefono debe ser de 10 caracteres',
                    	min : 10,
                    	max : 10
                    }
                }
            },
            "fk_ocupacion.idOcupacion": {
        		selector : '#id_reg_ocupacion',
                validators: {
                	notEmpty: {
                        message: 'La ocupacion es un campo obligatorio'
                    },
                }
            },
        	
        }   
    });
</script>

<script type="text/javascript">
	$('#id_form_actualiza').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"nombre": {
        		selector : '#id_act_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 2 a 100 caracteres',
                    	min : 2,
                    	max : 100
                    }
                }
            },
            "apellidos": {
        		selector : '#id_act_apellidos',
                validators: {
                    notEmpty: {
                        message: 'El apellido es obligatorio'
                    },
                    stringLength :{
                    	message:'Los apellidos pueden ser de 2 a 100 caracteres',
                    	min : 2,
                    	max : 100
                    }
                }
            },
            "fechaNacimiento": {
        		selector : '#id_act_fecha_nacimiento',
                validators: {
                	notEmpty: {
                        message: 'La fecha de nacimiento es obliigatoria'
                    },
                }
            },
			"#id_edad": {
        		selector : '#id_edad',
                validators: {
                	notEmpty: {
                        message: 'Para ser un cliente viable se debe encontrar \r en etapa productiva'
                    },
					lessThan: {
		                value: 65,
		                inclusive: true,
		                message: 'La edad debe ser menor a 65'
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'La edad debe ser mayor a 18'
		            }
                }
            },
            "fk_ciudad.idCiudad": {
        		selector : '#id_act_ciudad',
                validators: {
                	notEmpty: {
                        message: 'La fecha de nacimiento en un campo obligatorio'
                    },
                }
            },
            "correo": {
        		selector : '#id_act_correo',
                validators: {
                	notEmpty: {
                        message: 'La edad mínima es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'el correo tiene un maximo de 50 caracteres',
                    	max : 100
                    }
                }
            },
            "telefono": {
        		selector : '#id_act_telefono',
                validators: {
                	notEmpty: {
                        message: 'El telefono es un  campo obligatorio'
                    },
                    stringLength :{
                    	message:'El telefono debe ser de 10 caracteres',
                    	min : 10,
                    	max : 10
                    }
                }
            },
            "fk_ocupacion.idOcupacion": {
        		selector : '#id_act_ocupacion',
                validators: {
                	notEmpty: {
                        message: 'La ocupacion es un campo obligatorio'
                    },
                }
            },
        	
        }   
    });
</script>
    
</body>
</html> 