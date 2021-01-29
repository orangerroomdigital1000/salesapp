<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        if (isset($_SERVER['HTTP_ORIGIN'])) {
            header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
            header('Access-Control-Allow-Credentials: true');
            header('Access-Control-Max-Age: 86400');    // cache for 1 day
        }
        if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
            if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
                header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
            if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
                header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
            exit(0);
        }
    }

	public function index()
	{
		$this->load->view('welcome_message');
	}

	public function api(){
        $postdata = json_decode(file_get_contents('php://input'), true);
        if ($postdata) {
			
            if (!array_key_exists('device_id', $postdata)) {
                return $this->output
                    ->set_content_type('Content-Type: application/json')
                    ->set_status_header(404)
                    ->set_output(json_encode('Device ID required!'));
            } elseif (!array_key_exists('device_type', $postdata)) {
                return $this->output
                    ->set_content_type('Content-Type: application/json')
                    ->set_status_header(404)
                    ->set_output(json_encode('Device Type required!'));
            } else {
               $this->db->where('device_id', $postdata['device_id']);
               $getDevice = $this->db->get('devices')->num_rows();
               if($getDevice == 0){
                   $result = $this->db->insert('devices',
                       [
                           'device_id'=>$postdata['device_id'],
                           'device_type'=>$postdata['device_type'],
                           'createdate'=>CURRENT_DATETIME
                       ]
                   );
                   return $this->output
                       ->set_content_type('Content-Type: application/json')
                       ->set_status_header(200)
                       ->set_output(json_encode('Record inserted.'));
               }else{
                   $this->db->where('device_id', $postdata['device_id']);
                   $result = $this->db->update('devices',
                       [
                           'device_id'=>$postdata['device_id'],
                           'device_type'=>$postdata['device_type'],
                           'updatedate'=>CURRENT_DATETIME
                       ]
                   );
                   return $this->output
                       ->set_content_type('Content-Type: application/json')
                       ->set_status_header(200)
                       ->set_output(json_encode('Record updated.'));
               }
            }
        } else {
            return $this->output
                ->set_content_type('Content-Type: application/json')
                ->set_status_header(404)
                ->set_output(json_encode('Something going wrong!'));
        }
    }

    public function sendPushToAll(){
		
        $postdata = json_decode(file_get_contents('php://input'), true);
        if ($postdata) {
            if (!array_key_exists('title', $postdata)) {
                return $this->output
                    ->set_content_type('Content-Type: application/json')
                    ->set_status_header(404)
                    ->set_output(json_encode('title required!'));
            } elseif (!array_key_exists('body', $postdata)) {
                return $this->output
                    ->set_content_type('Content-Type: application/json')
                    ->set_status_header(404)
                    ->set_output(json_encode('body required!'));
            } elseif (!array_key_exists('page_name', $postdata)) {
                return $this->output
                    ->set_content_type('Content-Type: application/json')
                    ->set_status_header(404)
                    ->set_output(json_encode('page_name required!'));
            } else {
                $getDevices = $this->db->get('devices')->result_array();
                if ($getDevices) {
					
                    $postString = array();
                    foreach ($getDevices as $device) {
                        $postString['registration_ids'][] = $device['device_id'];
                    }
                    $title = $postdata['title'];
                    $body = $postdata['body'];
                    /*$postString['notification'] = [
                        "title" => $title,
                        "body" => $body,
                    ];*/
                    $postString['data'] = [
                        'page_name' => $postdata['page_name'],
                        "title" => $title,
                        "body" => $body
                    ];
                    $postString['priority'] = 'high';
                    $postString['content-available'] = '1';
                    $ch = curl_init();
                    curl_setopt($ch, CURLOPT_URL, "https://fcm.googleapis.com/fcm/send");
                    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
                    curl_setopt($ch, CURLOPT_POST, 1);
                    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($postString));
                    curl_setopt($ch, CURLOPT_HTTPHEADER, array('Authorization:key=AIzaSyB7sCJa8eAeQ-AgdXecxv1UyLGQBbfOcXg', 'Content-Type:application/json'));
                    $result = curl_exec($ch);
                    return $this->output
                        ->set_content_type('Content-Type: application/json')
                        ->set_status_header(200)
                        ->set_output($result);
                }
            }
        } else {
            return $this->output
                ->set_content_type('Content-Type: application/json')
                ->set_status_header(404)
                ->set_output(json_encode('Something going wrong!'));
        }
    }

    public function formPush(){
        if($_POST){
		
            $getDevices = $this->db->get('devices')->result_array();
			
            if ($getDevices) {
                $postString = array();
                foreach ($getDevices as $device) {
                    $postString['registration_ids'][] = $device['device_id'];
                }
                $title = $this->input->post('title');
                $body = $this->input->post('body');
                $page_name = $this->input->post('page_name');
                /*$postString['notification'] = [
                    "title" => $title,
                    "body" => $body
                ];*/
                $postString['data'] = [
                    'page_name' => $page_name,
                    "title" => $title,
                    "body" => $body
                ];
                $postString['priority'] = 'high';
                $postString['content-available'] = '1';
                echo "azhar";
               
                echo "azhar 2";

                $ch = curl_init();
                echo "azhar3";
         
                echo "azhar 2";

                curl_setopt($ch, CURLOPT_URL, "https://fcm.googleapis.com/fcm/send");
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
                curl_setopt($ch, CURLOPT_POST, 1);
                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
                curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
                curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($postString));
                curl_setopt($ch, CURLOPT_HTTPHEADER, array('Authorization:key=AIzaSyB7sCJa8eAeQ-AgdXecxv1UyLGQBbfOcXg', 'Content-Type:application/json'));
                $result = curl_exec($ch);
                $decode = json_decode($result, true);
				echo '<pre>';print_r($decode);
                /* if(isset($decode['success']) && $decode['success'] > 0){
                    $message = array('message' =>'Push sent successfully.', 'class' => 'alert-success');
                }else{
                    $message = array('message' =>'Something went wrong.', 'class' => 'alert-success');
                }
                $this->session->set_flashdata('message', $message); */
                //redirect(site_url('push-form'));
                echo '<a href="'.site_url('push-form').'">Push Form</a>';
                echo '<pre>';print_r($decode);
            }
        }else{
            $this->load->view('form_push');
        }

    }
}


