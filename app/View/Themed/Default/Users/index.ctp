<div>
	<div>
		<h3>Users
		<a class="btn btn-success btn-mini" href="<?php echo $this->Html->url(array('controller'=>'users','action'=>'add')); ?>"><i class="icon-plus"></i></a>
		<?php echo $this->Form->create('User', array('url' => array_merge(array('action' => 'index'), $this->params['pass']),'class'=>'navbar-search pull-right')); ?>
	  		<div class="input-append">
	  		<?php echo $this->Form->input('search_all',array('div'=>false,'class'=>'span2','placeholder'=>'Search','label'=>false)); ?>
	  		<button type="submit" class="btn btn-success"><i class="icon-search"></i></button>
	  		<a class="btn btn-primary" id="more" ><i class="icon-caret-down"></i> More</a>	
	  		</div>
	  	<?php echo $this->Form->end(); ?>	
		</h3>
		<?php if($searched): 
		$search_args = $this->passedArgs; ?>
		<div class="filter-result-box alert alert-info" >
			<?php if(!empty($search_args['search_username'])): ?>
			<strong>User: </strong><span><?php echo $search_args['search_username']; ?></span>
			<?php endif; ?>
			<?php if(!empty($search_args['search_name'])): ?>
			<strong>Name: </strong><span><?php echo $search_args['search_name']; ?></span>
			<?php endif; ?>
			<?php if(!empty($search_args['search_group'])): ?>
			<strong>Group: </strong><span><?php echo $search_args['search_group']; ?></span>
			<?php endif; ?>
			<?php if(!empty($search_args['search_email'])): ?>
			<strong>Email: </strong><span><?php echo $search_args['search_email']; ?></span>
			<?php endif; ?>
		</div>
		<?php endif; ?>
		<div class="filter-box" style="display:none">
			<?php echo $this->Form->create('User', array('url' => array_merge(array('action' => 'index'), $this->params['pass']),'class'=>'form-inline')); ?>
			<fieldset>
			<legend>Filters</legend>
				
				<?php echo $this->Form->input('search_username',array('div'=>false,'class'=>'span2','label'=>'Username ','placeholder'=>'Username')); ?>
				<?php echo $this->Form->input('search_name',array('div'=>false,'class'=>'span2','label'=>'Name ','placeholder'=>'Name')); ?>
				<?php echo $this->Form->input('search_group',array('div'=>false,'class'=>'span2','label'=>'Group ','placeholder'=>'Group')); ?>
				<?php echo $this->Form->input('search_email',array('div'=>false,'class'=>'span2','label'=>'Email ','placeholder'=>'Email')); ?>
				<?php echo $this->Form->submit('Filter',array('div'=>false,'class'=>'btn btn-info')); ?>
			</fieldset>
			<?php echo $this->Form->end(); ?>
		</div>
	</div>
	<div class="pagination pagination-centered pagination-mini">
	  <ul>
		<?php echo $this->Paginator->prev(''); ?>
		<?php echo $this->Paginator->numbers(array('first' => 2, 'last' => 2));?>
		<?php echo $this->Paginator->next(''); ?>
	  </ul>
	</div>
	<table class="table table-bordered table-hover table-striped table-striped-success">
		<thead class="success">
		<?php
			echo $this->Html->tableHeaders(array('Username','Group','Name','Email','Active','Action'));
		?>
		</thead>
		<tbody>
		<?php if(empty($users)): ?>
		<tr>
			<td colspan="6" class="striped-info">No record found.</td>
		</tr>
		<?php endif; ?>
		<?php foreach($users as $user): ?>
		<tr>
			<td><?php echo $this->Html->link($user['User']['username'],array('plugin'=>'','controller'=>'users','action'=>'view',$user['User']['id'])); ?></td>
			<td><?php echo $user['Group']['name']; ?></td>
			<td><?php echo $user['User']['full_name']; ?></td>
			<td><?php echo $user['User']['email']; ?></td>
			<td><?php if ($user['User']['active']) echo 'Yes'; else echo 'No'; ?></td>
			<td><?php echo $this->Html->link(__(''),array('plugin'=>'','controller'=>'users','action'=>'edit',$user['User']['id']),array('icon'=>'edit')); ?></td>
		</tr>
		<?php endforeach; ?>
		</tbody>
	</table>
	<div class="pagination pagination-centered pagination-mini">
	  <ul>
		<?php echo $this->Paginator->prev(''); ?>
		<?php echo $this->Paginator->numbers(array('first' => 2, 'last' => 2));?>
		<?php echo $this->Paginator->next(''); ?>
	  </ul>
	</div>
</div>
<script>
jQuery(function($) {
	$("#more").click(function(){
		$(".filter-box").toggle('fold');
	});
	//$(".date").datepicker();
});
</script>