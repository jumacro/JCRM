<div>
	<div>
		<h3 style="float: left;margin-top: 0px;">Deals
		<a class="btn btn-success btn-mini" href="<?php echo $this->Html->url(array('controller'=>'deals','action'=>'add')); ?>"><i class="icon-plus"></i></a> &nbsp 	<h3 style="float: left;margin-top: 0px;">Contacts
		<a class="btn btn-success btn-mini" href="<?php echo $this->Html->url(array('controller'=>'contacts','action'=>'add')); ?>"><i class="icon-plus"></i></a> &nbsp 	<h3>Events
		<a class="btn btn-success btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'events', 'action' => 'add')); ?>"><i class="icon-plus"></i></a>
		<?php echo $this->Form->create('Deal', array('url' => array_merge(array('action' => 'index'), $this->params['pass']),'class'=>'navbar-search pull-right')); ?>
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
			<?php if(!empty($search_args['search_name'])): ?>
			<strong>Name: </strong><span><?php echo $search_args['search_name']; ?></span>
			<?php endif; ?>
			<?php if(!empty($search_args['search_amount'])): ?>
			<strong>Amount: </strong><span><?php echo $search_args['search_amount']; ?></span>
			<?php endif; ?>
			<?php if(!empty($search_args['search_date_from'])): ?>
			<strong>From Date: </strong><span><?php echo $search_args['search_date_from']; ?></span>
			<?php endif; ?>
			<?php if(!empty($search_args['search_date_to'])): ?>
			<strong>To Date: </strong><span><?php echo $search_args['search_date_to']; ?></span>
			<?php endif; ?>
		</div>
		<?php endif; ?>
		<div class="filter-box" style="display:none">
			<?php echo $this->Form->create('Deal', array('url' => array_merge(array('action' => 'index'), $this->params['pass']),'class'=>'form-inline')); ?>
			<fieldset>
			<legend>Filters</legend>
			<?php echo $this->Form->input('search_name',array('div'=>false,'class'=>'span2','label'=>'Name ','placeholder'=>'Name')); ?>
			<?php echo $this->Form->input('search_amount',array('div'=>false,'class'=>'span2','label'=>'Amount ','placeholder'=>'Amount')); ?>
			<?php echo $this->Form->input('search_date_from',array('div'=>false,'class'=>'span2 date','label'=>'From ')); ?>
			<?php echo $this->Form->input('search_date_to',array('div'=>false,'class'=>'span2 date','label'=>'To ')); ?>
			<?php echo $this->Form->submit('Filter',array('div'=>false,'class'=>'btn btn-info')); ?>
			</fieldset>
			<?php $this->Form->end(); ?>
		</div>
	</div>
	<div class="pagination pagination-centered pagination-mini">
	  <ul>
		<?php echo $this->Paginator->prev(''); ?>
		<?php echo $this->Paginator->numbers(array('first' => 2, 'last' => 2));?>
		<?php echo $this->Paginator->next(''); ?>
	  </ul>
	</div>
	<table class="table table-bordered table-hover table-striped table-striped-warning">
		<thead class="warning">
		<?php
			echo $this->Html->tableHeaders(array('Amount', 'Contact Name', 'Status','User\'s Name','Date', 'Action'));
		?>
		</thead>
		<tbody>
		<?php if(empty($deals)): ?>
		<tr>
			<td colspan="6" class="striped-info">No record found.</td>
		</tr>
		<?php endif; ?>
		<?php foreach ($deals as $deal):?>
		<tr>
			<td><a href="<?php echo $this->Html->url(array('controller' => 'deals', 'action' => 'view', $deal['Deal']['id'])); ?>"><?php echo $this->Number->currency($deal['Deal']['amount'],'USD'); ?></a></td>
			<td><?php echo $deal['Contact']['name']?><br />(<?php echo $deal['Contact']['company']?>)</td>
			<td><?php if($deal['DealStatus']['name']=='Process'){
				echo '<span class="label label-warning">'.$deal['DealStatus']['name'].'</span>'; 
			}
			else if($deal['DealStatus']['name']=='Accepted'){
				echo '<span class="label label-success">'.$deal['DealStatus']['name'].'</span>';
			}
			else if($deal['DealStatus']['name']=='Rejected'){
				echo '<span class="label label-important">'.$deal['DealStatus']['name'].'</span>';
			}?></td>
			<td><?php if(isset($deal['children']['User']['full_name'])) echo $deal['children']['User']['full_name']; ?></td>
			<td><?php echo $deal['Deal']['date']; ?></td>
			<td>
				<a href="<?php echo $this->Html->url(array('controller' => 'deals', 'action' => 'edit', $deal['Deal']['id'])); ?>"><i class="icon-edit"></i></a>
			</td>
		</tr>
		<?php endforeach;?>
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
	$(".date").datepicker({ dateFormat: 'yy-mm-dd' });
});
</script>
<a href="http://wvs.in/report/deals/index.php">Export Excel</a>
