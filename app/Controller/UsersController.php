<?php
App::uses('CakeEmail', 'Network/Email');
class UsersController extends AppController {
	
	//public $uses = array('User','Group');
	public $paginate = array(
			'limit' => 6,
			'order' => array(
					'User.id' => 'asc'
			)
	);
	
	public function beforeFilter() {
		parent::beforeFilter();
	
		$this->Auth->allow('forgot','reset');
	}
	
	public function bindNode($user) {
		return array('model' => 'Group', 'foreign_key' => $user['User']['group_id']);
	}
	
	public function login(){
		if ($this->request->is('post')) {
			$user_active = $this->User->find('first',array('fields'=>'active','conditions'=>array('User.username'=>$this->request->data['User']['username'])));
			if(!empty($user_active)){
				if ($user_active['User']['active']){
					if ($this->Auth->login()) {
						$this->redirect($this->Auth->redirect());
					} else {
						$this->Session->setFlash(__('Invalid username or password, try again'),'alert',array('class'=>'alert-error'));
					}
				}
				else {
					$this->Session->setFlash(__('User not active'),'alert',array('class'=>'alert-error'));
				}
			}
			else {
				$this->Session->setFlash(__('User not found'),'alert',array('class'=>'alert-error'));
			}
		}
	}
	
	public function logout(){
		$this->redirect($this->Auth->logout());
	}
	
	public function index(){
		$searched = false;
		if ($this->passedArgs) {
			$args = $this->passedArgs;
			if(isset($args['search_name'])){
				$searched = true;
			}
		}
		$this->set('searched',$searched);
		
		$this->Prg->commonProcess();
		//$this->User->recursive = 0;
		$this->paginate = array(
				'conditions' => $this->User->parseCriteria($this->passedArgs),
				'limit' => 6,
				'order' => array(
						'User.id' => 'asc'
				)
		);
		$this->set('users',$this->paginate());
	}
	
	public function view($id = null){
		$this->User->id = $id;
		if (!$this->User->exists()) {
			throw new NotFoundException(__('Invalid user'));
		}
		$this->set('user', $this->User->read(null, $id));
	}
	
	public function add(){
		if ($this->request->is('post')) {
			$user_with_this_username = $this->User->findByUsername($this->request->data['User']['username']);
			$user_with_this_email = $this->User->findByEmail($this->request->data['User']['email']);
			if(!empty($user_with_this_username)) {
				$this->Session->setFlash(__('Username already exists. Please chose another one.'),'alert',array('class'=>'alert-error'));
			}
			elseif (!empty($user_with_this_email)){
				$this->Session->setFlash(__('Email is already registered by another user. Please chose another one.'),'alert',array('class'=>'alert-error'));
			}
			else {
				$this->User->create();
				if ($this->User->save($this->request->data)) {
					$email = new CakeEmail();
					$email->from('admin@wvs.in');
					$email->to($this->request->data['User']['email']);
					$email->subject('New user added');
					$email->template('newuser');
					$email->theme('Default');
					$email->emailFormat('both');
					$email->viewVars(array('username'=>$this->request->data['User']['email'],'password'=>$this->request->data['User']['password']));
					$email->send("New user added mail");
					$this->Session->setFlash(__('The user has been saved'));
					$this->redirect(array('action' => 'index'));
				} else {
					$this->Session->setFlash(__('The user could not be saved. Please, try again.'));
				}
			}
		}
		$grouplist = $this->User->Group->find('list');
		$this->set('grouplist',$grouplist);
	}
	
	public function edit($id = null){
		$this->User->id = $id;
		if (!$this->User->exists()) {
			throw new NotFoundException(__('Invalid user'));
		}
		if (($this->Auth->user('group_id') != 1) and ($id != $this->Auth->user('id'))) {
			$this->Session->setFlash(__('You do not have permission to edit other users detail'),'alert',array('class'=>'alert-error'));
			$this->redirect(array('action'=>'edit',$this->Auth->user('id')));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			
			$other_user_with_this_email = $this->User->findByEmail($this->request->data['User']['email']);
			if (!empty($other_user_with_this_email) and ($other_user_with_this_email['User']['id'] != $id)) {
				$this->Session->setFlash(__('User with this email already exists, please chose another email'),'alert',array('class'=>'alert-error'));
			}
			else {
				if ($this->request->data['User']['new_password']) {
					if ($this->request->data['User']['new_password'] === $this->request->data['User']['confirm']) {
						$this->request->data['User']['password'] = $this->request->data['User']['new_password'];
					}
					else {
						$this->Session->setFlash(__('Password not updated'),'alert',array('class'=>'alert-info'));
					}
				}
				if (($this->Auth->user('group_id') != 1) or ($id == $this->Auth->user('id'))) {
					unset($this->request->data['User']['group_id']);
				}
				if ($this->User->save($this->request->data)) {
					$this->Session->setFlash('User details has been saved','alert',array('class'=>'alert-success'));
					//$this->redirect(array('action' => 'index'));
				} else {
					$this->Session->setFlash(__('The user could not be saved. Please, try again.'));
				}
			}
		} 
		$this->request->data = $this->User->read(null, $id);
		unset($this->request->data['User']['password']);
		$grouplist = $this->User->Group->find('list');
		$this->set('grouplist',$grouplist);
	}
	
