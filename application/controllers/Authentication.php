<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Authentication extends CI_Controller
{
    public function index()
    {
        $this->load->view('welcome_message');
    }

    
    public function login(){

        $email = $this->input->post('email');
        $password = $this->input->post('password');

        if($email == null){
            sendError(array('error' => "Email is null"));
        }
        if($password == null){
            sendError(array('error' => "password is null"));
        }
        
        $response = $this->Auth_model->loginUser(
            $email , $password
        );
        
        if ($response['result']) {
            sendSuccess($response['data']);
        } else {
            sendError($response['message']);
        }
    }

}