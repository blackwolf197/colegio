function validarseccion(){

 var cantidad = document.getElementById('canti').value; 
 var equipon = document.getElementById('equipo').value;
 var seccion = document.getElementById('seccio').selectedIndex;

  

  if (isNaN(cantidad) || cantidad.length == 0 ){
document.getElementById("canti").style.boxShadow ="0 0 15px red";
document.getElementById("equipo").placeholder = "ingrese una cantidad";
return false;

}else{
document.getElementById("canti").style.boxShadow = "0 0 15px green";
}


 if(equipon.length == 0){
  document.getElementById("equipo").style.boxShadow = "0 0 15px red";
  document.getElementById("equipo").placeholder = "Ingrese equipacion";
 	return false;

 }else{
 document.getElementById("equipo").style.boxShadow = "0 0 15px green";
 }


if (seccion == 0){
document.getElementById("seccio").style.boxShadow = "0 0 15px red";
return false;
}else{

document.getElementById("seccio").style.boxShadow = "0 0 15px green";	
}

return true;

}