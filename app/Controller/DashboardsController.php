<?php
App::uses('CakeTime', 'Utility');
class DashboardsController extends AppController {
	
	public $uses = array('Contact','Deal','Event');
	
	public function index(){
		
		$current_user_id = $this->Auth->User('id');
		
		$contacts = $this->Contact->find('all',array(
				'limit'=> 4,
				'conditions'=>array(
						'Contact.user_id'=>$current_user_id
						)));
		
		$deals = $this->Deal->find('all',array(
				'limit'=> 4,
				'conditions'=>array(
						'Deal.user_id'=>$current_user_id
						)));
		
		$events = $this->Event->find('all',array(
				'limit'=> 4,
				'conditions'=>array(
						'Event.user_id'=>$current_user_id
						)));
		
		$this->set('contacts',$contacts);
		$this->set('deals',$deals);
		$this->set('events',$events);
		
		$i = 6;
		$j = 1;
		$end_date = strtotime('+7 day');
		
		for($i=14;$i>=0;$i--){
			
			$day = date('Y-m-d',strtotime('-'. $i .' day',$end_date));
			
			$temp = $this->Deal->find('all',array(
					'fields' => array('SUM(Deal.amount) as total'),
					'conditions'=>array(
							'DealStatus.name' => 'process',
							CakeTime::dayAsSql($day, 'date')
					)
			));
			
			if($temp[0][0]['total']){
				$deals_data[0][] = (int) $temp[0][0]['total'];
			} 
			else {
				$deals_data[0][] = 0;
			}
			
			$temp = $this->Deal->find('all',array(
					'fields' => array('SUM(Deal.amount) as total'),
					'conditions'=>array(
							'DealStatus.name' => 'accepted',
							CakeTime::dayAsSql($day, 'date')
					)
			));
			
			if($temp[0][0]['total']){
				$deals_data[1][] = (int) $temp[0][0]['total'];
			}
			else {
				$deals_data[1][] = 0;
			}
			
			$temp = $this->Deal->find('all',array(
					'fields' => array('SUM(Deal.amount) as total'),
					'conditions'=>array(
							'DealStatus.name' => 'rejected',
							CakeTime::dayAsSql($day, 'date')
					)
			));
			
			if($temp[0][0]['total']){
				$deals_data[2][] = (int) $temp[0][0]['total'];
			}
			else {
				$deals_data[2][] = 0;
			}
			
			$tick_day = date('M d',strtotime($day));
			$ticks[] = array($j++,$tick_day);
		}
		$this->set('deal_graph_data',$deals_data);
		$this->set('ticks',$ticks);
	}
}