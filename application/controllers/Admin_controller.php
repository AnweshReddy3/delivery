<?php
class Admin_controller extends CI_Controller {

	public function __construct(){
        parent::__construct();
        $this->load->model("Admin_model");
		$this->load->library('form_validation');
		
 		//$this->load->view('start');
    }

    public function index() {
		$this->form_validation->set_rules('username', 'Username', 'required|min_length[5]');
		$this->form_validation->set_rules('password', 'Password', 'required|min_length[4]|alpha_dash');
          if ($this->form_validation->run() == FALSE)
                {
                	$this->login();
                }
                else
                {
			  		$username = $this->input->post('username');
			  		$password = $this->input->post('password');
					
					//checking the login details with role based login from the backend
					if($data = $this->Admin_model->check_login_details($username, $password)) {
						$this->session->set_userdata('id', $data->id);

						if($data->status == 1) {
							$this->Admin_view();
						}
						else {
							$this->delivery_boy_dashboard();
						}
					}
					else {
						echo "Please Register and then login";
					}
                }
    }
	
	public function login() {
		$this->load->view('login');
	}
	
	public function delivery_boy_dashboard() {
		$this->load->view('delivery_boy_dashboard');
	}
	
	public function admin_view() {
		$id = $this->session->userdata('id');
		if($id){
        	$this->load->view("Admin_view");
		}
		else {
			redirect("Admin_controller/");
		}
    }
    
    public function admin_category() {
		$id = $this->session->userdata('id');
		if($id){
			$data = $this->Admin_model->fetch_category_items();
			$this->load->view('admin_category', array('data' =>$data));
    	}
    	else {
			
		}
	}
	
    public function admin_category_edit($edit) {
		$id = $this->session->userdata('id');
		if($id){
        	$this->load->view('admin_category_edit', array('edit' => $edit));
		}
		else {
			redirect("Admin_controller/");
		}
    }
    
    public function menu_item() {
		$id = $this->session->userdata('id');
		if($id){
        	$data = $this->Admin_model->fetch_menu_items();
        	$this->load->view('menu_item', array('data' => $data));
		}
		else {
			redirect("Admin_controller/");
		}
    }
    
    public function admin_menu_edit($edit) {
		$id = $this->session->userdata('id');
		if($id) {
        	$this->load->view('admin_menu_edit', array('edit' => $edit));
		}
		else {
			redirect("Admin_controller/");
		}
    }
    
    public function admin_top_cat() {
		$id = $this->session->userdata('id');
		if($id) {
        	$data = $this->Admin_model->fetch_top_cat();
        	$this->load->view('admin_top_cat', array('data' => $data));
		}
		else {
			redirect("Admin_controller/");
		}
    }
	
	public function edit_top_cat($edit) {
		$id = $this->session->userdata('id');
		if($id){
			$this->load->view('admin_edit_top_cat', array('edit' => $edit));
		}
		else {
			redirect("Admin_controller/");
		}
	}
    
	public function admin_topping($id) {
		$data = $this->Admin_model->fetch_topping($id);
		$this->load->view('admin_topping',array('id' => $id, 'data' => $data));
			
	}
	
	public function admin_topping_edit($edit) {
		$this->load->view('admin_topping_edit', array('edit' => $edit));
	}
	
	public function users() {
		$id = $this->session->userdata('id');
		if($id){
			$data = $this->Admin_model->users();
			$this->load->view('users', array('data' => $data));
		}
		else {
			redirect("Admin_controller/");
		}
	}
	
	public function delivery_boy() {
		$id = $this->session->userdata('id');
		if($id){
			$data = $this->Admin_model->fetch_delivery_boy_details();
			$this->load->view('delivery_boy', array('data' => $data));
		}
		else {
			redirect("Admin_controller/");
		}
	}
	
