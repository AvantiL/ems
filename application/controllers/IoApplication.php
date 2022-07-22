<?php
defined('BASEPATH') or exit('No direct script access allowed');

class IOApplication extends CI_Controller
{
    public function index()
    {
        $this->load->view('welcome_message');
    }

    
    public function apply_io_application()
    {
        $sevarth_id = $this->input->post('sevarth_id');
        $title = $this->input->post('title');
        $desc = $this->input->post('desc');
        $date = $this->input->post('date');
        $role_id = $this->input->post('role_id');
        $name = $this->input->post('name');
        $org_id = $this->input->post('org_id');
        $from_department = $this->input->post('from_department');
        
        // department_id to which the application is being applied
        $department_id = $this->input->post('department_id');
        $application_type = $this->input->post('application_type');
        
        $config = array(
            'upload_path' => "uploads/io_applications", //path for upload
            'allowed_types' => "pdf", //restrict extension
            'max_size' => '300000',
            'max_width' => '30000',
            'max_height' => '30000',
        );
        $this->load->library('upload', $config);

        if (!$this->upload->do_upload("io_application")) {
            $error = $this->upload->display_errors();

            sendError($error);

        } else {

            $fileName = $this->upload->data('file_name');

            $hod_id = -1;
            $principal_id = -1;
            $registrar_id = -1;
            $status_id = 1;
            $remark = "Applied By Employee";

            //if user is employee
            if($role_id == "1"){
                $status_id = 1;
                $remark = "Applied By Employee";
                $hod_id = $this->Training_model->get_hod_by_department_organization($department_id, $org_id);
                $principal_id = $this->Training_model->get_principal_by_organization($department_id, $org_id);
                $registrar_id = $this->Training_model->get_registrar_by_organization($department_id, $org_id);
            }
            //if user is hod
            else if($role_id == "2"){
                $status_id = 8; // Applied by hod
                $remark = "Applied By Hod";
                $principal_id = $this->Training_model->get_principal_by_organization($department_id, $org_id);
                $registrar_id = $this->Training_model->get_registrar_by_organization($department_id, $org_id);
            }  

            //if user is principal
            else if($role_id == "3"){
                $status_id = 9; // Applied by principal
                $remark = "Applied By Principle";
                $registrar_id = $this->Training_model->get_registrar_by_organization($department_id, $org_id);
            
            }
            
            //if user is registrar
            else if($role_id == "4"){

                $status_id =  10; // Applied By Registrar
                $remark = "Applied By Registrar";
                $principal_id =  $this->Training_model->get_principal_by_organization($department_id, $org_id);

            }
            
            $data = array(
                'sevarth_id' => $sevarth_id,
                'title' => $title,
                'description' => $desc,
                'remark' => $remark,
                'date' => $date,
                'application' => $fileName,
                'hod_id' => $hod_id,
                'registrar_id' => $registrar_id,
                'principal_id' => $principal_id,
                'status_id' => $status_id,
                "application_type" => $application_type,
                "to_dept" => $department_id,
                "from_dept" => $from_department,
                "applicant_name" => $name
            );

            $this->IO_model->save_io_details($data);

            
            sendSuccess(array("status"=> "Application Applied Successfully"));
        }




    }

    public function get_employee_details(){
        $sevarth_id = $this->input->post('sevarth_id');
        
        $data = $this->IO_model->get_employee_details($sevarth_id);

        sendSuccess($data);
    }

    public function update_status_id(){
        
        $application_id = $this->input->post("application_id");
        $status_id = $this->input->post("status_id");
        $remark = $this->input->post("remark"); 
        
        $response = $this->IO_model->update_status_id($application_id, $status_id, $remark);

        sendSuccess($response);
        
    }
    
    public function get_applications(){
        $sevarth_id = $this->input->post("sevarth_id");
        $role_id = $this->input->post("role_id");

        $response = $this->IO_model->getApplicationsById($sevarth_id, $role_id);

        sendSuccess($response);
    }

    public function get_departments(){
        
        $result = $this->IO_model->getDepartments();

        sendSuccess($result);
    }
}