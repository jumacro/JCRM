<div class="row">
<div class="span5 offset3 edit-user-box">
	<h3>Edit User
	<?php if (AuthComponent::user('group_id')==1):?>
	<a href="<?php echo $this->Html->url(array('controller'=>'users','action'=>'add')); ?>" class="btn btn-success btn-mini"><i class="icon-plus"></i></a>
	<a href="<?php echo $this->Html->url(array('controller'=>'users','action'=>'index')); ?>" class="btn btn-info btn-mini"><i class="icon-user"></i>&nbsp;User List</a>
	<?php endif; ?>
	</h3>
<?php echo $this->Form->create('User',array('action'=>'edit', 'class'=>'form-horizontal')); ?>
    <fieldset>
        <?php echo $this->Form->input('username',array('readonly'=>'readonly'));
        echo $this->Form->input('new_password',array('type'=>'password','label'=>'New Password'));
        echo $this->Form->input('confirm',array('type'=>'password','label'=>'Confirm New Password'));
        
        if ((AuthComponent::user('group_id')==1) and (AuthComponent::user('id') != $this->request->data['User']['id'])) 
        	echo $this->Form->input('group_id',array('options'=>$grouplist));
        else
        	echo $this->Form->input('group',array('value'=>$grouplist[$this->request->data['User']['group_id']],'class'=>'uneditable-input'));
        
        echo $this->Form->input('first_name');
        echo $this->Form->input('last_name');
        echo $this->Form->input('email');
        if (AuthComponent::user('group_id')==1 and (AuthComponent::user('id') != $this->request->data['User']['id'])) echo $this->Form->input('active');
    ?>
    <div class="form-actions">
	<?php echo $this->Form->submit('<i class="icon-save"></i> Save',array( 'div'=>false,'class'=>'btn btn-info')); ?>
	<?php if (($this->request->data['User']['id'] != AuthComponent::user('id')) and (AuthComponent::user('group_id') == 1 )) :?>
	<a href="#" class="btn btn-danger cdelete" ><i class="icon-trash"></i>&nbsp;Delete</a>
	<?php endif; ?>
	</div>
    </fieldset>
<?php echo $this->Form->end(); ?>
</div>
</div>
<script>
$(document).ready(function(){
	$("#UserEditForm").validate({

		rules: {
			"data[User][new_password]":{
				//required: false,
				minlength:5,

				},
			"data[User][confirm]":{
				//required: false,
				minlength:5,
				equalTo: "#UserNewPassword"

				}
		},
		messages: {
			"data[User][new_password]":"Please check this field",
			"data[User][confirm]":{equalTo:"make sure both match"}
		},
		errorElement:"span"

		});
});
</script>
<?php if (($this->request->data['User']['id'] != AuthComponent::user('id')) and (AuthComponent::user('group_id') == 1 )) :?>
<form name="del" id="del" action="<?php echo $this->Html->url(array('controller'=>'users','action'=>'delete',$this->request->data['User']['id']));?>" method="post">
<input type="hidden" name="id" id="delid" value="<?php echo $this->request->data['User']['id']; ?>">
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
    var question = 'Are you sure, you want to delete this User!';
    var cancelButtonTxt = 'Cancel';
    var okButtonTxt = 'Delete';

    var callback = function() {
  
	  $('#del').submit();
    };

    confirm(heading, question, cancelButtonTxt, okButtonTxt, callback);

  });
</script>
<?php endif; ?>