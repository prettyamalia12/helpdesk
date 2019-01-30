<?php
class Users_model extends CI_Model {


		function __construct() {
			parent::__construct();
			
		}


		public function getUsersPartner($user_id)
		{
		$querySQL = "select u.username,p.partner_name,p.partner_alias from  users_partner up , partner p , users u where u.id=up.users_id and p.partner_id = up.partner_id and up.users_id=$user_id";

		$data = array();
		$stackData = array();

		log_message('debug','getUsersPartner: '.$querySQL);
		$query = $this->db->query($querySQL);

		if($query->num_rows()>0)
			{ $count = 1;
				foreach($query->result() as $row)
				{
					$data['username']=$row->username;
					$data['partner_name']=$row->partner_name;
					$data['partner_alias']=$row->partner_alias;

					array_push($stackData,$data);
				}
				$query->free_result();    
				return $stackData;
			}else
			{

				$query->free_result();    
				return $data;
			}	
		}


		public function insertUser_instansiBatch($arrayData)
		{
			
			$this->db->insert_batch('users_instansi', $arrayData);
		}
		public function insertUser_groupsBatch($arrayData)
		{
			$this->db->insert_batch('users_groups', $arrayData);
		}
		public function updateUser_instansiBatch($arrayData,$primaryKey)
		{
			$this->db->delete('users_instansi', array('users_id' => $primaryKey));
			log_message('debug',$this->db->last_query());
			$this->db->insert_batch('users_instansi', $arrayData);
		}
		public function updateUser_groupsBatch($arrayData,$primaryKey)
		{
			$this->db->delete('users_groups', array('user_id' => $primaryKey));
			log_message('debug',$this->db->last_query());
			$this->db->insert_batch('users_groups', $arrayData);
		}




	}