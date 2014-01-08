<div class="row">
<div class="span7 offset2 add-deal-box">
	<div><h3>Add New Deal</h3></div>
	<?php echo $this->Form->create('Deal',array('class'=>'form-horizontal')); ?>
	<fieldset>
	<?php echo $this->Form->input('contact_id',array('class'=>'input-xlarge')); ?>
	<?php echo $this->Form->input('details',array('type'=>'textarea','class'=>'input-xlarge')); ?>
	<span style="padding-left:30px;">Expected<span><?php echo $this->Form->input('amount',array('type'=>'text','class'=>'span3')); ?>
	<span style="padding-left:30px;">Expected<span><?php echo $this->Form->input('date',array('class'=>'span1')); ?>
		<div class="control-group" >
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
	<?php echo $this->Form->input('deal_status_id',array('type'=>'hidden')); ?>
	<?php echo $this->Form->input('user_id',array('class'=>'input-xlarge')); ?>
	<?php echo $this->Form->input('remarks',array('type'=>'textarea','class'=>'input-xlarge')); ?>
	<div class="form-actions">
	<?php echo $this->Form->submit('<i class="icon-save"></i> Add',array( 'div'=>false,'class'=>'btn btn-info')); ?>
	&nbsp;<a href="<?php echo $this->Html->url(array('controller'=>'deals','action'=>'index')); ?>" class="btn btn-primary"><i class="icon-reply"></i>&nbsp;Cancel</a>
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