	public function delivery_boy_edit($edit) {
		$id = $this->session->userdata('id');
		if($id){
			$this->load->view('delivery_boy_edit', array('edit' => $edit));
		}
		else {
			redirect("Admin_controller/");
		}
	}
	
	public function cities() {
		$id = $this->session->userdata('id');
		if($id){
			$data = $this->Admin_model->fetch_cities();
			$this->load->view('city',array('data' => $data));
		}
		else {
			redirect("Admin_controller/");
		}
	}
	
	public function city_edit($edit) {
		$id = $this->session->userdata('id');
		if($id){
			$this->load->view('city_edit', array('edit' => $edit));
		}
		else {
			redirect("Admin_controller/");
		}
	}
	
	public function contact() {
		$id = $this->session->userdata('id');
		if($id){
			$data = $this->Admin_model->fetch_contact();
			$this->load->view('contact',array('data' => $data));
		}
		else {
			redirect("Admin_controller/");
		}
	}
	
	public function my_profile() {
		$id = $this->session->userdata('id');
		if($id){
			$this->load->view('my_profile');
		}
		else {
			redirect("Admin_controller/");
		}
	}
	
	public function notification() {
		$id = $this->session->userdata('id');
		if($id) {
			if($data = $this->Admin_model->fetch_notifications()) {
				$this->load->view('notification', array('data' => $data));
			}	
			else {
				echo "Cannot fetch notifications from the database";
			}
		}
		else {
			redirect("Admin_controller/");
		}
	}
	
    public function add_menu_category() {
		
			$cat_name = $this->input->post('cat_name');
            
            $config['upload_path']          =   './assets/upload/images/';
            $config['allowed_types']        =   'gif|jpg|png|jpeg|pdf';
            $config['max_size']             =   2000; //in kb
            $config['max_width']            =   1024;
            $config['max_height']           =   768;
            
            
            $this->load->library("upload", $config);
            
            if(!$this->upload->do_upload('cat_icon')) {
                echo $this->upload->display_errors();
            }
            else {
                $file_data = $this->upload->data();
                $file_name = $file_data['file_name'];
                
                
            $data = array(
                'category_name' => $cat_name,
                'category_icon' => $file_name
            );
                if($this->Admin_model->add_menu_category($data)) {
                    $this->admin_category();
                } else {
                    $this->admin_category();
                }
                
            }
		}
        
	
    public function delete_category($id) {
        if($this->Admin_model->delete_category($id)) {
            $this->admin_category();
        }
        else {
            echo "cannot delete categories";
        }
    }
    
    public function fetch_id_category($id) {
        if($edit = $this->Admin_model->fetch_id_category($id)) {
            $this->admin_category_edit($edit);
        }
        else {
            $this->admin_category();
        }
    }
    
    public function update_category($id) {
        $cat_name = $this->input->post('cat_name');
        
        $config['upload_path']   =  './assets/upload/images/';
        $config['allowed_types'] =  'gif|jpg|png|jpeg|pdf';
        $config['max_size']      =  2000;
        $config['max_width']     =  1024;
        $config['max_height']    =  768;
        
        $this->load->library("upload", $config);
        
        if(!$this->upload->do_upload('cat_icon')) {
            echo $this->upload->display_errors();
        }
        else {
            $file_data = $this->upload->data();
            $file_name = $file_data['file_name'];
        }
        
        $data = array(
            'category_name' => $cat_name,
            'category_icon' => $file_name,
        );
        
        if($this->Admin_model->update_category($data,$id)) {
            $this->admin_category();
        }
        else {
            $this->admin_category();
        }
    }
    
