<div class="users form">
<?php echo $this->Form->create('User',array('action'=>'forgot','class'=>'form-horizontal')); ?>
    <fieldset>
        <legend><?php echo __('Please enter your username'); ?></legend>
        <?php echo $this->Form->input('username');
    ?>
    <div class="form-actions">
	<?php echo $this->Form->submit('<i class="icon-magic"></i> Send Reset Link',array( 'div'=>false,'class'=>'btn btn-info')); ?>
	&nbsp;<?php echo $this->Html->link('Back to Login',array('controller'=>'users','action'=>'login'),array('icon'=>'lightbulb','class'=>'btn btn-info')); ?>
	</div>
    </fieldset>
<?php echo $this->Form->end(); ?>
</div>
<script>
$(document).ready(function(){
	$('#UserUsername').focus();
});
</script>