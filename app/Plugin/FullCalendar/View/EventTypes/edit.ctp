<?php
/*
 * Views/EventTypes/edit.ctp
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
	<div class="span6 offset3 edit-eventtype-box">
		<h3>Edit Event Type
		<a class="btn btn-info btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'event_types', 'action' => 'index')); ?>"><i class="icon-"></i> Event Types</a>
		<a class="btn btn-info btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'full_calendar')); ?>"><i class="icon-calendar"></i> Calendar View</a>
		</h3>
<?php echo $this->Form->create('EventType',array('class'=>'form-horizontal'));?>
	<fieldset>
 		
	<?php
		echo $this->Form->input('id');
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
	<?php echo $this->Form->submit('<i class="icon-save"></i> Save',array( 'div'=>false,'class'=>'btn btn-info')); ?>
	&nbsp;<a href="<?php echo $this->Html->url(array('plugin'=>'full_calendar','controller'=>'event_types','action'=>'index')); ?>" class="btn btn-primary"><i class="icon-reply"></i>&nbsp;Cancel</a>
	<a href="#" class="btn btn-danger cdelete" ><i class="icon-trash"></i>&nbsp;Delete</a>
	</div>
	</fieldset>
<?php echo $this->Form->end();?>
	</div>
</div>
<form name="del" id="del" action="<?php echo $this->Html->url(array('plugin'=>'full_calendar','controller'=>'event_types','action'=>'delete',$this->request->data['EventType']['id']));?>" method="post">
<input type="hidden" name="id" id="delid" value="<?php echo $this->request->data['EventType']['id']; ?>">
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
    var question = 'Are you sure, you want to delete this Event Type!';
    var cancelButtonTxt = 'Cancel';
    var okButtonTxt = 'Delete';

    var callback = function() {
  
	  $('#del').submit();
    };

    confirm(heading, question, cancelButtonTxt, okButtonTxt, callback);

  });
</script>