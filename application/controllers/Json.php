<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Json extends CI_Controller {

	public function index()
	{
				
	}

	public function post($id,$value)
	{
		$this->db->where('id_cell', $id);
		$this->db->update('cell', array('status' => $value));

		if ($value == "0") {
			$cek = $this->db->get_where('log', array('id_cell' => $id, 'status' => '0'))->num_rows();
			
			if (empty($cek)) {
				$this->db->insert('log', array(
					'date' => date('Y-m-d'),
					'id_cell' => $id,
					'time_out' => date('H:i:s')
				));							
			}
		}else{		
			$cek = $this->db->get_where('log', array('id_cell' => $id, 'status' => '0'));
			$data = $cek->row();

			if ($cek->num_rows() > 0) {				
				$this->db->where('id', $data->id);
				$this->db->update('log', array(
					'time_in' => date('H:i:s'),
					'status' => '1'
				));
			}
		}		


		echo json_encode(array('status' => TRUE));
	}

	public function get($id)
	{
		$data = $this->db->get_where('cell', array('id_cell' => $id))->row();
		echo json_encode($data);
	}
}

/* End of file Json.php */
/* Location: ./application/controllers/Json.php */