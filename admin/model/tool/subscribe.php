<?php
class ModelToolSubscribe extends Model {
    public function getSubscribers() {
        $query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "subscribe");

		return $query->rows;
    }
}
