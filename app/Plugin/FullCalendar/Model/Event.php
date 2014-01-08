<?php
/*
 * Model/Event.php
 * CakePHP Full Calendar Plugin
 *
 * Copyright (c) 2010 Silas Montgomery
 * http://silasmontgomery.com
 *
 * Licensed under MIT
 * http://www.opensource.org/licenses/mit-license.php
 */
 
class Event extends FullCalendarAppModel {
	var $name = 'Event';
	var $displayField = 'title';
	var $validate = array(
		'title' => array(
			'notempty' => array(
				'rule' => array('notempty'),
			),
		),
		'start' => array(
			'notempty' => array(
				'rule' => array('notempty'),
			),
		)
	);
	
	public $actsAs = array('Search.Searchable');
	
	public $filterArgs = array(
			'search_title' => array('type'=>'like','field'=>'Event.title'),
			'search_date_from' => array('type'=>'expression','method'=>'searchDate','field'=>'Event.start BETWEEN ? AND ?'),
			
			'search_all' => array('type'=>'query','method'=>'searchDefault')
			
	);
	
	public function searchDefault($data = array()) {
		$filter = $data['search_all'];
		$cond = array(
				'OR' => array(
						$this->alias . '.title LIKE' => '%' . $filter . '%',
						$this->alias . '.details LIKE' => '%' . $filter . '%'
				));
		return $cond;
	}
	
	public function searchDate($data = array()) {
		$date_from = $data['search_date_from'];
		if(!empty($data['search_date_to'])){
			$date_to = $data['search_date_to'];
		} else {
			$date_to = date('Y-m-d H:i:s');
		}
		$cond = array($date_from,$date_to);
		return $cond;
	}
	
	var $belongsTo = array(
		'EventType' => array(
			'className' => 'FullCalendar.EventType',
			'foreignKey' => 'event_type_id'
		)
	);
	
	public $hasAndBelongsToMany = array(
			'User' =>
			array(
					'className'              => 'User',
					/*'joinTable'              => 'events_users',*/
					'foreignKey'             => 'event_id',
					'associationForeignKey'  => 'user_id',
					'unique'                 => true,
					'conditions'             => '',
					'fields'                 => '',
					'order'                  => '',
					'limit'                  => '',
					'offset'                 => '',
					'finderQuery'            => '',
					'deleteQuery'            => '',
					'insertQuery'            => ''
			),
			'Contact' =>
			array(
					'className'              => 'Contact',
					/*'joinTable'              => 'contacts_events',*/
					'foreignKey'             => 'event_id',
					'associationForeignKey'  => 'contact_id',
					'unique'                 => true,
					'conditions'             => '',
					'fields'                 => '',
					'order'                  => '',
					'limit'                  => '',
					'offset'                 => '',
					'finderQuery'            => '',
					'deleteQuery'            => '',
					'insertQuery'            => ''
			)
	);
}
?>
