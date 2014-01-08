<?php
/*
 * Controller/FullCalendarAppController.php
 * CakePHP Full Calendar Plugin
 *
 * Copyright (c) 2010 Silas Montgomery
 * http://silasmontgomery.com
 *
 * Licensed under MIT
 * http://www.opensource.org/licenses/mit-license.php
 */

class FullCalendarAppController extends AppController {

//	var $components = array('Acl', 'Session');
	var $components = array('Session');
	var $helpers =  array(
        	'Session',
        	'Html' => array('className' => 'TwitterBootstrap.BootstrapHtml'),
        	'Form' => array('className' => 'TwitterBootstrap.BootstrapForm'),
        	'Paginator' => array('className' => 'TwitterBootstrap.BootstrapPaginator'),
			'Js'=>array('Jquery')
    );

}
?>
