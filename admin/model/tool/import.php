<?php
class ModelToolImport extends Model {
    public function getCategories() {
		$sql = "SELECT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (cd.category_id=c.category_id) WHERE cd.language_id='" . (int)$this->config->get('config_language_id') . "'";

		$query = $this->db->query($sql);

		return $query->rows;
	}

    public function getCategoryByImportId($importId) {
		$sql = "SELECT * FROM " . DB_PREFIX . "category c WHERE c.import_id='" . $this->db->escape($importId) . "'";

		$query = $this->db->query($sql);

		return $query->row;
	}
}