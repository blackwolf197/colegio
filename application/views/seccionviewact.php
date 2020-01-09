<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Secciones</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("resources/bootstrap.css")?>">
</head>
<body>
<?php foreach ($aulas as $act) : ?>

<div class="container">
<form method="POST" action="<?php echo base_url("seccioncontroller/actualizar")?>">
	<input type="hidden" name="id" value="<?= $act->id_aulas ?>">


<div class="row">
<div class="col-md-12">
<H3>secciones</H3>	
</div>	
</div>	

<div class="row">
<div class="col-md-3">Cantidad alumnos</div>
<div class="col-md-3">
<input type="number" name="cant" id="cant" class="form-control" value="<?= $act->cantidad_alumnos ?>">	
</div>	
<div class="col-md-3"></div>
<div class="col-md-3"></div>
</div>



<br>
<div class="row">
<div class="col-md-3">Equipacion</div>
<div class="col-md-3">
<input type="text" name="equip" class="form-control" value="<?= $act->equipacion ?>">	
</div>
<div class="col-md-3"></div>
<div class="col-md-3"></div>
</div>

<br>
<div class="row">
<div class="col-md-3">secciones</div>
<div class="col-md-3">
<select class="form-control" id="seccio" name="seccio">
<option>--seleccione--</option>
<?php foreach ($secci as $k) : ?>
<option value="<?= $k->id_seccion ?>" <?= $k->id_seccion == $act->id_seccion ? 'selected' : '' ?> ><?= $k->secc?></option>
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
<input type="submit" name="btnactualizar"  id="actualizar" class="btn btn-danger" value="actualizar">	
</div>	
<div class="col-md-3"></div>
<div class="col-md-3"></div>
</div>






</form>
</div>
<?php endforeach ; ?>
</body>
</html>