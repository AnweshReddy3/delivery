<?php

class Admin_model extends CI_Model {
	
	function check_login_details($username, $password) {
		$this->db->select('*');
		$this->db->from('users');
		$this->db->where('email', $username);
		$this->db->where('password', $password);
		
		if($data = $this->db->get()) {
			return $data->row();
		}
		else {
			return false;
		}
	}
	
	function fetch_category_items() {
        $this->db->select('*');
        $this->db->from('category');
        if($data = $this->db->get()) {
            return $data->result();
        }
        else {
            return false;
        }
    }
    
    function add_menu_category($data) {
        if($this->db->insert('category', $data)) {
            return true;
        }
        else {
            return false;
        }
    }
    
    function delete_category($id) {
        $this->db->where('id', $id);
        if($this->db->delete('category')) {
            return true;
        }
        else {
            return false;
        }
    }
    
    function fetch_id_category($id) {
        $this->db->select('*');
        $this->db->where('id', $id);
        $this->db->from('category');
        
        if($data = $this->db->get()) {
            return $data->row();
        }
        else {
            return false;
        }
    }
    
    function update_category($data, $id) {
        
        $this->db->set($data);
        $this->db->where('id', $id);
        if($this->db->update('category', $data)) {
            return true;
        }
        else {
            return false;
        }
    }
    
    function insert_menu_item($data) {
        if($this->db->insert('menu_item', $data)) {
            return true;
        }
        else {
            return false;
        }
    }
    
    function fetch_menu_items() {
        $this->db->select('*');
        $this->db->from('menu_item');
        if($data = $this->db->get()) {
            return $data->result();
        }
        else {
            return false;
        }
    }
    
    function delete_menu_item($id) {
        $this->db->where('id', $id);
        if($this->db->delete('menu_item')) {
            return true;
        }
        else {
            return false;
        }
    }
    
    function fetch_id_menu($id) {
        $this->db->select('*');
        $this->db->where('id', $id);
        $this->db->from('menu_item');
        
        if($data = $this->db->get()) {
            return $data->row();
        }
        else {
            return false;
        }
    }
    
    function update_menu_item($data,$id) {
        $this->db->set($data);
        $this->db->where('id', $id);
        if($this->db->update('menu_item', $data)) {
            return true;
        }
        else {
            return false;
        }
    }
    
    function add_top_cat($top_cat) {
        $data = array(
            'top_cat'   =>  $top_cat
        );
        if($this->db->insert('toppings', $data)) {
            return true;
        }
        else {
            return false;
        }
    }
    
    function fetch_top_cat() {
        $this->db->select('*');
        $this->db->from('toppings');
        if($data = $this->db->get()) {
            return $data->result();
        }
        else {
            return false;
        }
    }
    
    function delete_top_cat($id) {
        $this->db->where('id', $id);
        if($this->db->delete('toppings')) {
            return true;
        }
        else {
            return false;
        }
    }
	
	function fetch_id_top_cat($id) {
		$this->db->select('*');
        $this->db->where('id', $id);
        $this->db->from('toppings');
        
        if($data = $this->db->get()) {
            return $data->row();
        }
        else {
            return false;
        }
	}
	
	function update_top_cat($data,$id) {
		$this->db->set($data);
        $this->db->where('id', $id);
        if($this->db->update('toppings', $data)) {
            return true;
        }
        else {
            return false;
        }
	}
	
	function add_topping($data) {
		if($this->db->insert('topping_items', $data)) {
			return true;
		}
		else {
			return false;
		}
	}
	
	function fetch_topping($id) {
		$this->db->select('*');
		$this->db->from('topping_items');
		$this->db->where('top_cat_id', $id);
		
		if($data = $this->db->get()) {
			return $data->result();
		}
		else {
			return false;
		}
	}
	
	function delete_top($id) {
		$this->db->where('id', $id);
        if($this->db->delete('topping_items')) {
            return true;
        }
        else {
            return false;
        }
	}
	
	function fetch_id_topping_item($id) {
		$this->db->select('*');
        $this->db->where('id', $id);
        $this->db->from('topping_items');
        
        if($data = $this->db->get()) {
            return $data->row();
        }
        else {
            return false;
        }
	}
	
	function update_admin_topping_items($data,$id) {
		$this->db->set($data);
        $this->db->where('id', $id);
        if($this->db->update('topping_items', $data)) {
            return true;
        }
        else {
            return false;
        }
	}
	
	function users() {
		$this->db->select('*');
        $this->db->from('users');
        if($data = $this->db->get()) {
            return $data->result();
        }
        else {
            return false;
        }
	}
	
	function delete_user($id) {
		$this->db->where('id', $id);
        if($this->db->delete('users')) {
            return true;
        }
        else {
            return false;
        }
	}
	
	function insert_delivery_boy($data) {
		if($this->db->insert('delivery_boy', $data)) {
            return true;
        }
        else {
            return false;
        }
	}
	
	function fetch_delivery_boy_details() {
		$this->db->select('*');
        $this->db->from('delivery_boy');
        if($data = $this->db->get()) {
            return $data->result();
        }
        else {
            return false;
        }
	}
	
	function delete_delivery_boy($id) {
		$this->db->where('id', $id);
        if($this->db->delete('delivery_boy')) {
            return true;
        }
        else {
            return false;
        }
	}
	
	function fetch_delivery_boy($id) {
		$this->db->select('*');
        $this->db->where('id', $id);
        $this->db->from('delivery_boy');
        
        if($data = $this->db->get()) {
            return $data->row();
        }
        else {
            return false;
        }
	}
	
	function update_delivery_boy($data,$id) {
		$this->db->set($data);
        $this->db->where('id', $id);
        if($this->db->update('delivery_boy', $data)) {
            return true;
        }
        else {
            return false;
        }
	}
	
	function add_city($data) {
		if($this->db->insert('city', $data)) {
            return true;
        }
        else {
            return false;
        }
	}
	
	function fetch_cities() {
		$this->db->select('*');
        $this->db->from('city');
        if($data = $this->db->get()) {
            return $data->result();
        }
        else {
            return false;
        }
	}
	
	function delete_cities($id) {
		$this->db->where('id', $id);
        if($this->db->delete('city')) {
            return true;
        }
        else {
            return false;
        }
	}
	
	function fetch_id_city($id) {
		$this->db->select('*');
        $this->db->where('id', $id);
        $this->db->from('city');
        
        if($data = $this->db->get()) {
            return $data->row();
        }
        else {
            return false;
        }
	}
	
	function update_city_name($data,$id) {
		$this->db->set($data);
        $this->db->where('id', $id);
        if($this->db->update('city', $data)) {
            return true;
        }
        else {
            return false;
        }
	}
	
	function add_contact($data) {
		if($this->db->insert('contact', $data)) {
            return true;
        }
        else {
            return false;
        }
	}
	
	function fetch_contact() {
		$this->db->select('*');
        $this->db->from('contact');
        if($data = $this->db->get()) {
            return $data->result();
        }
        else {
            return false;
        }
	}
	
	function add_notification($data) {
		if($this->db->insert('notification', $data)) {
			return true;
		}
		else {
			return false;
		}
	}
	
	function fetch_notifications() {
		$this->db->select('*');
		$this->db->from('notification');
		
		if($data = $this->db->get()) {
			return $data->result();
		}
		else {
			return false;
		}
	}
}

?>
