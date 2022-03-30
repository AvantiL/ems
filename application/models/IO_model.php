<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class IO_model extends CI_Model
{
    public function save_io_details(
        $sevarth_id,
        $title,
        $desc,
        $date,
        $pdf,
        $hod_id,
        $registrar_id,
        $principal_id
    )
    {
        $data = array(
            'sevarth_id'=> $sevarth_id,
            'title'=> $title,
            'remark'=> $desc,
            'date' => $date,
            'application' => $pdf,
            'hod_id' => $hod_id,
            'registrar_id' => $registrar_id,
            'principal_id' => $principal_id 

        );

        $this->db->insert('applications', $data);



    }
    public function get_hod_by_department_organization($department_id, $organization_id)
    {
        $condition = array(
            'dept_id' => $department_id,
            'org_id' => $organization_id,
            'role_id' => 2, // role id of hod
        );

        if($this->db->where($condition)->get('employees')->num_rows() > 0){
            $hod_id = (array) $this->db->where($condition)->get('employees')->result()[0];

            return $hod_id['sevarth_id'];

        }else{
            sendError(array('error ' => "not found"));
        }

        
    }

    public function get_principal_by_organization($department_id, $organization_id)
    {
        $condition = array(
            'dept_id' => $department_id,
            'org_id' => $organization_id,
            'role_id' => 3, // role id of principal
        );

        if($this->db->where($condition)->get('employees')->num_rows() > 0){
            $principal_id = (array) $this->db->where($condition)->get('employees')->result()[0];

            return $principal_id['sevarth_id'];
        }else{
            sendError(array('error ' => "not found"));
        }
    }

    public function get_registrar_by_organization($department_id, $organization_id)
    {
        $condition = array(
            'dept_id' => $department_id,
            'org_id' => $organization_id,
            'role_id' => 4, // role id of principal
        );

        if($this->db->where($condition)->get('employees')->num_rows() > 0){
            $principal_id = (array) $this->db->where($condition)->get('employees')->result()[0];

            return $registrar_id['sevarth_id'];
        }else{
            sendError(array('error ' => "not found"));
        }
    }
}



?>