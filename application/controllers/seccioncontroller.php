<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class seccioncontroller extends CI_Controller {

    public function __construct(){
    parent:: __construct();

    $this->load->model('seccionmodel');
    }

 	
 	public function index(){
	$datos['aulas'] = $this->seccionmodel->get_dbaulas();
	$datos['secci'] = $this->seccionmodel->get_seccion();
	//$datos['especi'] = $this->seccionmodel->get_especialidad();	
	
	$this->load->view('seccionview',$datos);
	
	}

    public function ingresar(){
    $datos['cantidad'] = $_POST['cant'];
    $datos['equipo'] = $_POST['equip'];
    $datos['seccion'] = $_POST['seccio'];
    //$datos['especia'] = $_POST['especi'];

    $this->seccionmodel->set_dbaulas($datos);
    redirect('/seccioncontroller/index/','refresh'); 

    }
    
    public function eliminar($id){
     $this->seccionmodel->eliminar($id);
     redirect('/seccioncontroller/index/','refresh'); 
    }

    public function get_dtsaulas($id){
     $datos['aulas'] = $this->seccionmodel->get_elementdbaulas($id);
	 $datos['secci'] = $this->seccionmodel->get_seccion();
	//$datos['especi'] = $this->seccionmodel->get_especialidad();	
	
	$this->load->view('seccionviewact',$datos);

    }
   
    public function actualizar(){
    $datos['id'] = $_POST['id'];
    $datos['cantidad'] = $_POST['cant'];
    $datos['equipo'] = $_POST['equip'];
    $datos['seccion'] = $_POST['seccio'];
    //$datos['especia'] = $_POST['especi'];

    $this->seccionmodel->set_update($datos);
    redirect('/seccioncontroller/index/','refresh'); 

    } 



}
