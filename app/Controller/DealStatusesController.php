<?php
class DealStatusesController extends AppController {
	public function index(){
		$this->set('test',$this->DealStatus->find('all'));
	}
}