<script type="text/javascript">
$(function() {
	autoCompleteCompany();
  });
</script>
<div class="edit-contact-container">
	<div><h3>Edit Contact</h3></div>
	<div class="edit-contact-box" style="padding-left:25px">
	<?php echo $this->Form->create('Contact',array('action'=>'edit', 'class'=>'form-horizontal')); ?>
	<fieldset>
	<br>
	<?php echo $this->Form->input('company',array('type'=>'text','required'=>true,'class'=>'input-xlarge')); ?>
	<?php echo $this->Form->input('industry',array('type'=>'text','required'=>false,'class'=>'input-xlarge')); ?>
	Contact Person<?php echo $this->Form->input('name',array('type'=>'text','required'=>true,'class'=>'input-xlarge')); ?>
	<?php echo $this->Form->input('designation',array('type'=>'text','required'=>false,'class'=>'input-xlarge')); ?>
	Contact No/<?php echo $this->Form->input('mobile',array('type'=>'text','class'=>'input-xlarge')); ?>
	Alternate Contact No/<?php echo $this->Form->input('phone',array('type'=>'tel','required'=>'false','class'=>'input-xlarge')); ?>
	<?php echo $this->Form->input('address',array('type'=>'textarea','required'=>false,'class'=>'input-xlarge')); ?>
	<?php echo $this->Form->input('area',array('type'=>'tel','value'=>null,'required'=>false,'class'=>'input-xlarge')); ?>
	<?php echo $this->Form->input('city',array('type'=>'text','required'=>true,'class'=>'input-xlarge')); ?>
	<?php echo $this->Form->input('state',array('type'=>'text','class'=>'input-xlarge')); ?>
	<?php echo $this->Form->input('email',array('type'=>'text','required'=>false,'class'=>'input-xlarge')); ?>
	<?php echo $this->Form->input('website',array('type'=>'text','class'=>'input-xlarge')); ?>
	Executive/<?php echo $this->Form->input('user_id',array('class'=>'input-xlarge')); ?>
	<div class="form-actions">
	<?php echo $this->Form->submit('<i class="icon-save"></i> Save',array( 'div'=>false,'class'=>'btn btn-info')); ?>
	&nbsp;<a href="<?php echo $this->Html->url(array('controller'=>'contacts','action'=>'index')); ?>" class="btn btn-primary"><i class="icon-reply"></i>&nbsp;Cancel</a>
	<a href="#" class="btn btn-danger cdelete" ><i class="icon-trash"></i>&nbsp;Delete</a>
	</div>
	</fieldset>
	<?php echo $this->Form->end(); ?>
	</div>
</div>
<script>
jQuery(function($) {
	  $('div.btn-group[data-toggle-name]').each(function(){
	    var group   = $(this);
	    var form    = group.parents('form').eq(0);
	    var name    = "data[Contact][contact_status_id]";
	    var hidden  = $('input[name="' + name + '"]', form);
	    $('button', group).each(function(){
	      var button = $(this);
	      button.live('click', function(){
	          hidden.val($(this).val());
	      });
	      if(button.val() == hidden.val()) {
	        button.addClass('active');
	      }
	    });
	  });
	});
</script>
<form name="del" id="del" action="<?php echo $this->Html->url(array('controller'=>'contacts','action'=>'delete'));?>" method="post">
<input type="hidden" name="id" id="delid" value="<?php echo $this->request->data['Contact']['id']; ?>">
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
    var question = 'Are you sure, you want to delete this contact!';
    var cancelButtonTxt = 'Cancel';
    var okButtonTxt = 'Delete';

    var callback = function() {
  
	  $('#del').submit();
    };

    confirm(heading, question, cancelButtonTxt, okButtonTxt, callback);

  });
</script>