// Array ( [registration_ids] => Array ( [0] => f-AFE4StEPs:APA91bGvDCZswsD2CNIS5DgRK2jcljHhJP2R_pe5UeINqLCysG2QkqOZscuWm-u1gDPD_UC9Q_5AIAwLo4ie54EKTgjdaB-jwuK0ntt3KXiAVa1u1mPtXgvwiLGXtvhNDQmUV_aKcUdf [1] => cpJw4QiWIWU:APA91bGgUmn-Xf97m7xXvFU3u0vwXZxFt6B-vAwFjflDpkfQId31OKD7WwaByDIID8hJDWeb3jwO7F9XDQe6QcfGL7aBkuOgFTDh6kGzS3CLMIRQk6eM08Azg5ONHN2RTB6p94lBRbuu [2] => [3] => 71ad8ffc8ab5ced8d5fcc8028133efd014031f90a29ff072400f6860b84ca1cd [4] => ePbIwYpgmzU:APA91bH4s5Rq1m2v__gxDQiO3vz2JdXFtCpPe9gFNhWKyAejivA53EK0JWnB48V95aJDNtbNkovAvFNBwx_fSXe4zGcYj4Ai0txNYZXVeLXAn6WZwvAfoZx5qzNc47x2jWAGmDHPgMKG [5] => 2701a11418e0d555dae6aa345260b1daf15c18d5e900dcd62d50abed489f31b3 ) [data] => Array ( [title] => Save on Income Taxes. [body] => Invest today with HBL Asset Management and get 20% rebate on your income taxes. [page_name] => ContactPage ) [priority] => high [content-available] => 1 )