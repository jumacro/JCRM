<?php
/*
 * View/Events/view.ctp
 * CakePHP Full Calendar Plugin
 *
 * Copyright (c) 2010 Silas Montgomery
 * http://silasmontgomery.com
 *
 * Licensed under MIT
 * http://www.opensource.org/licenses/mit-license.php
 */
?>
<div class="row">
<div class="span5 offset3 view-event-box">
	<div>
		<h3>Event
		<a class="btn btn-success btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'events', 'action' => 'add')); ?>"><i class="icon-plus"></i></a>
		<a class="btn btn-success btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'action' => 'edit', $event['Event']['id'])); ?>"><i class="icon-edit"></i> Edit</a>
		<a class="btn btn-info btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'full_calendar')); ?>"><i class="icon-calendar"></i> Calendar View</a>
		
		</h3>
	</div>
	<dl class="dl-horizontal"><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php echo __('Title'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>><?php echo $event['Event']['title']; ?></dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php echo __('Event Type'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>><?php echo $this->Html->link($event['EventType']['name'], array('controller' => 'event_types', 'action' => 'view', $event['EventType']['id'])); ?></dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php echo __('Details'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>><?php echo $event['Event']['details']; ?></dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php echo __('Status'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>><?php echo $event['Event']['status']; ?></dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php echo __('Start'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>><?php echo $event['Event']['start']; ?></dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php echo __('End'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>><?php echo $event['Event']['end']; ?></dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php echo __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>><?php echo $event['Event']['created']; ?></dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php echo __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>><?php echo $event['Event']['modified']; ?></dd>
		<dt>Contacts</dt>
		<dd><?php if(!empty($event['Contact'])){
			foreach($event['Contact'] as $contact){
				echo $contact['full_name'] . ', ';
			}
		}
		else {
			echo "&nbsp;";
		}?></dd>
		<dt>Users</dt>
		<dd><?php if(!empty($event['User'])){
			foreach($event['User'] as $user){
				echo $user['full_name'] . ', ';
			}
		}
		else {
			echo "&nbsp;";
		}?></dd>
	</dl>
	<div class="view-event-back">
	<a class="btn btn-success" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'events', 'action' => 'index')); ?>"><i class="icon-reply"></i> Back</a>
	</div>
</div>
</div>