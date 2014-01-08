<?php
class User extends AppModel {
	public $belongsTo = 'Group';
	
	//public $hasMany = 'Contact';
	
	public $virtualFields = array("full_name"=>"CONCAT(User.first_name, ' ' ,User.last_name)");
	
	public $displayField = 'full_name';
	
	public $validate = array(
        'username' => array(
            'required' => array(
                'rule' => array('notEmpty'),
                'message' => 'A username is required'
            )
        ),
        'password' => array(
            'required' => array(
                'rule' => array('notEmpty'),
                'message' => 'A password is required'
            )
        )
    );
	
	public $actsAs = array('Acl' => array('type' => 'requester'),
			'Search.Searchable'
	);
	
	public $filterArgs = array(
			'search_username' => array('type'=>'value','field'=>'User.username'),
			'search_name' => array('type'=>'like','field'=>array('User.first_name','User.last_name')),
			'search_group' => array('type'=>'value','field'=>'Group.name'),
			'search_email' => array('type'=>'value','field'=>'User.email'),
			'search_all' => array('type'=>'query','method'=>'searchDefault')
	);
	
	public function searchDefault($data = array()) {
		$filter = $data['search_all'];
		$cond = array(
				'OR' => array(
						$this->alias . '.username LIKE' => '%' . $filter . '%',
						$this->alias . '.first_name LIKE' => '%' . $filter . '%',
						$this->alias . '.last_name LIKE' => '%' . $filter . '%',
						'Group.name LIKE' => '%' . $filter . '%',
						$this->alias . '.email LIKE' => '%' . $filter . '%'
				));
		return $cond;
	}
	public function parentNode() {
		if (!$this->id && empty($this->data)) {
			return null;
		}
		if (isset($this->data['User']['group_id'])) {
			$groupId = $this->data['User']['group_id'];
		} else {
			$groupId = $this->field('group_id');
		}
		if (!$groupId) {
			return null;
		} else {
			return array('Group' => array('id' => $groupId));
		}
	}
	

	
	public function beforeSave($options = array()) {
		if (isset($this->data[$this->alias]['password'])) {
	        $this->data[$this->alias]['password'] = AuthComponent::password($this->data[$this->alias]['password']);
	    }
		return true;
	}
}