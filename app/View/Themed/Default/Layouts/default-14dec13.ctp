<!DOCTYPE html>
<html lang="en">
  <head>
    <?php echo $this->Html->charset(); ?>
    <title><?php echo 'Micra - CRM'; ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php
		echo $this->Html->meta('icon');

		echo $this->Html->css('bootstrap');
		echo $this->Html->css('bootstrap-responsive.min');
		echo $this->Html->css('font-awesome.min');
		echo $this->Html->css('custom'); //costom css
		echo $this->Html->css('styleless'); //dynamic css
		
		echo $this->Html->css('start/jquery-ui');
		//echo $this->Html->css('redmond/jquery-ui');
		//echo $this->Html->css('cupertino/jquery-ui');
		echo $this->Html->css('jquery-ui-timepicker-addon');
		
		echo $this->Html->script('jquery');
		echo $this->Html->script('bootstrap.min');
		
		echo $this->Html->script('jquery.validate.min');
		echo $this->Html->script('jquery-ui-1.9.2.custom.min');
		echo $this->Html->script('jquery-ui-timepicker-addon');
		
		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
	?>
	<script>
		
	</script>
    <!-- Le styles -->
   
    <style type="text/css">
      body {
        padding-bottom: 0px;
        background-color:#fffaee;
      }
      
     .masthead .nav {
     	margin-bottom: 10px;
     }
     .navbar-search {
     	margin-top:0px;
     }
	  a.btn {
		button.btn
	  }
	 .nav > li > a.no-hover:hover {
	 	text-decoration:none;
	 	background: transparent;
	 	color:rgb(0,136,204);
	 	background-image: none;
	 }
	 .dropdown:hover .dropdown-menu {
    /*display: block;*/
	}
	.copyright .dropup {
		display:inline-block;
	}
	
    </style>
    
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="../assets/ico/favicon.png">
  </head>

  <body>
	<div class="navbar navbar-static-top">
		<div class="navbar-inner micra-nav">
			<div class="container"><div class="logo">
				<a class="brand muted" href="<?php echo $this->Html->url('/'); ?>">
				<?php echo $this->Html->image('../files/option/logo/'.$logo,array('class'=>'','height'=>'50px')); ?>
				<?php echo 'Micra CRM'; ?></a></div>
				<ul class="nav">
	    		  		<li class="<?php if($this->params['controller']=='dashboards') echo 'active'; ?>"><a href="<?php echo $this->Html->url(array('plugin'=>'','controller'=>'dashboards','action'=>'index')); ?>"><span><i class="icon-dashboard"></i></span>DASHBOARD</a></li>
		          		<li class="<?php if($this->params['controller']=='contacts') echo 'active'; ?>"><a href="<?php echo $this->Html->url(array('plugin'=>'','controller'=>'contacts','action'=>'index')); ?>"><span><i class="icon-list"></i></span>CONTACTS</a></li>
		          		<li class="<?php if($this->params['controller']=='deals') echo 'active'; ?>"><a href="<?php echo $this->Html->url(array('plugin'=>'','controller'=>'deals','action'=>'index')); ?>"><span><i class="icon-thumbs-up"></i></span>DEALS</a></li>
		          		<li class="<?php if($this->params['plugin']=='full_calendar') echo 'active'; ?>"><a href="<?php echo $this->Html->url(array('plugin'=>'full_calendar','controller'=>'full_calendar','action'=>'index'));?>"><span><i class="icon-calendar"></i></span>CALENDAR</a></li>
		        </ul>
			    <ul class="nav pull-right">
        			<?php if($this->Session->read('Auth.User')): ?>
		        	<li class="<?php if(($this->params['controller']=='users') and ($this->params['action']=='edit')) echo 'active'; ?>"><a href="<?php echo $this->Html->url(array('plugin'=>'','controller'=>'users','action'=>'edit',AuthComponent::user('id'))); ?>"><span><i class="icon-user"></i></span>Hi, <?php echo AuthComponent::user('full_name'); ?></a></li>
		        	<?php  if (AuthComponent::user('group_id')==1): ?>
		        	<li class="dropdown <?php if(($this->params['controller']=='users') and ($this->params['action']=='index')) echo 'active'; ?>">
		        		<a class="dropdown-toggle"
					       data-toggle="dropdown"
					       href="#"><span><i class="icon-cogs"></i></span>
					        Admin
					        <i class="icon-angle-down"></i>
					    </a>
						<ul class="dropdown-menu" >
						      <li><?php echo $this->Html->link('Users',array('plugin'=>'','controller'=>'users','action'=>'index')); ?></li>
						</ul>
		        	</li>
		        	<?php endif; ?>
		       		<li><a href="<?php echo $this->Html->url(array('plugin'=>'','controller'=>'users','action'=>'logout')); ?>"><span><i class="icon-lock"></i></span>Logout</a></li>
		        	<?php else: ?>
		        	<li class="<?php if($this->params['controller']=='users' && $this->params['action']=='login') echo 'active'; ?>"><a href="<?php echo $this->Html->url(array('plugin'=>'','controller'=>'users','action'=>'login')); ?>"><span><i class="icon-lock"></i></span>Login</a></li>
		        	<?php endif; ?>
		        </ul>
			</div>
		</div>
	</div>
    <div class="container main-wraper">

		<?php echo $this->Session->flash('flash',array('element'=>'alert')); ?>
		<?php echo $this->Session->flash('auth',array('element'=>'alert')); ?>
		<?php echo $this->fetch('content'); ?>

    </div> <!-- /container -->
	 
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	<?php
	echo $this->Html->script('bootstrap-transition');
	echo $this->Html->script('bootstrap-alert');
	echo $this->Html->script('bootstrap-modal');
	echo $this->Html->script('bootstrap-dropdown');
	//echo $this->Html->script('bootstrap-scrollspy');
	echo $this->Html->script('bootstrap-tab');
	echo $this->Html->script('bootstrap-tooltip');
	//echo $this->Html->script('bootstrap-popover');
	echo $this->Html->script('bootstrap-button');
	echo $this->Html->script('bootstrap-collapse');
	//echo $this->Html->script('bootstrap-carousel');
	echo $this->Html->script('bootstrap-typeahead');
	?>
	<script>
	$(document).ready(function(){
   		 $('.dropdown-toggle').dropdown();
   	//Add Hover effect to menus
   		jQuery('ul.nav li.dropdown').hover(function() {
   		  jQuery(this).find('.dropdown-menu').stop(true, true).delay(50).fadeIn();
   		}, function() {
   		  jQuery(this).find('.dropdown-menu').stop(true, true).delay(1700).fadeOut();
   		});
   		
   		jQuery('.dropup').hover(function() {
   		  jQuery('div.dropup').find('.dropdown-menu').stop(true, true).delay(50).fadeIn();
   		}, function() {
   		  jQuery('div.dropup').find('.dropdown-menu').stop(true, true).delay(1900).fadeOut();
   		});
   	});
    </script>
  </body>
</html>