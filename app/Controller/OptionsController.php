<?php
class OptionsController extends AppController {
	
	public function index(){
		$this->set('options',$this->Option->find('all'));
	}
	
	public function edit(){
		if($this->request->is('post')){
			$extra_msg = '';
			$option_title = $this->Option->findByName('title');
			if(!empty($option_title)){
				$this->Option->id = $option_title['Option']['id'];
				$option_data['Option']['name'] = 'title';
				//$option_data['Option']['logo'] = $this->request->data['Option']['logo'];
				//$option_data['Option']['logo_dir'] = $this->request->data['Option']['logo_dir'];
				//$this->Option->saveField('value',$this->request->data['Option']['title']);
				$this->Option->save($option_data);
			}
			else {
				$option_data['Option']['name'] = 'title';
				$option_data['Option']['value'] = $this->request->data['Option']['title'];
				//$option_data['Option']['logo'] = $this->request->data['Option']['logo'];
				//$option_data['Option']['logo_dir'] = $this->request->data['Option']['logo_dir'];
				$this->Option->create();
				$this->Option->save($option_data);
			}
			
			$option_copyright = $this->Option->findByName('copyright');
			if(!empty($option_copyright)){
				$this->Option->id = $option_copyright['Option']['id'];
				$option_data['Option']['name'] = 'copyright';
				$option_data['Option']['logo'] = $this->request->data['Option']['logo'];
				$option_data['Option']['logo_dir'] = $this->request->data['Option']['logo_dir'];
				$option_data['Option']['value'] = $this->request->data['Option']['copyright'];
				$this->Option->save($option_data);
				//$this->Option->saveField('value',$this->request->data['Option']['copyright']);
			}
			else {
				$option_data['Option']['name'] = 'copyright';
				$option_data['Option']['logo'] = $this->request->data['Option']['logo'];
				$option_data['Option']['logo_dir'] = $this->request->data['Option']['logo_dir'];
				$option_data['Option']['value'] = $this->request->data['Option']['copyright'];
				$this->Option->create();
				$this->Option->save($option_data);
			}
			
			//$option_logo = $this->Option->findByName('logo');
			/*
			if(!empty($option_logo)) {
				$logo_file = $this->request->data['Option']['logo_file'];
				if(!empty($logo_file['name'])){
					$res = copy($logo_file['tmp_name'],$fp='files/logo/'.$logo_file['name']);
					if($res)
					{
						chmod($fp,0777);
						$this->Option->id = $option_logo['Option']['id'];
						$this->Option->saveField('value',$logo_file['name']);
					}
				}
			}
			else {
				$logo_file = $this->request->data['Option']['logo_file'];
				if(!empty($logo_file['name'])){
					$res = copy($logo_file['tmp_name'],$fp='files/logo/'.$logo_file['name']);
					if($res)
					{
						chmod($fp,0777);
						$option_data['Option']['name'] = 'logo';
						$option_data['Option']['value'] = $logo_file['name'];
						$this->Option->create();
						$this->Option->save($option_data);
					} else $extra_msg = 'cannot copy';
				} else $extra_msg ="no picture";
			}*/
			$this->Session->setFlash(__('Settings saved. '),'alert',array('class'=>'alart-success'));
		}
		$option_title = $this->Option->find('first',array('conditions'=>array('name'=>'title')));
		if(!empty($option_title)){
			$this->request->data['Option']['title'] = $option_title['Option']['value'];
		}
		else {
			$this->request->data['Option']['title'];
		}
		
		$option_copyright = $this->Option->find('first',array('conditions'=>array('name'=>'copyright')));
		if(!empty($option_copyright)){
			$this->request->data['Option']['copyright'] = $option_copyright['Option']['value'];
		}
		else {
			$this->request->data['Option']['copyright'] = '';
		}
	}
}