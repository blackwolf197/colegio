<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Colegio_PHP</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('resources/bootstrap.css') ?>">
	<script type="text/javascript" src="<?php echo base_url('resources/validacion.js') ?>" ></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
</head>


<body>
<div class="container">
<form method="POST" action="<?php echo base_url("colegiocontroller/ingresar")?>" onsubmit="return validardocentes()">

<div class="row">
<div class="col-md-12">
<H3>Docentes</H3>
</div>	
</div>

<br>
<div class="row">
 <div class="col-md-3"></div>
 <div class="col-md-3">nombre</div>
 <div class="col-md-3">
 <input type="text" id="nomb" name="txtnomb" class="form-control">	
 </div>
 <div class="col-md-3"></div>
</div>

<br>
<div class="row">
 <div class="col-md-3"></div>
 <div class="col-md-3">apellido</div>
 <div class="col-md-3">
 <input type="text" id="apell" name="txtapell" class="form-control">	
 </div>
 <div class="col-md-3"></div>
</div>


<br>
<div class="row">
 <div class="col-md-3"></div>
 <div class="col-md-3">nip</div>
 <div class="col-md-3">
 <input type="number" id="nip" name="txtnip" class="form-control">	
 </div>
 <div class="col-md-3"></div>
</div>

<br>
<div class="row">
 <div class="col-md-3"></div>
 <div class="col-md-3">correo</div>
 <div class="col-md-3">
 <input type="text" id="correo" name="txtcorre" class="form-control"  >	
 </div>
 <div class="col-md-3"></div>
</div>

<br>
<div class="row">
 <div class="col-md-3"></div>
 <div class="col-md-3">materia</div>
 <div class="col-md-3">
 <select id="mate" name="cmbmate"  class="form-control">
 <option value="0">--Seleccione--</option>
 <?php foreach ($materia as $k) : ?>
 <option value="<?= $k->id_materia ?>"><?= $k->materia ?></option>
 <?php endforeach ; ?> 	 	
 </select>	
 </div>
 <div class="col-md-3"></div> 
</div>

<br>

	

<div class="row">
 <div class="col-md-3"></div>
 <div class="col-md-3">seccion</div>
 <div class="col-md-3">
 <select id="secci" name="cmbsecci" class="form-control">
 <option value="0">--Seleccione--</option>
 <?php foreach ($seccion as $k) : ?>
 <option value="<?= $k->id_seccion ?>"><?= $k->secc ?></option>
 <?php endforeach ; ?> 	 	
 </select>	
 </div>
 <div class="col-md-3"></div>
</div>
  
 


<br>
<div class="row">
 <div class="col-md-3"></div>
 <div class="col-md-3"></div>
 <div class="col-md-3">
 <input type="submit" name="btnguardar" class="btn btn-block btn-info" value="guardar">	
 </div>
 <div class="col-md-3"></div>
</div>


<br>
<div class="row">
<div class="col-md-12">
<table class="table table-dark">	
<thead>
<th scope="col">N°</th>
<th scope="col">Nombre</th>
<th scope="col">Apellido</th>
<th scope="col">Nip</th>
<th scope="col">Correo</th>
<th scope="col">Materia</th>
<th scope="col">Seccion</th>
<th scope="col">Eliminar</th>
<th scope="col">Actualizar</th>

</thead>
<tbody>
<?php
$n = 1; 
foreach ($docentes as $k) : ?>
<tr>
<td><?= $n; $n++; ?></td>	
<td><?= $k->nombre ?></td>
<td><?= $k->apellido ?></td>
<td><?= $k->nip ?></td>
<td><?= $k->correo ?></td>
<td><?= $k->materia ?></td>
<td><?= $k->seccion." ".$k->especialidad ?></td>

<td><button type="button" class="btn btn-outline-danger" onclick="alerta_eliminar(<?= $k->id_docente; ?>)"><a style="color: white;">Eliminar</a></button></td>

<td>
<a href="<?php echo base_url('colegiocontroller/get_dbdocentes/'.$k->id_docente) ?>" class="btn btn-block btn-outline-info ">Actualizar</a>	
</td>
	
</tr>	
<?php endforeach ; ?>	
</tbody>

</table>

</div>	
</div>







</form>
</div>

<?php $this->load->view('alertas/alertscolegio.php') ?>
</body>
</html>

