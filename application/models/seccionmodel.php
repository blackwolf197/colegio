<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class seccionmodel extends CI_Model{

    public function get_dbaulas(){
     $this->db->select('a.id_aulas,a.cantidad_alumnos,a.equipacion,s.seccion,e.especialidad');
     $this->db->from('dbaulas a');
     $this->db->join('secciones s','a.id_seccion= s.id_seccion');
     $this->db->join('especialidad e','s.id_especialidad= e.id_especialidad');
     
      $dbo = $this->db->get();
      return $dbo->result();

    }

    public function get_seccion(){
        $this->db->select('concat(s.seccion," ",e.especialidad) as secc,s.id_seccion');
        $this->db->from('secciones s ');
        $this->db->join('especialidad e','e.id_especialidad = s.id_especialidad');
        
        $exe = $this->db->get();
        return $exe->result();
    }


   
    
    public function set_dbaulas($datos){
     $this->db->set('cantidad_alumnos', $datos['cantidad'] );
     $this->db->set('equipacion', $datos['equipo'] );
     $this->db->set('id_seccion',  $datos['seccion']);
     //$this->db->set('id_especialidad',  $datos['especia']);
     $this->db->insert('dbaulas'); 
    
    }

    public function eliminar($id){
     $this->db->where('id_aulas', $id);
     $dbo = $this->db->delete('dbaulas');
     return $dbo;
    }
 
    public function get_elementdbaulas($id){
     $this->db->where('id_aulas', $id);
     $dbo = $this->db->get('dbaulas');
     return $dbo->result(); 
    }
    

    public function set_update($datos){
     $this->db->set('cantidad_alumnos', $datos['cantidad'] );
     $this->db->set('equipacion', $datos['equipo'] );
     $this->db->set('id_seccion',  $datos['seccion']);
     //$this->db->set('id_especialidad',  $datos['especia']);
     $this->db->where('id_aulas', $datos['id']);
     $this->db->update('dbaulas');
     
    }



}
