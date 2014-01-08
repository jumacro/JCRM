<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */

App::uses('Controller', 'Controller');

/**
 * Application Controller
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package       app.Controller
 * @link http://book.cakephp.org/2.0/en/controllers.html#the-app-controller
 */
class AppController extends Controller {

	public $theme = 'Default';
	
	public $components = array(
			'Session',
			'Acl',
			'Email',
			'Auth' => array(
					'loginRedirect' => array('controller' => 'dashboards', 'action' => 'index'),
					'logoutRedirect' => array('controller' => 'users', 'action' => 'login'),
					'authorize' => array(
							
							)
			),
			'Search.Prg'
	);
	
	public $helpers = array(
			'Session',
			'Time',
			'Html' => array('className' => 'TwitterBootstrap.BootstrapHtml'),
			'Form' => array('className' => 'TwitterBootstrap.BootstrapForm'),
			'Paginator' => array('className' => 'TwitterBootstrap.BootstrapPaginator')
			
    );
	
	public $uses = array('Option');
	
	public function beforeFilter(){
		$this->Auth->authError = "You need to login!!";
		
		$option_title = $this->Option->find('first',array('conditions'=>array('name'=>'title')));
		if(!empty($option_title)){
			$this->set('title',$option_title['Option']['value']);
		}
		else {
			$this->set('title','');
		}
		
		$option_copyright = $this->Option->find('first',array('conditions'=>array('name'=>'copyright')));
		if(!empty($option_copyright)){
			$this->set('copyright',$option_copyright['Option']['value']);
		}
		else {
			$this->set('copyright','');
		}
		$temp_logo = $option_copyright['Option']['logo_dir'] . "/l_" . $option_copyright['Option']['logo'];
		$this->set('logo',$temp_logo);
		/*
		$option_logo = $this->Option->find('first',array('conditions'=>array('name'=>'logo')));
		if(!empty($option_logo)){
			$this->set('logo',$option_logo['Option']['value']);
		}
		else {
			$this->set('logo','');
		}*/
	}
	
	public function beforeRender()
	{
		// only compile it on development mode
		if (Configure::read('debug') > 0)
		{
			// import the file to application
			App::import('Vendor', 'lessc');
	
			// set the LESS file location
			$less = ROOT . DS . APP_DIR . DS .'View'.DS.'Themed'.DS.'Default'.DS. 'webroot' . DS . 'less' . DS . 'styleless.less';
	
			// set the CSS file to be written
			$css = ROOT . DS . APP_DIR . DS .'View'.DS.'Themed'.DS.'Default'.DS. 'webroot' . DS . 'css' . DS . 'styleless.css';
	
			// compile the file
			lessc::ccompile($less, $css);
		}
		parent::beforeRender();
	}
	
	public function isAuthorized($user) {
		// Admin can access every action
		/*if (isset($user['role']) && $user['role'] === 'admin') {
			return true;
		}*/
	
		// Default deny
		return true;// allow all for now
	}
		
}
