<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Secciones</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("resources/bootstrap.css")?>">
	<script type="text/javascript" src="<?php echo base_url('resources/validarseccion.js') ?>" ></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
</head>
<body>
<div class="container">
<form method="POST" action="<?php echo base_url("seccioncontroller/ingresar")?>" onsubmit="return validarseccion()">


<div class="row">
<div class="col-md-12">
<H3>secciones</H3>	
</div>	
</div>	

<div class="row">
<div class="col-md-3">Cantidad de alumnos</div>
<div class="col-md-3">
<input type="number" name="cant" id="canti" class="form-control">	
</div>	
<div class="col-md-3"></div>
<div class="col-md-3"></div>
</div>



<br>
<div class="row">
<div class="col-md-3">Equipacion</div>
<div class="col-md-3">
<input type="text" name="equip" id="equipo" class="form-control">	
</div>
<div class="col-md-3"></div>
<div class="col-md-3"></div>
</div>

<br>
<div class="row">
<div class="col-md-3">secciones</div>
<div class="col-md-3">
<select class="form-control" id="seccio" name="seccio">
<option value="0">--seleccione--</option>
<?php foreach ($secci as $k) : ?>
<option value="<?= $k->id_seccion ?>"><?= $k->secc ?></option>
<?php endforeach ; ?>	
</select>	
</div>
<div class="col-md-3"></div>
<div class="col-md-3"></div>
</div>



<br>
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-3">
<input type="submit" name="btnguardar" id="guardar" class="btn btn-danger" value="guardar">	
</div>	
<div class="col-md-3"></div>
<div class="col-md-3"></div>
</div>



<br><br>
<div class="row">
<div class="col-md-12">
<table class="table table-dark">	
<thead>
<th scope="col">N°</th>
<th scope="col">Cantidad de alumnos</th>
<th scope="col">Equipacion</th>	
<th scope="col">Seccion</th>
<th scope="col">Eliminar</th>
<th scope="col">Actualizar</th>
</thead>

<tbody>
<?php
$n = 1; 
foreach ($aulas as $k) : ?>
<tr>
<td><?= $n; $n++; ?></td>
<td><?= $k->cantidad_alumnos ?>
<td><?= $k->equipacion ?>	
<td><?= $k->seccion." ".$k->especialidad ?></td>

<td><button type="button" class="btn btn-outline-danger" onclick="alerta_eliminar(<?= $k->id_aulas; ?>)"><a style="color: white;">Eliminar</a></button></td>
<td>
<a href="<?php echo base_url("seccioncontroller/get_dtsaulas/".$k->id_aulas ) ?>" class="btn btn-block btn-outline-info ">Actualizar</a>	
</td>


</tr>	
<?php endforeach ; ?>	
</tbody>
	
</table>	
</div>	
</div>	



</form>
</div>

<?php $this->load->view('alertas/alertsseccion.php') ?>
</body>
</html>