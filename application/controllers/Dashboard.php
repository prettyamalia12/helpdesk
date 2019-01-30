<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends Auth_Controller
{

		function __construct()
	{
	        parent::__construct();

	 
	/* Standard Libraries */
	$this->load->database();
	$this->load->helper('url');
	$this->load->model('Users_model');
    $this->load->model('Dashboard_model');
	/* ------------------ */    
	 
	$this->load->library('grocery_CRUD');    
	}

	
	
    public function index()
    {
    
    	$userId = $this->ion_auth->get_user_id();
    	$this->data['user']=$this->ion_auth->user()->row();
        log_message('INFO','is admin? :'.$this->ion_auth->is_admin());
        $this->data['user_group']= $this->ion_auth->get_users_groups($userId)->result();
        log_message('debug','User Group : '.print_r($this->data['user_group'],TRUE));
    	
    	$this->data['users_partner']=$this->Users_model->getUsersPartner($userId );
    	
    	log_message('INFO','User Id : '.$userId);


    	$crud = new grocery_CRUD();

		$crud->set_table('help_desk_report');
		//$crud->set_theme('bootstrap-v4');
		$crud->set_subject('HelpDesk Report');
	/*	$crud->fields('subject','reporting_type','description','last_update','create_date','created_by','process_by','urgent_level_id','solution_id','status_reporting_id');
		$crud->columns(array('subject','reporting_type','created_by','description','last_update','create_date','process_by','urgent_level_id','solution_id','status_reporting_id'));
		$crud->edit_fields(array('subject','description','last_update','create_date','reporting_type','process_by','urgent_level_id','solution_id','status_reporting_id'));
		$crud->set_relation('status_reporting_id','status_reporting','status');
		$crud->set_relation('solution_id','solution','nama');
		$crud->set_relation('urgent_level_id','urgent_level','nama');
		$crud->set_relation('reporting_type','reporting_type','name');
		*/ 
		
		$this->data['isAdmin']=TRUE;
          if($this->ion_auth->is_admin()===FALSE)
        {
			$user_groups = $this->ion_auth->get_users_groups($userId)->result();
			$this->data['isAdmin']=FALSE;
			log_message('DEBUG',$user_groups[0]->name);
			if (strpos($user_groups[0]->name, 'OPD') !== false) {
					
				log_message('DEBUG','inside Not Admin');
				
				$crud->fields('subject','reporting_type','description','picture','created_by');
				$crud->callback_field('created_by',array($this,'_callback_set_created_by'));
				$crud->where('created_by',$userId);
				$crud->unset_edit();
				$crud->unset_delete();
				$crud->set_relation('status_reporting_id','status_reporting','status');
				$crud->set_relation('solution_id','solution','nama');
				$crud->set_relation('reporting_type','reporting_type','name');
				$crud->set_relation('created_by','users','username');
				$crud->set_relation('process_by','groups','name');
				$crud->set_relation('urgent_level_id','urgent_level','nama');
				$crud->callback_after_insert(function ($post_array,$primary_key){
					
					log_message('debug',print_r($post_array,TRUE));
					$getNameProcessType = $this->Dashboard_model->getReportingTypeNameById($post_array['reporting_type']);
					log_message('debug',print_r($getNameProcessType,TRUE));
					$getRoleId = $this->Dashboard_model->getRoleIdByName($getNameProcessType);
					$arrayData = array('process_by'=>$getRoleId['id']);
					$this->Dashboard_model->updateReporting($primary_key,$arrayData);
					
					
				});
				$crud->set_field_upload('picture','assets/uploads/files');
				$crud->set_lang_string('form_save','Kirim Laporan')
                       ->set_lang_string('form_save_and_go_back','Kirim dan Kembali Ke Menu Sebelumnya');
				$output = $crud->render();
				$this->data['outputGrocery']=$output;
				$this->render('dashboard/member_index_view');
			}
			else{
				$crud->where('process_by',$user_groups[0]->id);
				$crud->fields('subject','reporting_type','description','last_update','create_date','created_by','process_by','urgent_level_id','solution_id','status_reporting_id');
				$crud->columns(array('subject','reporting_type','created_by','description','last_update','create_date','process_by','urgent_level_id','solution_id','status_reporting_id'));
				$crud->edit_fields(array('subject','description','last_update','create_date','reporting_type','process_by','urgent_level_id','solution_id','status_reporting_id'));
				$crud->set_relation('status_reporting_id','status_reporting','status');
				$crud->set_relation('solution_id','solution','nama');
				$crud->set_relation('urgent_level_id','urgent_level','nama');
				$crud->set_relation('reporting_type','reporting_type','name');	
				$crud->set_relation('created_by','users','username');
				$crud->set_relation('process_by','groups','name');
				$output = $crud->render();
				$this->data['outputGrocery']=$output;
				$this->render('dashboard/index_view');
			}
        }else
    	{
		$crud->fields('subject','reporting_type','description','last_update','create_date','created_by','process_by','urgent_level_id','solution_id','status_reporting_id');
		$crud->columns(array('subject','reporting_type','created_by','description','last_update','create_date','process_by','urgent_level_id','solution_id','status_reporting_id'));
		$crud->edit_fields(array('subject','description','last_update','create_date','reporting_type','process_by','urgent_level_id','solution_id','status_reporting_id'));
		$crud->set_relation('status_reporting_id','status_reporting','status');
		$crud->set_relation('solution_id','solution','nama');
		$crud->set_relation('urgent_level_id','urgent_level','nama');
		$crud->set_relation('reporting_type','reporting_type','name');	
		$crud->set_relation('created_by','users','username');
		$crud->set_relation('process_by','groups','name');
		$output = $crud->render();
		$this->data['outputGrocery']=$output;
        $this->render('dashboard/index_view');
        }
    }
	
	public function _callback_set_created_by($value,$row) {
		$userId = $this->ion_auth->get_user_id();
        return "<input id='field-created_by' name='created_by' type=\"hidden\" value='".$userId."' readonly='readonly' />";
    }
	

	public function groupManagement()
	{
		$crud = new grocery_CRUD();
		$crud->set_table('groups')
		->set_subject('Group Modification')
		->columns('name','description')
		->display_as('name','Nama Group')
		->display_as('description','Deskripsi Grup');


		$crud->fields('name','description');
		$output = $crud->render();

		if($this->ion_auth->is_admin()===FALSE)
		{
			log_message('DEBUG','inside Not Admin');
			//$this->render('dashboard/member_index_view');
			$this->load->view('dashboard/member_index_view');
		}else
		{
			//$this->render('dashboard/index_view');
			$this->load->view('dashboard/grid',$output);
		}
	}
	
	public function gridUserManagement()
	{
		$crud = new grocery_CRUD();

		$crud->set_table('users');
		$crud->set_theme('flexigrid');
		$crud->set_subject('Dashboard User');
		$crud->fields('username','nip','email','first_name','last_name','groups','phone','profile_pic');
		$crud->required_fields('username','password','nip','email','first_name','last_name','company','phone');
		$crud->add_fields(array('username','password','nip','email','first_name','last_name','groups','company','phone','instansi','profile_pic'));
		$crud->edit_fields(array('username','password','nip','email','first_name','last_name','groups','company','phone','instansi','profile_pic'));
		$crud->set_relation_n_n('instansi', 'users_instansi', 'instansi', 'users_id', 'instansi_id', 'instansi_name');
		$crud->set_relation_n_n('groups', 'users_groups', 'groups', 'user_id', 'group_id', 'name');
		$crud->columns(array('id','nip','username','email','profile_pic','first_name','last_name'));
		$crud->field_type('password', 'password');
		$crud->set_field_upload('profile_pic','assets/uploads/files');
		$crud->callback_insert(function ($post_array) {
			$username = $post_array['username'];
			$password = $post_array['password'];
			$email = $post_array['email'];
			$data = array(
				'phone' => $post_array['phone'],
				'first_name' => $post_array['first_name'],
				'last_name' => $post_array['last_name'],
				'company' =>$post_array['company'],
				'profile_pic' =>$post_array['profile_pic'],
				'nip' =>$post_array['nip']
			);


			$insertId=  $this->ion_auth_model->register($username, $password, $email, $data);

			log_message('debug','Got last InsertId :'.$insertId);


			log_message('debug',print_r($post_array['instansi'],TRUE));
			$arrayInsertinstansi = array();
			$arrayInsertGroup = array();


			foreach($post_array['instansi']as $v)
			{
				$arrayPush = array('users_id'=>$insertId,'instansi_id'=>$v);
				array_push($arrayInsertinstansi,$arrayPush);
			}
			log_message('debug','iniloh Array Instansi '.print_r($arrayInsertinstansi,TRUE));


			foreach($post_array['groups']as $v)
			{
				$arrayPush = array('user_id'=>$insertId,'group_id'=>$v);
				array_push($arrayInsertGroup,$arrayPush);
			}
			log_message('debug','iniloh Array userGroup '.print_r($arrayInsertGroup,TRUE));

			$this->Users_model->insertUser_instansiBatch($arrayInsertinstansi);
			$this->Users_model->insertUser_groupsBatch($arrayInsertGroup);

			return $insertId;

		});

		$crud->callback_edit_field('password',function($value,$primary_key)
		{
			return '<input id="field-password" class="form-control" name="password" type="password" value="" maxlength="255" placeholder="Please Reinput Your Password">';
		});

		$crud->callback_update(
			function($post_array,$primary_key)
			{
				$data = array(
					'username' => $post_array['username'],
					'email' => $post_array['email'],
					'phone' => $post_array['phone'],
					'first_name' => $post_array['first_name'],
					'last_name' => $post_array['last_name'],
					'company' => $post_array['company'],
					'password' => $post_array['password'],
					'profile_pic' => $post_array['profile_pic'],
					'nip'=> $post_array['nip'],
				);
				log_message('debug',print_r($post_array['instansi'],TRUE));
				$arrayInsert = array();
				$arrayInsertGroup = array();
				foreach($post_array['instansi']as $v)
				{
					$arrayPush = array('users_id'=>$primary_key,'instansi_id'=>$v);
					array_push($arrayInsert,$arrayPush);
				}

				foreach($post_array['groups']as $v)
				{
					$arrayPush = array('user_id'=>$primary_key,'group_id'=>$v);
					array_push($arrayInsertGroup,$arrayPush);
				}



				$this->Users_model->updateUser_instansiBatch($arrayInsert,$primary_key);
				$this->Users_model->updateUser_groupsBatch($arrayInsertGroup,$primary_key);




				$this->ion_auth_model->update($primary_key, $data);

				return true;

			});

			$output = $crud->render();
			$this->load->view('dashboard/grid',$output);
		}
	
    public function uploadDirectPush()
    {
        $sms=$this->input->post('sms');
        $sid=$this->input->post('sid');
        $shortcode=$this->input->post('shortcode');
        $file = $_FILES['upload']['tmp_name'];
    }
	public function referensi()
	{
		$userId = $this->ion_auth->get_user_id();
    	$this->data['user']=$this->ion_auth->user()->row();
        log_message('INFO','is admin? :'.$this->ion_auth->is_admin());
        $this->data['user_group']= $this->ion_auth->get_users_groups($userId)->result();
        log_message('debug','User Group : '.print_r($this->data['user_group'],TRUE));
    	
    	$this->data['users_partner']=$this->Users_model->getUsersPartner($userId );
    	
    	log_message('INFO','User Id : '.$userId);
		
		$this->data['isAdmin']=TRUE;

    	

          if($this->ion_auth->is_admin()===FALSE)
        {
            log_message('DEBUG','inside Not Admin');
			$this->data['isAdmin']=TRUE;
             $this->render('dashboard/referensi');
        }else
    	{
		
        $this->render('dashboard/referensi');
        }
	}
	public function status_reporting()
	{
		$crud = new grocery_CRUD();
 
		$crud->set_table('status_reporting');
		$crud->fields('id','status');
		
		$crud->set_subject('Referensi Status Reporting');
		
		
		$output = $crud->render();
		 
			
		//$output = $crud->render();

		if($this->ion_auth->is_admin()===FALSE)
		{
			$this->load->view('dashboard/grid',$output);
		}else
		{
			//$this->render('dashboard/index_view');
			$this->load->view('dashboard/grid',$output);
		}
	}
	public function urgent_level()
	{
		$crud = new grocery_CRUD();
 
		$crud->set_table('urgent_level');
		$crud->fields('id','level','nama','last_update');
		
		$crud->set_subject('Referensi Level Urgent');
		
		
		$output = $crud->render();
		 
			
		//$output = $crud->render();

		if($this->ion_auth->is_admin()===FALSE)
		{
			$this->load->view('dashboard/grid',$output);
		}else
		{
			//$this->render('dashboard/index_view');
			$this->load->view('dashboard/grid',$output);
		}
	}
	public function solution()
	{
		$crud = new grocery_CRUD();
 
		$crud->set_table('solution');
		$crud->fields('id','nama');
		$crud->columns(array('id','nama'));
		$crud->edit_fields(array('id','nama'));
		$crud->set_subject('Referensi Solution');
		
		
		$output = $crud->render();
		 
			
		//$output = $crud->render();

		if($this->ion_auth->is_admin()===FALSE)
		{
			$this->load->view('dashboard/grid',$output);
		}else
		{
			//$this->render('dashboard/index_view');
			$this->load->view('dashboard/grid',$output);
		}
	}
	public function reporting_type()
	{
		$crud = new grocery_CRUD();
 
		$crud->set_table('reporting_type');
		$crud->fields('idreporting_type','name');
		$crud->columns(array('idreporting_type','name'));
		$crud->edit_fields(array('idreporting_type','name'));
		$crud->set_subject('Referensi Reporting Type');
		
		
		$output = $crud->render();
		 
			
		//$output = $crud->render();

		if($this->ion_auth->is_admin()===FALSE)
		{
			$this->load->view('dashboard/grid',$output);
		}else
		{
			//$this->render('dashboard/index_view');
			$this->load->view('dashboard/grid',$output);
		}
	}

    public function uploadExcel()
    {
		log_message('DEBUG','Try To Upload');
        $file = $_FILES['upload']['tmp_name'];
        $partner = $this->input->post('partner');
        $tipe = $this->input->post('tipeDokumen');
		$nama = $this->input->post('namaDokumen');
		$desc = $this->input->post('keteranganDokumen');
		$type=$this->input->post('type');
		log_message('DEBUG','Type : '.$type);
		$config['upload_path']          = 'assets/uploads/';
        $config['allowed_types']        = 'pdf|doc|docx';
        
		$this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('upload'))
        {
            $error = array('error' => $this->upload->display_errors());
            $this->load->view('upload_form', $error);
        }
        else
        {
            $data = array('upload_data' => $this->upload->data());
           // $this->load->view('upload_success', $data);
		   log_message('debug',$this->upload->data('file_name'));
		   $path = $this->upload->data('file_name');
			log_message('debug',$path);
				   $data = array(
				'nama' => $nama,
				'keterangan' => $desc,
				'tipe' => $type,
				'status' => 0,
				'uploadBy' =>$this->ion_auth->get_user_id(),
				'path'=>$path
				);
				$this->Dashboard_model->insertDokumen($data);
        }		

            echo 'Upload Success';
        
    }

}