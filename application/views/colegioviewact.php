<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Colegio_PHP</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('resources/bootstrap.css') ?>">
</head>


<body>
<?php foreach ($docents as $p) : ?>
		
	
<div class="container">
<form method="POST" action="<?php echo base_url("colegiocontroller/actualizar")?>">
<input type="hidden" name="id" value="<?= $p->id_docente ?>">


<div class="row">
<div class="col-md-12">
<H3>Colegio_php</H3>
</div>	
</div>

<br>
<div class="row">
 <div class="col-md-3"></div>
 <div class="col-md-3">nombre</div>
 <div class="col-md-3">
 <input type="text" name="txtnomb" class="form-control" value="<?= $p->nombre ?>" >	
 </div>
 <div class="col-md-3"></div>
</div>

<br>
<div class="row">
 <div class="col-md-3"></div>
 <div class="col-md-3">apellido</div>
 <div class="col-md-3">
 <input type="text" name="txtapell" class="form-control" value="<?= $p->apellido ?>">	
 </div>
 <div class="col-md-3"></div>
</div>


<br>
<div class="row">
 <div class="col-md-3"></div>
 <div class="col-md-3">nip</div>
 <div class="col-md-3">
 <input type="number" name="txtnip" class="form-control" value="<?= $p->nip ?>">	
 </div>
 <div class="col-md-3"></div>
</div>

<br>
<div class="row">
 <div class="col-md-3"></div>
 <div class="col-md-3">correo</div>
 <div class="col-md-3">
 <input type="text" name="txtcorre" class="form-control" value="<?= $p->correo ?>" >	
 </div>
 <div class="col-md-3"></div>
</div>

<br>
<div class="row">
 <div class="col-md-3"></div>
 <div class="col-md-3">materia</div>
 <div class="col-md-3">
 <select name="cmbmate" class="form-control">
 <option>--Seleccione--</option>
 <?php foreach ($materia as $k) : ?>
 <option value="<?= $k->id_materia ?>" <?php echo $k->id_materia == $p->id_materia ? 'selected' : '' ?>><?= $k->materia ?></option>
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
 <select name="cmbsecci" class="form-control">
 <option>--Seleccione--</option>
 <?php foreach ($seccion as $s) : ?>
 <option value="<?= $s->id_seccion ?>" <?php echo $s->id_seccion == $p->id_seccion ? 'selected' : '' ?>><?= $s->secc ?></option>
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
 <input type="submit" name="btnactual" class="btn btn-block btn-info" value="actualizar" >	
 </div>
 <div class="col-md-3"></div>
</div>




</form>

</div>
<?php endforeach ; ?>
</body>
</html>