    public function add_menu_item() {
        if(isset($_POST['insert_menu_item'])) {
            $category = $this->input->post('category');
            $item_name = $this->input->post('item_name');
            $item_desc = $this->input->post('item_desc');
            $item_price = $this->input->post('item_price');
            
            $config['upload_path']   =  './assets/upload/images/';
            $config['allowed_types'] =  'gif|jpg|png|jpeg|pdf';
        
            $this->load->library("upload", $config);
            
            if(!$this->upload->do_upload('item_image')) {
                echo $this->upload->display_errors();
            }
            else {
                $file_data = $this->upload->data();
                $file_name = $file_data['file_name'];
            }
            
            $data = array(
                'item_name'     => $item_name,
                'item_category' => $category,
                'item_price'    => $item_price,
                'item_image'    => $file_name,
                'item_desc'     => $item_desc
            );
            
            if($this->Admin_model->insert_menu_item($data)) {
                $this->menu_item();
            }
            else {
                $this->menu_item();
            }
        }   
    }
    
    public function delete_menu_item($id) {
        if($this->Admin_model->delete_menu_item($id)) {
            $this->menu_item();
        }
        else {
            echo "cannot delete menu items";
        }
    }
    
    public function fetch_id_menu($id) {
        if($edit = $this->Admin_model->fetch_id_menu($id)) {
            $this->admin_menu_edit($edit);
        }
        else {
            $this->menu_item();
        }
    }
    
    public function update_menu_item($id) {
        $item_category = $this->input->post('category');
        $item_name = $this->input->post('item_name');
        $item_desc = $this->input->post('item_desc');
        $item_price = $this->input->post('item_price');
        
        $config['upload_path']   =  './assets/upload/images/';
        $config['allowed_types'] =  'gif|jpg|png|jpeg|pdf';
        
        $this->load->library("upload", $config);
        
        if(!$this->upload->do_upload('item_image')) {
            echo $this->upload->display_errors();
        }
        else {
            $file_data = $this->upload->data();
            $file_name = $file_data['file_name'];
        }
        
        $data = array(
            'item_name'     =>  $item_name,
            'item_category' =>  $item_category,
            'item_desc'     =>  $item_desc,
            'item_price'    =>  $item_price,
            'item_image'    =>  $file_name
        );
        
        if($this->Admin_model->update_menu_item($data,$id)) {
            $this->menu_item();
        }
        else {
            $this->menu_item();
        }
    }
    
    public function add_top_cat() {
        $top_cat = $this->input->post('top_cat');
        if($this->Admin_model->add_top_cat($top_cat)) {
            $this->admin_top_cat();
        }
        else {
            $this->admin_top_cat();
        }
    }
    
    public function delete_top_cat($id) {
        if($this->Admin_model->delete_top_cat($id)) {
            $this->admin_top_cat();
        }
        else {
            echo "cannot delete topping categories";
        }
    }
	
	public function fetch_id_top_cat($id) {
		if($edit = $this->Admin_model->fetch_id_top_cat($id)) {
            $this->edit_top_cat($edit);
        }
        else {
            $this->edit_top_cat($edit);
        }
	}
	
	public function update_top_cat($id) {
		$top_cat = $this->input->post('top_cat');
		$data = array(
			'top_cat'	=>	$top_cat
		);
		if($this->Admin_model->update_top_cat($data,$id)) {
			$this->admin_top_cat();
		}
		else {
			$this->admin_top_cat();
		}
	}
	
	public function add_topping($id) {
		$data = array(
			'top_cat_id' => $id,
			'top_name'	  => $this->input->post('top_name'),
			'top_price'	  => $this->input->post('top_price')
		);
		if($this->Admin_model->add_topping($data)) {
			$this->admin_topping($id);
		}
		else {
			$this->admin_topping($id);
		}
	}
	
	public function delete_top($id) {
		if($this->Admin_model->delete_top($id)) {
            $this->admin_top_cat();
        }
        else {
            echo "cannot delete toppings";
        }
	}
	
	public function fetch_id_topping_item($id) {
		if($edit = $this->Admin_model->fetch_id_topping_item($id)) {
            $this->admin_topping_edit($edit);
        }
        else {
            $this->admin_topping_edit($edit);
        }
	}
	