	public function delete($id = null){
		if (!$this->request->is('post')) {
			throw new MethodNotAllowedException();
		}
		$this->User->id = $id;
		if (!$this->User->exists()) {
			throw new NotFoundException(__('Invalid user'));
		}
		if ($id == 1) {
			$this->Session->setFlash(__('Cannot delete supperuser'),'alert',array('class'=>'alert-error'));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->User->delete($id)) {
			$this->Session->setFlash(__('User deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('User was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
	
	public function forgot(){
		if ($this->request->is('post')) {
			$user_data = $this->User->find('first',array('fields'=>array('id','email'),'conditions'=>array('User.username'=>$this->request->data['User']['username'])));
			if(!empty($user_data)){
				$key = Security::generateAuthKey();
				$this->User->id = $user_data['User']['id'];
				if ($this->User->saveField('token',$key)) {
					$url = Router::url(array('plugin'=>'','controller'=>'users','action'=>'reset'),true) . '/' . $key . '#' . substr( str_shuffle( 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$' ) , 0 , 20 );
					
					$email = new CakeEmail();
					$email->from('admin@wvs.in');
					$email->to($user_data['User']['email']);
					$email->subject('Password reset link');
					$email->template('resetlink');
					$email->theme('Default');
					$email->emailFormat('both');
					$email->viewVars(array('url'=>$url));
					if($email->send("New user added mail")) {
						$this->Session->setFlash(__('Password reset link has been sent to your email. Please check your mail.'),'alert',array('class'=>'alert-success'));
					}
					else {
						$this->Session->setFlash(__('Mail cannot be sent'),'alert',array('class'=>'alert-error'));
					}
				}
				else {
					$this->Session->setFlash(__('Cannot save token key'),'alert',array('class'=>'alert-error'));
				}
			}
			else {
				$this->Session->setFlash(__('Username not found'),'alert',array('class'=>'alert-error'));
			}
		}
	}
	
	public function reset($token = null){
		if ($token){
			$user_data = $this->User->findByToken($token);
			if (!empty($user_data)){
				$new_password = substr( str_shuffle( 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$' ) , 0 , 8 );
				$new_token = substr( str_shuffle( 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$' ) , 0 , 39 );
				$new_token .= '#';
				$new_token = str_shuffle($new_token);
				$this->User->id = $user_data['User']['id'];
				$this->User->saveField('token',$new_token);
				$this->User->saveField('password',$new_password);
				
				$email = new CakeEmail();
				$email->from('admin@wvs.in');
				$email->to($user_data['User']['email']);
				$email->subject('New password');
				$email->template('newpassword');
				$email->theme('Default');
				$email->emailFormat('both');
				$email->viewVars(array('username'=>$user_data['User']['username'],'password'=>$new_password));
				if ($email->send("New password")) {
					$this->set('success',true);
					$this->Session->setFlash(__('A new password has been sent to your email. Please login and change it.'),'alert',array('class'=>'alert-success'));
				}
			}
			else {
				$this->set('success',false);
				$this->Session->setFlash(__('Invalid token or link has expired'),'alert',array('class'=>'alert-error'));
			}
		}
	}
	
	public function initacl() {
		$group = $this->User->Group;
		//Allow admins to everything
		$group->id = 3;
		//$this->Acl->allow($group, 'controllers');
	
		//allow managers to posts and widgets
		/* $group->id = 2;
		$this->Acl->deny($group, 'controllers');
		$this->Acl->allow($group, 'controllers/Posts');
		$this->Acl->allow($group, 'controllers/Widgets');
	*/
		//allow users to only add and edit on posts and widgets
		//$group->id = 3;
		//$this->Acl->deny($group, 'controllers');
		//$this->Acl->deny($group, 'controllers/Users','add');
		//$this->Acl->deny($group, 'controllers/Users','delete');
		//$this->Acl->allow($group, 'controllers/Widgets/add');
		//$this->Acl->allow($group, 'controllers/Widgets/edit'); 
		//we add an exit to avoid an ugly "missing views" error message
		echo "all done";
		exit;
	}
}