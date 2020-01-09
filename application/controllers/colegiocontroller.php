<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class colegiocontroller extends CI_Controller {

    public function __construct(){
       parent:: __construct();
      
      $this->load->model('colegiomodel');
    }
	
	public function index(){
		$datos['docentes'] = $this->colegiomodel->get_docentes();
		$datos['materia'] = $this->colegiomodel->get_materia();
		$datos['seccion'] = $this->colegiomodel->get_seccion(); 
        
        
		$this->load->view('colegioview',$datos);
	}
     
    public function ingresar(){
    $datos['nombre'] = $_POST['txtnomb'];
    $datos['apellido'] = $_POST['txtapell'];
    $datos['nip'] = $_POST['txtnip'];
    $datos['correo'] = $_POST['txtcorre'];
    $datos['materia'] = $_POST['cmbmate'];
    $datos['seccion'] = $_POST['cmbsecci'];
   

    $this->colegiomodel->set_docentes($datos);
     redirect('/colegiocontroller/index/','refresh'); 
    }



    public function eliminar($id){
     $this->colegiomodel->eliminar($id);
     redirect('/colegiocontroller/index/','refresh');
    
    }

    
   public function get_dbdocentes($id){
    $datos['docents'] = $this->colegiomodel->get_dbodocentes($id);
    $datos['materia'] = $this->colegiomodel->get_materia();
    $datos['seccion'] = $this->colegiomodel->get_seccion(); 
     
     $this->load->view('colegioviewact',$datos);    

   }
   
   public function actualizar(){
    $datos['id'] = $_POST['id'];
    $datos['nombre'] = $_POST['txtnomb'];
    $datos['apellido'] = $_POST['txtapell'];
    $datos['nip'] = $_POST['txtnip'];
    $datos['correo'] = $_POST['txtcorre'];
    $datos['materia'] = $_POST['cmbmate'];
    $datos['seccion'] = $_POST['cmbsecci'];
    $this->colegiomodel->set_update($datos);
    redirect('/colegiocontroller/index/','refresh');
   }



}
