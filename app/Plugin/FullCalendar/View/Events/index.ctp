<?php
/*
 * View/Events/index.ctp
 * CakePHP Full Calendar Plugin
 *
 * Copyright (c) 2010 Silas Montgomery
 * http://silasmontgomery.com
 *
 * Licensed under MIT
 * http://www.opensource.org/licenses/mit-license.php
 */
?>
<div class="events index">
	<div>
		<h3>Events
		<a class="btn btn-success btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'events', 'action' => 'add')); ?>"><i class="icon-plus"></i></a>
		<a class="btn btn-info btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'full_calendar')); ?>"><i class="icon-calendar"></i> Calendar View</a>
		<a class="btn btn-info btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'event_types')); ?>" >Event Types</a>
		<a class="btn btn-info btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'events', 'action' => 'excelreport')); ?>" >Export to Excel</a>
		<?php echo $this->Form->create('Event', array('url' => array_merge(array('plugin' => 'full_calendar','controller' => 'events','action' => 'index'), $this->params['pass']),'class'=>'navbar-search pull-right')); ?>
	  		<div class="input-append">
	  		<?php echo $this->Form->input('search_all',array('div'=>false,'class'=>'span2','placeholder'=>'Search','label'=>false,'style'=>'height:12px !important;')); ?>
	  		<button type="submit" class="btn btn-success btn-mini"><i class="icon-search"></i></button>
	  		<a class="btn btn-primary btn-mini" id="more" ><i class="icon-caret-down"></i> More</a>	
	  		</div>
	  	<?php echo $this->Form->end(); ?>	
		</h3>
		<?php if($searched): 
		$search_args = $this->passedArgs;
		?>
		<div class="filter-result-box alert alert-info" >
			<?php if(!empty($search_args['search_title'])): ?>
			<strong>Title: </strong><span><?php echo $search_args['search_title']; ?></span>
			<?php endif; ?>
			<?php if(!empty($search_args['search_date_from'])): ?>
			<strong>Starts From: </strong><span><?php echo $search_args['search_date_from']; ?></span>
			<?php endif; ?>
			<?php if(!empty($search_args['search_date_to'])): ?>
			<strong>To: </strong><span><?php echo $search_args['search_date_to']; ?></span>
			<?php endif; ?>
		</div>
		<?php endif; ?>
		<div class="filter-box" style="display:none">
			<?php echo $this->Form->create('Event', array('url' => array_merge(array('plugin' => 'full_calendar','controller' => 'events','action' => 'index'), $this->params['pass']),'class'=>'form-inline')); ?>
			<fieldset>
			<legend>Filters</legend>
				
				<?php echo $this->Form->input('search_title',array('div'=>false,'class'=>'span2','label'=>'Title ','placeholder'=>'Title')); ?>
				<?php echo $this->Form->input('search_date_from',array('div'=>false,'class'=>'span2 date','label'=>'Start From ')); ?>
				<?php echo $this->Form->input('search_date_to',array('div'=>false,'class'=>'span2 date','label'=>'To ')); ?>
				<?php echo $this->Form->submit('Filter',array('div'=>false,'class'=>'btn btn-info')); ?>
			</fieldset>
			<?php echo $this->Form->end(); ?>
		</div>
	</div>
	<table class="table table-bordered table-striped table-striped-info" >
	<thead class="primary">
	<tr>
			<th><?php echo $this->Paginator->sort('title');?></th>
			<th><?php echo $this->Paginator->sort('event_type_id');?></th>
			<th><?php echo $this->Paginator->sort('status');?></th>
			<th>Contacts</th>
			<th>Users</th>
			<th><?php echo $this->Paginator->sort('start');?></th>
            <th><?php echo $this->Paginator->sort('end');?></th>

			<th class="actions">Action</th>
	</tr>
	</thead>
	<tbody>
	<?php if(empty($events)): ?>
		<tr>
			<td colspan="9" class="striped-info">No record found.</td>
		</tr>
	<?php endif; ?>
	<?php foreach ($events as $event): ?>
	<tr>
		<td><?php echo $this->Html->link($event['Event']['title'], array('action' => 'view', $event['Event']['id'])); ?></td>
		<td>
			<?php echo $this->Html->link($event['EventType']['name'], array('controller' => 'event_types', 'action' => 'view', $event['EventType']['id'])); ?>
		</td>
		<td><?php echo $event['Event']['status']; ?></td>
		<td><?php if(!empty($event['Contact'])){
			foreach($event['Contact'] as $contact){
				echo $contact['full_name'] . ', ';
			}
		}
		else {
			echo "&nbsp;";
		}?></td>
		<td><?php if(!empty($event['User'])){
			foreach($event['User'] as $user){
				echo $user['full_name'] . ', ';
			}
		}
		else {
			echo "&nbsp;";
		}?></td>
		<td><?php echo $event['Event']['start']; ?></td>
        
   		<td><?php echo $event['Event']['end']; ?></td>
        
		<td class="actions">
			<?php echo $this->Html->link('', array('action' => 'edit', $event['Event']['id']),array('icon'=>'edit')); ?>
		</td>
	</tr>
	<?php endforeach; ?>
	</tbody>
	</table>
	<div class="pagination pagination-centered pagination-mini">
	<ul>
		<?php echo $this->Paginator->prev('', array(), null, array('class'=>'disabled'));?>
		<?php echo $this->Paginator->numbers();?>
		<?php echo $this->Paginator->next('', array(), null, array('class' => 'disabled'));?>
	</ul>
	</div>
</div>
<script>
jQuery(function($) {
	$("#more").click(function(){
		$(".filter-box").toggle('fold');
	});
	$(".date").datetimepicker({ dateFormat: 'yy-mm-dd', timeFormat: 'HH:mm' });
});
</script>
<a href="http://wvs.in/pg/report/events/index.php">Export Excel</a>