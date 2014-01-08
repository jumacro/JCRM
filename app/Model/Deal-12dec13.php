<?php
class Deal extends AppModel {
	public $belongsTo = array(
			'Contact'=>array(
					'className'=>'Contact',
					'foreignKey'=>'contact_id',
					),
			'DealStatus'=>array(
					'className' => 'DealStatus',
					'foreignKey' => 'deal_status_id'
					)
			);
	
	public $actsAs = array('Search.Searchable');
	
	public $filterArgs = array(
			'search_name' => array('type'=>'like','field'=>array('Contact.first_name','Contact.last_name')),
			'search_amount' => array('type'=>'value','field'=>'Deal.amount'),
			'search_date_from' => array('type'=>'expression','method'=>'searchDate','field'=>'Deal.date BETWEEN ? AND ?'),
			
			'search_all' => array('type'=>'query','method'=>'searchDefault')
	);
	
	public function searchDefault($data = array()) {
		$filter = $data['search_all'];
		$cond = array(
				'OR' => array(
						'Contact.first_name LIKE' => '%' . $filter . '%',
						'Contact.last_name LIKE' => '%' . $filter . '%',
						$this->alias . '.amount LIKE' => '%' . $filter . '%'
				));
		return $cond;
	}
	
	public function searchDate($data = array()) {
		$date_from = $data['search_date_from'];
		if(!empty($data['search_date_to'])){
			$date_to = $data['search_date_to'] . ' 23:59:59';
		} else {
			$date_to = date('Y-m-d H:i:s');
		}
		$cond = array($date_from,$date_to);
		return $cond;
	}
}