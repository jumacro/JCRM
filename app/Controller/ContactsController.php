<?php
class ContactsController extends AppController {
	public $components = array('RequestHandler');
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
		$users = $this->Contact->User->find('list');
		$this->set(compact('contactstatuses'));
		$this->set(compact('users'));
		
		if($this->request->is('post')){
			//$this->request->data['Contact']['user_id'] = $this->Auth->user('id');
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
	
	
	public function find() {
  $this->Company->recursive = -1;
  if ($this->request->is('ajax')) {
    $this->autoRender = false;
    $results = $this->Company->find('all', array(
      'fields' => array('Company.name'),
      //remove the leading '%' if you want to restrict the matches more
      'conditions' => array('Company.name LIKE ' => '%' . $this->request->query['q'] . '%')
    ));
	print_r($results);
  //  foreach($results as $result) {
//      echo $result['Company']['name'] . "\n";
//    }
 
  } else {
  	//if the form wasn't submitted with JavaScript
    //set a session variable with the search term in and redirect to index page
    $this->Session->write('companyName',$this->request->data['Company']['name']);
    $this->redirect(array('action' => 'index'));
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
			$users = $this->Contact->User->find('list');
			$this->set(compact('contactstatuses'));
			$this->set(compact('users'));
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
	public function autocomplete(){
       $resCompany = array();
       
        if(!empty($_GET['term'])){
            $term = $_GET['term'];
            $condition = array();
            $fields = array(
                'Contact.company'
            );
            //set the default order array
            
            $search_data = $term;
            $orderBy = "";
            $keywordCond = array();
            //remove white spaces
            $kw = trim($search_data);
            
            $condition[] = array(
                    "Contact.company LIKE" => $kw . "%"
                );

            //generating order by
            //$orderBy = implode(" , ", $orderByArr);
	        $orderBy = array(
	            'Contact.company' => 'ASC' 
	        );

            $this->Contact->query('SET CHARACTER SET utf8');
            $companies = $this->Contact->find('all', array(
                'fields' => $fields,
                'conditions' => $condition,
                'order' => $orderBy
            ));
            //pr($cities); exit;
            
            if($companies){
                foreach($companies as $company){
                    $str = $company['Contact']['company'];
                    $resCompany[$str] = $company['Contact']['company'];
                }
            }
        }
        $this->set(compact('resCompany'));
        $this->set('_serialize', array('resCompany')); 
    }
}