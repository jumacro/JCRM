<div>
	<div><h3>Edit Title</h3></div>
	<?php echo $this->Form->create('Option',array('class'=>'form-horizontal','type'=>'file')); ?>
	<fieldset>
	<?php echo $this->Form->input('title',array('type'=>'text','label'=>'Title')); ?>
	<?php echo $this->Form->input('logo',array('type'=>'file','label'=>'Logo')); ?>
	<?php echo $this->Form->input('logo_dir',array('type'=>'hidden')); ?>
	<?php echo $this->Form->input('copyright',array('type'=>'text','label'=>'Copyright Text')); ?>
	<div class="form-actions">
	<?php echo $this->Form->submit('Save',array('class'=>'btn btn-info','div'=>false,'icon'=>'save')); ?>
	</div>
	</fieldset>
	<?php echo $this->Form->end(); ?>
</div>