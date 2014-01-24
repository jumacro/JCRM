<?php
/*
 * View/Events/add.ctp
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
<div class="span8 offset1">
		
<div class="add-event-box">
<h3>Add Event
		<a class="btn btn-info btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'events', 'action' => 'index')); ?>"><i class="icon-tasks"></i> Event View</a>
		<a class="btn btn-info btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'full_calendar')); ?>"><i class="icon-calendar"></i> Calendar View</a>
		</h3>
<?php echo $this->Form->create('Event',array('class'=>'form-horizontal'));?>
	<fieldset>
 		
	<?php
		echo $this->Form->input('event_type_id');
		echo $this->Form->input('title');
		echo $this->Form->input('details');
		echo $this->Form->input('start',array('class'=>'input-small'));
		echo $this->Form->input('end',array('class'=>'input-small'));
		echo $this->Form->input('all_day',array('label'=>'All Day'));
		echo $this->Form->input('status', array('options' => array(
					'Scheduled' => 'Scheduled','Confirmed' => 'Confirmed','In Progress' => 'In Progress',
					'Rescheduled' => 'Rescheduled','Completed' => 'Completed'
				)
			)
		);
		echo $this->Form->input('Contact',array('type'=>'select'));
		echo $this->Form->input('User',array('type'=>'select','multiple'=>true));
	?>
	<div class="form-actions">
	<?php echo $this->Form->submit('<i class="icon-save"></i> Add',array( 'div'=>false,'class'=>'btn btn-info')); ?>
	&nbsp;<a href="<?php echo $this->Html->url(array('plugin'=>'full_calendar','controller'=>'events','action'=>'index')); ?>" class="btn btn-primary"><i class="icon-reply"></i>&nbsp;Cancel</a>
	</div>
	</fieldset>
<?php echo $this->Form->end();?>
</div>
</div>
</div>