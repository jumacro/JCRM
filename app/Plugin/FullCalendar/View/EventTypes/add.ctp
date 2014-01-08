<?php
/*
 * Views/EventTypes/add.ctp
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
	<div class="span6 offset3 add-eventtype-box">
		<h3>Add Event Type
		<a class="btn btn-info btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'event_types', 'action' => 'index')); ?>"><i class="icon"></i> Event Types</a>
		<a class="btn btn-info btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'full_calendar')); ?>"><i class="icon-calendar"></i> Calendar View</a>
		</h3>
	
<?php echo $this->Form->create('EventType',array('class'=>'form-horizontal'));?>
	<fieldset>
 		
	<?php
		echo $this->Form->input('name');
		echo $this->Form->input('color', 
					array('options' => array(
						'Blue' => 'Blue',
						'Red' => 'Red',
						'Pink' => 'Pink',
						'Purple' => 'Purple',
						'Orange' => 'Orange',
						'Green' => 'Green',
						'Gray' => 'Gray',
						'Black' => 'Black',
						'Brown' => 'Brown'
					)));

	?>
	<div class="form-actions">
	<?php echo $this->Form->submit('<i class="icon-save"></i> Add',array( 'div'=>false,'class'=>'btn btn-info')); ?>
	&nbsp;<a href="<?php echo $this->Html->url(array('plugin'=>'full_calendar','controller'=>'event_types','action'=>'index')); ?>" class="btn btn-primary"><i class="icon-reply"></i>&nbsp;Cancel</a>
	</div>
	</fieldset>
<?php echo $this->Form->end();?>
</div>
</div>