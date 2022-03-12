<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Authentication extends CI_Controller
{
    public function index()
    {
        $this->load->view('welcome_message');
    }

    
    public function login(){
        $response = $this->Auth_model->loginUser(
            $this->input->post('email'),
            $this->input->post('password'),
        );
        
        if ($response['result']) {
            sendSuccess($response['data']);
        } else {
            sendError($response['message']);
        }
    }

}