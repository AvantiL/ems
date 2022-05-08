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
            $hod_id = $this->Training_model->get_hod_by_department_organization($department_id, $org_id);
            $principal_id = $this->Training_model->get_principal_by_organization($department_id, $org_id);
            $registrar_id = $this->Training_model->get_registrar_by_organization($department_id, $org_id);


            $this->IO_model->save_io_details(
                $sevarth_id,
                $title,
                $desc,
                $date,
                $fileName,
                $hod_id,
                $registrar_id,
                $principal_id,
                $application_type,
                $department_id,
                $from_department
            );
            
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