<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cell extends CI_Controller {

	public function index($id,$label)
	{
		$get = $this->db->get_where('cell', array('id_cell' => $id))->row();		
		if ($get->status == "0") {
			$data['show'] = '<div class="zoom-effect">
            	<div class="kotak">
           			<div class="box-p"><button type="button" class="boxfalse btn btn-lg" data-toggle="modal" data-target="#menu-2">Cell '.$label.'</button>
           			</div>
            	</div>
        	</div>';
		}else{
			$data['show'] = '<div class="zoom-effect">
            	<div class="kotak">
           			<div class="box-p"><button type="button" class="boxtrue btn btn-lg" data-toggle="modal" data-target="#menu-2">Cell '.$label.'</button>
    	       		</div>
	            </div>
        	</div>';
		}

		$this->load->view('cell', $data);
	}

}

/* End of file Cell.php */
/* Location: ./application/controllers/Cell.php */