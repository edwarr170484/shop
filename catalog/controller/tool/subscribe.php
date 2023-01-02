<?php
class ControllerToolSubscribe extends Controller {
	public function index() {
        $json = array();

        $this->load->language('tool/subscribe');

        $this->load->model('tool/subscribe');

        $subscriber = $this->model_tool_subscribe->getSubscriberByEmail($this->request->post['email']);

        if($subscriber){
            $json = [
                'class' => 'error',
                'message' => $this->language->get('email_exists')
            ];
        }else{
            $subscriber = $this->model_tool_subscribe->addSubscriber($this->request->post['email']);
            if($subscriber){
                $json = [
                    'class' => 'success',
                    'message' => $this->language->get('email_success')
                ];
            }
        }

        $this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
    }
}