<div class="row">
<div class="span7 offset2">
<div><h3>Edit Deal</h3></div>
<div class="edit-deal-box">
	<?php echo $this->Form->create('Deal',array('action'=>'edit','class'=>'form-horizontal')); ?>
	<fieldset>
	<div class="control-group head-group" >
		<label class="control-label">Deal Status</label>
		<div class="controls">
			<div class="btn-group" data-toggle="buttons-radio" data-toggle-name="deal_status_id">
			<?php foreach ($deal_statuses as $key=>$value):?>
				<?php if ($value=='Rejected') $color_class='btn-danger';
				else if($value=='Process') $color_class='btn-warning';
				else if($value=='Accepted') $color_class='btn-success';
				else $color_class='btn-info';?>
			  <button type="button" class="btn <?php echo $color_class; ?>" value="<?php echo $key; ?>">
			  <?php echo $value; ?>
			  </button>
			  <?php endforeach; ?>
			</div>
		</div>
	</div>
	<?php echo $this->Form->input('contact_id',array('class'=>'input-xlarge')); ?>
	<?php echo $this->Form->input('amount',array('type'=>'text','class'=>'span3')); ?>
	<?php echo $this->Form->input('date',array('class'=>'span1')); ?>
	<?php echo $this->Form->input('details',array('type'=>'textarea','class'=>'input-xlarge')); ?>
	<?php echo $this->Form->input('remarks',array('type'=>'textarea','class'=>'input-xlarge')); ?>
	<?php echo $this->Form->input('deal_status_id',array('type'=>'hidden')); ?>
	<div class="form-actions">
	<?php echo $this->Form->submit('<i class="icon-save"></i> Save',array( 'div'=>false,'class'=>'btn btn-info')); ?>
	&nbsp;<a href="<?php echo $this->Html->url(array('controller'=>'deals','action'=>'index')); ?>" class="btn btn-primary"><i class="icon-reply"></i>&nbsp;Cancel</a>
	<a href="#" class="btn btn-danger cdelete" ><i class="icon-trash"></i>&nbsp;Delete</a>
	</div>
	</fieldset>
	<?php echo $this->Form->end(); ?>
</div>
</div>
</div>
<script>
jQuery(function($) {
	  $('div.btn-group[data-toggle-name]').each(function(){
	    var group   = $(this);
	    var form    = group.parents('form').eq(0);
	    var name    = "data[Deal][deal_status_id]";
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
<form name="del" id="del" action="<?php echo $this->Html->url(array('controller'=>'deals','action'=>'delete'));?>" method="post">
<input type="hidden" name="id" id="delid" value="<?php echo $this->request->data['Deal']['id']; ?>">
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
    var question = 'Are you sure, you want to delete this Deal!';
    var cancelButtonTxt = 'Cancel';
    var okButtonTxt = 'Delete';

    var callback = function() {
   
	  $('#del').submit();
    };

    confirm(heading, question, cancelButtonTxt, okButtonTxt, callback);

  });
</script>
