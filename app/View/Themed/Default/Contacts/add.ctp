<!--	<script type="text/javascript" src="jquery-1.4.2.min.js"></script> 
	<script type="text/javascript" src="jquery-ui-1.8.2.custom.min.js"></script> 
	<script type="text/javascript"> 
 
		jQuery(document).ready(function(){
			$('#zipsearch').autocomplete({source:'suggest_zip.php', minLength:2});
		});
 
	</script> 
	<link rel="stylesheet" href="jquery-ui-1.8.2.custom.css" /> 
	<style type="text/css"><!--
	
	        /* style the auto-complete response */
	        li.ui-menu-item { font-size:12px !important; }
	
	</style> 

 

<form onSubmit="return false;"> 
	<?php echo $this->Form->input('company',array('type'=>'text','required'=>true,'class'=>'input-xlarge', 'id'=>'zipsearch')); ?> 
</form> 
-->
<script type="text/javascript">
$(function() {
	autoCompleteCompany();
  });
</script>
<div class="row-fluid">
<div class="span5 offset3 add-contact-box" style="width:53%">
	<div><h3>Add New Contact</h3></div>
	<?php echo $this->Form->create('Contact',array('class'=>'form-horizontal','type'=>'file')); ?>
	<fieldset>
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
	<?php echo $this->Form->input('user_id',array('class'=>'input-xlarge')); ?>
	<div class="form-actions">
	<?php echo $this->Form->submit('<i class="icon-save"></i> Add',array( 'div'=>false,'class'=>'btn btn-info')); ?>
	&nbsp;<a href="<?php echo $this->Html->url(array('controller'=>'contacts','action'=>'index')); ?>" class="btn btn-primary"><i class="icon-reply"></i>&nbsp;Cancel</a>
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
