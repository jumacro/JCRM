<?php
class Contact extends AppModel {
	
	public $belongsTo = array(
			'ContactStatus' => array(
					'className' => 'ContactStatus',
					'foreignKey' => 'contact_status_id'
					),
			'User' => array(
					'className' => 'User',
					'foreignKey' => 'user_id'
					)
			);
	
	public $hasMany = 'Deal';
			
		
	public $leadTo = array(
			'LeadStatus' => array(
					'className' => 'LeadStatus',
					'foreignKey' => 'lead_status_id'
					),
			'Users' => array(
					'className' => 'Users',
					'foreignKey' => 'users_id'
					)
			);
	
	public $LeadMany = 'Deals';		
	public $actsAs = array(
			'Search.Searchable',
			'Upload.Upload' => array(
					'photo' => array(
							'fields' => array(
									'dir' => 'photo_dir'
							),
							'thumbnailSizes' => array(
									'view' => '100x120',
									'thumb' => '20x30'
							),
							'thumbnailMethod' => 'php', //GD library instead of imagick
							'thumbnailQuality' => '8'
					)
			)
	);

	public $filterArgs = array(
			'search_name' => array('type'=>'like','field'=>array('Contact.name','Contact.lead_source')),
			'search_designation' => array('type'=>'like','field'=>'Contact.designation'),
			'search_city' => array('type'=>'like','field'=>'Contact.city'),
			'search_company' => array('type'=>'like','field'=>'Contact.company'),
			'search_industry' => array('type'=>'like','field'=>'Contact.industry'),
			'search_area' => array('type'=>'like','field'=>'Contact.area'),
			'search_address' => array('type'=>'like','field'=>'Contact.address'),
			'search_phone' => array('type'=>'like','field'=>'Contact.phone'),
			'search_email' => array('type'=>'value','field'=>'Contact.email'),
			'search_all' => array('type'=>'query','method'=>'searchDefault')
	);
	
	public function searchDefault($data = array()) {
		$filter = $data['search_all'];
		$cond = array(
				'OR' => array(
						$this->alias . '.name LIKE' => '%' . $filter . '%',
						$this->alias . '.designation LIKE' => '%' . $filter . '%',
						$this->alias . '.lead_source LIKE' => '%' . $filter . '%',
						$this->alias . '.city LIKE' => '%' . $filter . '%',
						$this->alias . '.company LIKE' => '%' . $filter . '%',
						$this->alias . '.industry LIKE' => '%' . $filter . '%',
						$this->alias . '.area LIKE' => '%' . $filter . '%',
						$this->alias . '.address LIKE' => '%' . $filter . '%'
				));
		return $cond;
	}
	
	public $virtualFields = array(
			"full_name"=>"CONCAT(Contact.name, ' ' ,Contact.lead_source)",
			"company_name" => "CONCAT(Contact.name, ', ', Contact.company)"
			);
	
	public $displayField = 'full_name';
	//public $hasMany = array('Deal'=>array('className'=>'Deal'));
	
	public $validate = array(
		'first_name' => array(
			'length' => array(
				'rule' => array('maxLength',40),
				'message' => 'Maximum length 40 Character'
			)
		),
		'designation' => array(
			'length' => array(
				'rule' => array('maxLength',40),
				'message' => 'Maximum length 40 Character'
			)
		),
		'lead_source' => array(
			'length' => array(
				'rule' => array('maxLength',40),
				'message' => 'Maximum length 40 Character'
			)
		),
		'company' => array(
			'length' => array(
				'rule' => array('maxLength',40),
				'message' => 'Maximum length 40 Character'
			),
			'unique' => array(
		        'rule' => 'isUnique',
		        'message' => 'Company already added'
		    )
		),
		'industry' => array(
			'length' => array(
				'rule' => array('maxLength',40),
				'message' => 'Maximum length 40 Character'
			)
		),
		'area' => array(
			'length' => array(
			'rule' => array('maxLength',40),
				'message' => 'Maximum length 40 Character'
			)
		),
		'address' => array(
			'length' => array(
				'rule' => array('maxLength',255),
				'message' => 'Maximum length 255 Character'
			)
		),
		'city' => array(
			'length' => array(
				'rule' => array('maxLength',40),
				'message' => 'Maximum length 40 Character'
			)
		),
		'phone' => array(
			'rule' => array('numeric'),
			'required' => true,
			'message' => 'Please check phone number'
		),
		'email' => array(
			'rule' => 'email',
			'required' => true,
			'message' => 'Please check email'
		)
	);
}
