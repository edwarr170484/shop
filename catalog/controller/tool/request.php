<?php
class ControllerToolRequest extends Controller {
    public function index() {
        $json = array();

        if (isset($this->request->post['phone']) && isset($this->request->post['email']) && isset($this->request->post['name'])) {
            $message  = '<html dir="ltr" lang="en">' . "\n";
            $message .= '  <head>' . "\n";
            $message .= '    <title>Запрос КП</title>' . "\n";
            $message .= '    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">' . "\n";
            $message .= '  </head>' . "\n";
            $message .= '  <body><b>Имя:</b> ' . $this->request->post['name'] . '<br/><b>Номер телефона:</b> ' . $this->request->post['phone'] . '<br/><b>Email:</b> ' . $this->request->post['email'] . '</body>' . "\n";
            $message .= '</html>' . "\n";

            $mail = new Mail($this->config->get('config_mail_engine'));
            $mail->parameter = $this->config->get('config_mail_parameter');
            $mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
            $mail->smtp_username = $this->config->get('config_mail_smtp_username');
            $mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
            $mail->smtp_port = $this->config->get('config_mail_smtp_port');
            $mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

            $mail->setTo($this->config->get('config_email'));
            $mail->setFrom($this->config->get('config_email'));
            $mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
            $mail->setSubject(html_entity_decode('Запрос КП', ENT_QUOTES, 'UTF-8'));
            $mail->setHtml($message);
            $mail->send();

            $json = [
                'class' => 'success',
                'message' => 'Запрос успешно отправлен'
            ];
        } else {
            $json = [
                'class' => 'error',
                'message' => 'Не заполнены обязательные поля'
            ];
        }

        $this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
    }
}