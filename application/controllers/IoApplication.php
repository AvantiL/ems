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
                $application_type
            );
            
            sendSuccess(array("status"=> "Application Applied Successfully"));
        }




    }
    
}