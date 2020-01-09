<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class colegiomodel extends CI_Model{

	
	public function get_docentes(){
     $this->db->select('d.id_docente,d.nombre,d.apellido,d.nip,d.correo,m.materia,s.seccion,e.especialidad');
     $this->db->from('docentes d');
     $this->db->join('materia m','d.id_materia= m.id_materia'); 
	 $this->db->join('secciones s','d.id_seccion= s.id_seccion');
     $this->db->join('especialidad e','s.id_especialidad= e.id_especialidad');
     
	 
	 $dbo = $this->db->get();
     return $dbo->result(); 

	}

        
    public function get_materia(){
     $dbo = $this->db->get('materia');    
     return $dbo->result();
    
    }
    
      public function get_seccion(){
        $this->db->select('concat(s.seccion," ",e.especialidad) as secc,s.id_seccion');
        $this->db->from('secciones s ');
        $this->db->join('especialidad e','e.id_especialidad = s.id_especialidad');
        
        $exe = $this->db->get();
        return $exe->result();
    }


    
    public function set_docentes($datos){
    $this->db->set('nombre', $datos['nombre']);
    $this->db->set('apellido', $datos['apellido']);
    $this->db->set('nip', $datos['nip']);
    $this->db->set('correo', $datos['correo']);
    $this->db->set('id_materia', $datos['materia']);
    $this->db->set('id_seccion', $datos['seccion']);
    $this->db->insert('docentes'); 
    
   }



    public function eliminar($id){
     $this->db->where('id_docente',$id);
     return ($this->db->delete('docentes'));     
      
    }

     
    public function get_dbodocentes($id){
    $this->db->where('id_docente',$id); 
     $dbo = $this->db->get('docentes');
     return $dbo->result(); 
                                               
    }
    
    public function set_update($datos){
    $this->db->set('nombre', $datos['nombre']);
    $this->db->set('apellido', $datos['apellido']);
    $this->db->set('nip', $datos['nip']);
    $this->db->set('correo', $datos['correo']);
    $this->db->set('id_materia', $datos['materia']);
    $this->db->set('id_seccion', $datos['seccion']);
    $this->db->where('id_docente', $datos['id']);
    $this->db->update('docentes');


    }




}
