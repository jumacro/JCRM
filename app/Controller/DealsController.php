<?php
class DealsController extends AppController {
	public $uses = array('Deal','Contact','User');
	public $paginate = array(
			'findType'=>'threaded',
			'limit' => 10,
			'order' => array(
					'Deal.id' => 'asc',
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
		//$this->Deal->recursive = 0;
		$this->paginate = array(
				'conditions' => $this->Deal->parseCriteria($this->passedArgs),
				'limit' => 10,
				'order' => array(
						'Deal.id' => 'asc'
				)
		);
		$deals = $this->Paginate();
		foreach ($deals as $key => $values){
			
			$deals[$key]['children'] = $this->User->find('first',array(
					'fields' => array('User.full_name'),
					'conditions'=>array('User.id'=>$deals[$key]['Contact']['user_id']),
					'contain'=>false));
		}
		$this->set('deals', $deals);
	}
	
	public function view($id = null){
		$this->Deal->id = $id;
		if(!$this->Deal->exists()){
			throw new NotFoundException('Record not found');
		}
		$deal = $this->Deal->read();
		$deal['children'] =  $this->User->find('first',array(
					'fields' => array('User.full_name'),
					'conditions'=>array('User.id'=>$deal['Contact']['user_id']),
					'contain'=>false));
		$this->set('deal',$deal);
	}
	
	public function add(){
		$contacts = $this->Deal->Contact->find('list',array(
				'fields' => array(
					'Contact.id', 
					'Contact.company_name'
					),
				'conditions'=>array(
					'Contact.user_id'=>$this->Auth->user('id'),
					'NOT' => array(
							'Contact.name' => null
						)

					)
				));
		$this->set(compact('contacts'));
		
		$users = $this->User->find('list');
 		$this->set(compact('users'));
		
		if(empty($contacts)) {
			$add_contact_url = Router::url(array('controller'=>'contacts','action'=>'add'),true);
			$add_contact_link = '<a href="' . $add_contact_url . '" >Click here</a>';
			$this->Session->setFlash('Please add contacts first. To add contact ' . $add_contact_link,'alert',array('class'=>'alert-info'));
		}
		$deal_statuses = $this->Deal->DealStatus->find('list');
		$this->set(compact('deal_statuses'));
		if($this->request->is('post')){
			$this->request->data['Deal']['user_id'] = $this->Auth->user('id');
			$this->Deal->create();
			if($this->Deal->save($this->request->data)){
				$this->Session->setFlash('New deal added','alert');
				$this->redirect(array('action'=>'index'));
			}
			else
			{
				$this->Session->setFlash('Unable to add','alert', array('class'=>'alert-error'));
			}
		}
	}
	
	public function edit($id = null){
		$this->Deal->id = $id;
		if(!$this->Deal->exists()){
			throw new NotFoundException('Record not found');
		}
		
		$user_id = $this->Deal->read('Deal.user_id', $id);
		if ($user_id['Deal']['user_id'] != $this->Auth->user('id')) {
			$this->Session->setFlash('Oops! Looks like you are not the owner of Deal. Only the user corresponding to the deal can edit it.','alert',array('class'=>'alert-error'));
			$this->redirect(array('action'=>'index'));
		}
		if($this->request->is('post')){
			if($this->Deal->save($this->request->data)){
				$this->Session->setFlash('Deal saved','alert');
				$this->redirect(array('action'=>'index'));
			}
			else
			{
				$this->Session->setFlash('Unable to save changes','alert', array('class'=>'alert-error'));
			}
		}
		else
		{
			$contacts = $this->Deal->Contact->find('list',array(
				'fields' => array(
					'Contact.id', 
					'Contact.company_name'
					),
				
				'conditions'=>array(
					'Contact.user_id'=>$this->Auth->user('id'),
					'NOT' => array(
							'Contact.name' => null
						)

					)
				));
			$this->set(compact('contacts'));
			$deal_statuses = $this->Deal->DealStatus->find('list');
			$this->set(compact('deal_statuses'));
			$this->request->data = $this->Deal->read();
		}
	}
	
	public function delete($id = null){
		if (!$this->request->is('post')) {
			throw new MethodNotAllowedException();
		}
		$this->Deal->id = $this->request->data['id']; //--
		if(!$this->Deal->exists()){
			throw new NotFoundException('Record not found');
		}
		$user_id = $this->Deal->read('Deal.user_id',$id);
		if ($user_id['Deal']['user_id'] == $this->Auth->user('id')){
			if($this->Deal->delete($id)){
				$this->Session->setFlash('Deal deleted','alert');
				$this->redirect(array('action'=>'index'));
			}
			else
			{
				$this->Session->setFlash('Unable to delete','alert', array('class'=>'alert-error'));
				$this->redirect(array('action'=>'index'));
			}
		}
		else {
			$this->Session->setFlash(__('Oops! Looks like you are not the owner of Deal. Only the user corresponding to the deal can delete it.'),'alert',array('class'=>'alert-error'));
			$this->redirect(array('acion'=>'index'));
		}
	}
}
