<?php
class IO_model extends CI_Model
{

    public function get_employee_details($sevarth_id)
    {
        $condition = array(
            'sevarth_id' => $sevarth_id
        );
        
        if ($this->db->where($condition)->get('employees_details')->num_rows() > 0) {
            return $this->db->where($condition)->get('employees')->result()[0];
        }

        sendError(array('error ' => "Employee Does Added His Details"));
    }
    
    public function save_io_details($data) {
        

        $this->db->insert('applications', $data);

    }
    public function get_hod_by_department_organization($department_id, $organization_id)
    {
        $condition = array(
            'dept_id' => $department_id,
            'org_id' => $organization_id,
            'role_id' => 2, // role id of hod
        );

        if ($this->db->where($condition)->get('employees')->num_rows() > 0) {
            $hod_id = (array) $this->db->where($condition)->get('employees')->result()[0];

            return $hod_id['sevarth_id'];

        } else {
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

        if ($this->db->where($condition)->get('employees')->num_rows() > 0) {
            $principal_id = (array) $this->db->where($condition)->get('employees')->result()[0];

            return $principal_id['sevarth_id'];
        } else {
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

        if ($this->db->where($condition)->get('employees')->num_rows() > 0) {
            $registrar_id = (array) $this->db->where($condition)->get('employees')->result()[0];

            return $registrar_id['sevarth_id'];
        } else {
            sendError(array('error ' => "registrar not found"));
        }
    }

    public function getApplicationsById($sevarthId, $role_id)
    {
        // if employee then directly return all matching sevarthId
        if ($role_id == 1) {
            return $this->db->where('sevarth_id', $sevarthId)->order_by("id", "DESC")->get('applications')->result();
        }
        // for hod
        else if ($role_id == 2) {
            return $this->db->where('hod_id', $sevarthId)->order_by("id", "DESC")->get('applications')->result();
        }
        // for principle
        else if ($role_id == 3) {
            return $this->db->where('principal_id', $sevarthId)->order_by("id", "DESC")->get('applications')->result();
        }
        // for registrar
        else if ($role_id == 4) {
            return $this->db->where('registrar_id', $sevarthId)->order_by("id", "DESC")->get('applications')->result();
        }

    }

    public function update_status_id($application_id, $status_id, $remark)
    {
        $data = array(
            "status_id" => $status_id,
            "remark" => $remark
        );

        $this->db->where('id', $application_id)->update('applications', $data);

        return array("status" => "Application Status Updated Successfully");

    }
    public function get_application_by_id($application_id)
    {
        return $this->db->where('id', $application_id)->get('applications')->result();
    }

    public function getDepartments(){
        return $this->db->get("departments")->result();
    }
} ?>