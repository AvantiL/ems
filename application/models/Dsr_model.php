<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Dsr_model extends CI_Model
{

//returns user on basis of email
    public function get_cs_products(){
        return $this->db->get('master_cs')->result();
    }

    public function add_CsProducts($data){
        $this->db->insert('master_cs' , $data);   
        return true;
      }

    public function get_dept_products($dept){
        if($dept == 1){
            $this->db->where("head_initials", "Computer");
            return $this->db->get('cs_distribution')->result();
        }
        else if($dept == 2){
           
            $this->db->or_where("head_initials", "IT");
            return $this->db->get('cs_distribution')->result();
        }
        else if($dept == 3){
           
            $this->db->or_where("head_initials", "Mechanical");
            return $this->db->get('cs_distribution')->result();
        }
        else if($dept == 4){
           
            $this->db->or_where("head_initials", "Civil");
            return $this->db->get('cs_distribution')->result();
        }
        else if($dept == 5){
           
            $this->db->or_where("head_initials", "Electrical");
            return $this->db->get('cs_distribution')->result();
        }
        else if($dept == 6){
           
            $this->db->or_where("head_initials", "Electronics");
            return $this->db->get('cs_distribution')->result();
        }
        else if($dept == 7){
           
            $this->db->or_where("head_initials", "Pharmacy");
            return $this->db->get('cs_distribution')->result();
        }
        else if($dept == 8){
           
            $this->db->or_where("head_initials", "Chemical");
            return $this->db->get('cs_distribution')->result();
        }
        else if($dept == 9){
           
            $this->db->or_where("head_initials", "Plastic Polymer");
            return $this->db->get('cs_distribution')->result();
        }
        else{
            $this->db->where("head_initials", "Computer");
            $this->db->or_where("head_initials", "IT");
            $this->db->or_where("head_initials", "Mechanical");
            $this->db->or_where("head_initials", "Civil");
            $this->db->or_where("head_initials", "Electrical");
            $this->db->or_where("head_initials", "Electronics");
            $this->db->or_where("head_initials", "Pharmacy");
            $this->db->or_where("head_initials", "Chemical");
            $this->db->or_where("head_initials", "Plastic Polymer");
            return $this->db->get('cs_distribution')->result();
        }
        return $this->db->where("head_initials",$dept)->get('cs_distribution')->result();
    }    

    public function get_host_products($hostel){
        if($hostel == 1){
            $this->db->where("head_initials", "Boys Hostel");
            return $this->db->get('cs_distribution')->result();
        }
        else if($hostel == 2){
           
            $this->db->or_where("head_initials", "Girls Hostel");
            return $this->db->get('cs_distribution')->result();
        }
        else{
            $this->db->where("head_initials", "Boys Hostel");
            $this->db->or_where("head_initials", "Girls Hostel");
            return $this->db->get('cs_distribution')->result();
        }
        
    } 

    public function get_lib_products(){
        return $this->db->where("head_initials", "Library")->get('cs_distribution')->result();
    } 

    public function get_office_products(){
        return $this->db->where("head_initials", "Office")->get('cs_distribution')->result();
    } 

   

}