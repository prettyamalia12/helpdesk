<?php
class Dashboard_model extends CI_Model {


		function __construct() {
			parent::__construct();
			
		}



		public function insertBatch($partnerDB,$table,$arrayData)
		{
			$db2 = $this->load->database($partnerDB,true);
			$db2->insert_batch($table, $arrayData); 
		}
		
	public function getReportingTypeNameById($key)
		{
			$querySQL = "select * from reporting_type where idreporting_type = $key";
			log_message('debug','Query getReportingTypeNameById:  '.$querySQL);
			$data = array();
			$stackData = array();
			$query = $this->db->query($querySQL);

			if($query->num_rows()>0)
				{ $count = 1;
					foreach($query->result() as $row)
					{
						$data['name']=$row->name;
					}
					$query->free_result();
					return $data;
				}else
				{

					$query->free_result();
					return $data;
				}
		}
		public function getRoleIdByName($key)
		{
			$querySQL = "select * from groups where name like '%".$key['name']."%'";
			log_message('debug','Query getRoleIdByName:  '.$querySQL);
			$data = array();
			$stackData = array();
			$query = $this->db->query($querySQL);

			if($query->num_rows()>0)
				{ $count = 1;
					foreach($query->result() as $row)
					{
						$data['id']=$row->id;
					}
					$query->free_result();
					return $data;
				}else
				{

					$query->free_result();
					return $data;
				}
		}
		
		public function updateReporting($id,$data)
		{
			log_message('debug',$id.' Updating report with '.print_r($data,TRUE));
			$this->db->where('idreport', $id);
			$this->db->update('help_desk_report', $data);
		}	
	public function getCountNotifaction($id=0)
		{

		$querySQL = "SELECT count(*)as recordsTotal FROM dokumen where uploadDate  <= CURDATE() + INTERVAL -2 DAY and status = 0";
		if($id>0)
		{
			$querySQL = "SELECT count(*)as recordsTotal FROM dokumen where uploadDate  <= CURDATE() + INTERVAL -2 DAY and status = 0 and uploadBy = $id";
		}

		$recordsTotal=0;

		log_message('debug','getCountNotifaction	: '.$querySQL);
		$query = $this->db->query($querySQL);

		if($query->num_rows()>0)
			{ $count = 1;
				foreach($query->result() as $row)
				{
					$recordsTotal=$row->recordsTotal;
				}
				$query->free_result();

				return $recordsTotal;
			}else
			{

				$query->free_result();
				return $recordsTotal;
			}
		}	
	public function insertDokumen($data)
	{
		

		$this->db->insert('dokumen', $data);
	}

	}