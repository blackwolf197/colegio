function validardocentes(){

 var nombre = document.getElementById('nomb').value; 
 var apellido = document.getElementById('apell').value;
 var nip = document.getElementById('nip').value;
 var correo = document.getElementById('correo').value; 
 var materia = document.getElementById('mate').selectedIndex; 
 var seccion = document.getElementById('secci').selectedIndex;
 
 if(nombre.length == 0){
  document.getElementById("nomb").style.boxShadow = "0 0 15px red";
  document.getElementById("nomb").placeholder = "Debe escribir nombre";
 	return false;

 }else{
 document.getElementById("nomb").style.boxShadow = "0 0 15px green";
 }

if (apellido.length == 0){
document.getElementById("apell").style.boxShadow = "0 0 15px red";
document.getElementById("apell").placeholder = "Debe escribir un apellido";	
return false;

}else{
document.getElementById("apell").style.boxShadow = "0 0 15px green";	
}
if (isNaN(nip) || nip.length == 0 ){
document.getElementById("nip").style.boxShadow ="0 0 15px red";
return false;

}else{
document.getElementById("nip").style.boxShadow = "0 0 15px green";
}

if( !(/\S+@\S+\.\S+/.test(correo))){
 document.getElementById("correo").style.boxShadow = "0 0 15px red"; 
 document.getElementById("correo").placeholder = "Debe escribir un correo valido";
 return false;

 }else{

 document.getElementById("correo").style.boxShadow = "0 0 15px green";
 }

if (materia == 0){
document.getElementById("mate").style.boxShadow = "0 0 15px red";
return false;

}else{

document.getElementById("mate").style.boxShadow = "0 0 15px green";	
}

if (seccion == 0){
document.getElementById("secci").style.boxShadow = "0 0 15px red";
return false;
}else{

document.getElementById("secci").style.boxShadow = "0 0 15px green";	
}

return true;

}

   
 