	public function update_admin_topping_items($id) {
		$top_name = $this->input->post('top_name');
		$top_price = $this->input->post('top_price');
		$data = array(
			'top_name'	=>	$top_name,
			'top_price'	=>	$top_price
		);
		if($this->Admin_model->update_admin_topping_items($data,$id)) {
			$this->admin_top_cat();
		}
		else {
			$this->admin_top_cat();
		}
	}
	
	public function delete_user($id) {
		if($this->Admin_model->delete_user($id)) {
            $this->users();
        }
        else {
            echo "cannot delete users";
        }
	}
	
	public function insert_delivery_boy() {
		$data = array(
			'name'			=>	$this->input->post('boy_name'),
			'phone'			=>	$this->input->post('boy_phone'),
			'email'			=>	$this->input->post('boy_email'),
			'password'		=>	$this->input->post('boy_password'),
			'vehicle_no'	=>	$this->input->post('boy_vehicle_no'),
			'vehicle_type'  =>	$this->input->post('boy_vehicle_type')
		);
		if($this->Admin_model->insert_delivery_boy($data)) {
			$this->delivery_boy();
		}
		else {
			echo "cannot insert delivery boy details";
		}
	}
	
	public function delete_delivery_boy($id) {
		if($this->Admin_model->delete_delivery_boy($id)) {
            $this->delivery_boy();
        }
        else {
            echo "cannot delete delivery boy";
        }
	}
	
	public function fetch_delivery_boy($id) {
		if($edit = $this->Admin_model->fetch_delivery_boy($id)) {
            $this->delivery_boy_edit($edit);
        }
        else {
            $this->delivery_boy_edit($edit);
        }
	}
	
	public function update_delivery_boy($id) {
		$data = array(
			'name'			=>	$this->input->post('boy_name'),
			'password'		=>	$this->input->post('boy_password'),
			'phone'			=>	$this->input->post('boy_phone'),
			'email'			=>	$this->input->post('boy_email'),
			'vehicle_no'	=>	$this->input->post('boy_vehicle_no'),
			'vehicle_type'	=>	$this->input->post('boy_vehicle_type')
		);
		if($this->Admin_model->update_delivery_boy($data,$id)) {
			$this->delivery_boy();
		}
		else {
			$this->delivery_boy();
		}
	}
	
	public function add_city() {
		$data = array(
			'city_name' => $this->input->post('city_name'),
		);
		if($this->Admin_model->add_city($data)) {
			$this->cities();
		}
		else {
			$this->cities();
		}
	}
	
	public function delete_city($id) {
		if($this->Admin_model->delete_cities($id)) {
            $this->cities();
        }
        else {
            echo "cannot delete cities";
        }
	}
	
	public function fetch_id_city($id) {
		if($edit = $this->Admin_model->fetch_id_city($id)) {
            $this->city_edit($edit);
        }
        else {
            $this->city_edit($edit);
        }
	}
	
	public function update_city_name($id) {
		$data = array(
			'city_name'			=>	$this->input->post('city_name')
		);
		if($this->Admin_model->update_city_name($data,$id)) {
			$this->cities();
		}
		else {
			$this->cities();
		}
	}
	
	public function add_contact() {
		$data = array(
			'contact_name' => $this->input->post('contact_name'),
			'contact_email' => $this->input->post('contact_email'),
			'contact_phone' => $this->input->post('contact_phone'),
			'contact_message' => $this->input->post('contact_message'),
		);
		if($this->Admin_model->add_contact($data)) {
			$this->contact();
		}
		else {
			$this->contact();
		}
	}
	
	public function logout() {
		$this->session->unset_userdata('id');
		$this->index();
	}
	
	public function add_notification() {
		$notification = $this->input->post('add_notif');
		$data = array(
			'message' => $notification
		);
		
		if($this->Admin_model->add_notification($data)) {
			$this->notification();
		}
		else {
			echo "cannot add notification";
		}
	}

}
 ?>
