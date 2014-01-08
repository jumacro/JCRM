<?php
/*
 * View/Events/edit.ctp
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
<div class="span8 offset2 edit-event-box">
	<div>
		<h3>Edit Event
		<a class="btn btn-info btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'events', 'action' => 'index')); ?>"><i class="icon-tasks"></i> Event View</a>
		<a class="btn btn-info btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'full_calendar')); ?>"><i class="icon-calendar"></i> Calendar View</a>
		<a class="btn btn-info btn-mini pull-right" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'action' => 'view', $this->Form->value('Event.id'))); ?>"><i class="icon"></i> View Event</a>
		</h3>
	</div>
<?php echo $this->Form->create('Event',array('class'=>'form-horizontal'));?>
	<fieldset>
 		
	<?php
		echo $this->Form->input('id');
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
		echo $this->Form->input('Contact',array('type'=>'select','multiple'=>true,'options'=>$contacts));
		echo $this->Form->input('User',array('type'=>'select','multiple'=>true));
	?>
	<div class="form-actions">
	<?php echo $this->Form->submit('<i class="icon-save"></i> Save',array( 'div'=>false,'class'=>'btn btn-info')); ?>
	&nbsp;<a href="<?php echo $this->Html->url(array('plugin'=>'full_calendar','controller'=>'events','action'=>'index')); ?>" class="btn btn-primary"><i class="icon-reply"></i>&nbsp;Cancel</a>
	<a href="#" class="btn btn-danger cdelete" ><i class="icon-trash"></i>&nbsp;Delete</a>
	</div>
	</fieldset>
<?php echo $this->Form->end();?>
</div>
</div>
<form name="del" id="del" action="<?php echo $this->Html->url(array('plugin'=>'full_calendar','controller'=>'events','action'=>'delete',$this->request->data['Event']['id']));?>" method="post">
<input type="hidden" name="id" id="delid" value="<?php echo $this->request->data['Event']['id']; ?>">
</form>
<script>

//Confirm delete modal/dialog with Twitter bootstrap?
// ---------------------------------------------------------- Generic Confirm  

  function confirm(heading, question, cancelButtonTxt, okButtonTxt, callback) {

    var confirmModal = 
      $('<div class="modal hide fade">' +    
          '<div class="modal-header">' +
            '<a class="close" data-dismiss="modal" >&times;</a>' +
            '<h3>' + heading +'</h3>' +
          '</div>' +

          '<div class="modal-body">' +
            '<p>' + question + '</p>' +
          '</div>' +

          '<div class="modal-footer">' +
            '<a href="#" class="btn" data-dismiss="modal">' + 
              cancelButtonTxt + 
            '</a>' +
            '<a href="#" id="okButton" class="btn btn-danger">' + 
              okButtonTxt + 
            '</a>' +
          '</div>' +
        '</div>');

    confirmModal.find('#okButton').click(function(event) {
      callback();
      confirmModal.modal('hide');
    });

    confirmModal.modal('show');     
  };

  // ---------------------------------------------------------- Confirm Put To Use

  $(".cdelete").live("click", function(event) {


    var heading = 'Confirm Delete';
    var question = 'Are you sure, you want to delete this Event!';
    var cancelButtonTxt = 'Cancel';
    var okButtonTxt = 'Delete';

    var callback = function() {
  
	  $('#del').submit();
    };

    confirm(heading, question, cancelButtonTxt, okButtonTxt, callback);

  });
</script>