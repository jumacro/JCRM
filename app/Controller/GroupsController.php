<?php
class GroupsController extends AppController {
	public function beforeFilter() {
		parent::beforeFilter();
	
		// For CakePHP 2.1 and up
		//$this->Auth->allow();
	}
	
	public function index(){
		$groups = $this->Group->find('list');
		$this->set('groups',$groups);
	}
	
	public function view() {
		
	}
	
	public function add() {
		if ($this->request->is('post')) {
			$this->Group->create();
			if ($this->Group->save($this->request->data)) {
				$this->Session->setFlash(__('The user has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user could not be saved. Please, try again.'));
			}
		}
	}
	
	public function edit() {
		
	}
	
	public function delete() {
		
	}
}