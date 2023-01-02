<?php
class ModelToolSubscribe extends Model {
    public function getSubscriberByEmail($email) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "subscribe WHERE LCASE(email) = '" . $this->db->escape(utf8_strtolower($email)) . "'");

		return $query->row;
	}

    public function getCustomers() {
        $query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "subscribe");

		return $query->rows;
    }

    public function addSubscriber($email) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "subscribe SET email = '" . $this->db->escape($email) . "', date_added = NOW()");

		$subscriber_id = $this->db->getLastId();
		
		return $subscriber_id;
	}

    public function deleteSubscriber($subscribe_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "subscribe WHERE subscribe_id = '" . (int)$subscribe_id . "'");
	}
}
