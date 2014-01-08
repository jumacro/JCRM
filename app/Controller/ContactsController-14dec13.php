<?php
class ContactsController extends AppController {
	public $uses = array('Contact','ContactStatus','Deal','User','Event','EventType');
	public $paginate = array(
        'limit' => 10,
        'order' => array(
            'Contact.id' => 'asc'
        )
    );
	
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
		//$this->Contact->recursive = 0;
		$this->paginate = array(
				'conditions' => $this->Contact->parseCriteria($this->passedArgs),
				'limit' => 10,
				'order' => array(
						'Contact.id' => 'asc'
				)
		);
		$this->set('contacts', $this->Paginate());
	}
	
	public function view($id = null){
		$this->Contact->id = $id;
		if(!$this->Contact->exists()){
			throw new NotFoundException('Record not found');
		}
		$this->set('contact',$this->Contact->read());
		$deals = $this->Deal->find('all',array(
				'limit'=>5,
				'conditions'=>array(
						'Deal.contact_id'=>$id
						)
				)
		);
		foreach ($deals as $key => $values){
				
			$deals[$key]['children'] = $this->User->find('first',array(
					'fields' => array('User.full_name'),
					'conditions'=>array('User.id'=>$deals[$key]['Contact']['user_id']),
					'contain'=>false));
		}
		$this->set('deals', $deals);
		
		$this->Event->bindModel(array('hasOne' => array('ContactsEvent')), false);
		
		//$this->Event->Behaviors->load('Containable');
		
		$this->set('events',$this->Event->find('all',array(
				'conditions'=>array('ContactsEvent.contact_id'=>$id),
				'limit'=>5
				)
		)
		);
	}
	
	public function add(){
		$contactstatuses = $this->ContactStatus->find('list');
		$this->set(compact('contactstatuses'));
		
		if($this->request->is('post')){
			$this->request->data['Contact']['user_id'] = $this->Auth->user('id');
			$this->Contact->create();
			if($this->Contact->save($this->request->data)){
				$this->Session->setFlash('New contact added','alert');
				$this->redirect(array('action'=>'index'));
			}
			else
			{
				$this->Session->setFlash('Unable to add','alert', array('class'=>'alert-error'));
			}
		}
	}
	
	public function edit($id = null){
		$this->Contact->id = $id;
		if(!$this->Contact->exists()){
			throw new NotFoundException('Record not found');
		}
		$extra_msg = '';
		$user_id = $this->Contact->read('Contact.user_id', $id);
		if($user_id['Contact']['user_id'] != $this->Auth->user('id')) {
			$this->Session->setFlash(__('Oops! Looks like you are not the owner of Contact. Only the user corresponding to the contact can edit it.'),'alert',array('class'=>'alert-error'));
			$this->redirect(array('action'=>'index'));
		}
		if($this->request->is('post')){
		
			if($this->Contact->save($this->request->data)){
				$this->Session->setFlash('Contact data saved ','alert');
				$this->redirect(array('action'=>'index'));
			}
			else
			{
				$this->Session->setFlash('Unable to save changes','alert', array('class'=>'alert-error'));
			}
		}
		else
		{
			$contactstatuses = $this->ContactStatus->find('list');
			$this->set(compact('contactstatuses'));
			$this->request->data = $this->Contact->read();
		}
	}
	
	public function delete($id = null){
		if (!$this->request->is('post')) {
			throw new MethodNotAllowedException();
		}
		$this->Contact->id = $this->request->data['id']; //--
		if(!$this->Contact->exists()){
			throw new NotFoundException('Record not found');
		}
		$user_id = $this->Contact->read('Contact.user_id',$id);
		if ($user_id['Contact']['user_id'] == $this->Auth->user('id')) {
			if($this->Contact->delete($id)){
				$this->Session->setFlash('Contact deleted','alert');
				$this->redirect(array('action'=>'index'));
			}
			else
			{
				$this->Session->setFlash('Unable to delete','alert', array('class'=>'alert-error'));
				$this->redirect(array('action'=>'index'));
			}
		}
		else {
			$this->Session->setFlash(_('Oops! Looks like you are not the owner of Contact. Only the user corresponding to the contact can delete it.'),'alert',array('class'=>'alert-error'));
			$this->redirect(array('action'=>'index'));
		}
	}
}