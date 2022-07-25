<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dsr extends CI_Controller
{
    public function index()
    {
        $this->load->view('welcome_message');

    }
     
    public function getCsProducts(){
        sendSuccess($this->Dsr_model->get_cs_products()); 
    }

    public function add_CsProducts(){

			if ($this->input->post ('submit')) {
				$data ['Oraganization_ID'] = $this->input->post('Oraganization_ID');
				$data ['DSR_no'] = $this->input->post('DSR_no');
				//$data['Product_ID'] = $this->input->post('Product_ID');
				$purchaseDate = $this->input->post('purchase_date');
				$data['purchase_date'] = $purchaseDate;
				$data['purchase_authority'] = $this->input->post('purchase_authority');
				$data['supplier_name'] = $this->input->post('supplier_name');
				$data['Supplier_Address'] = $this->input->post('Supplier_Address');
				$data['product_name'] = $this->input->post('product_name');
				$data['product_desc'] = $this->input->post('product_desc');
				$qty = $this->input->post('qty');
				$data['qty'] = $qty;
				$data['Price_Per_Quantity'] = $this->input->post('Price_Per_Quantity');
				//$data['initial_HOD'] = $this->input->post('initial_HOD');
				$qtyDistributed = $this->input->post('Quantity_Distributed');
				$data['Quantity_Distributed'] = $qtyDistributed;
				$data['remarks'] = $this->input->post('remarks');
				$curDate = date("Y-m-d");

				
			}
		}
    

    public function getDeptProducts(){

        $dept = $this->input->post("dept");
        sendSuccess($this->Dsr_model->get_dept_products($dept));
    }

    public function getHostProducts(){

        $hostel = $this->input->post("hostel");
        sendSuccess($this->Dsr_model->get_host_products($hostel));
    }

    public function getLibProducts(){
        sendSuccess($this->Dsr_model->get_lib_products());
    }

    public function getOfficeProducts(){
        sendSuccess($this->Dsr_model->get_office_products());
    }

}
