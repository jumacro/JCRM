<div>
	<div>
		<h3 style="float: left;margin-top: 0px;">Contacts
		<a class="btn btn-success btn-mini" href="<?php echo $this->Html->url(array('controller'=>'contacts','action'=>'add')); ?>"><i class="icon-plus"></i></a> &nbsp; <h3 style="float: left;margin-top: 0px;">Deals
		<a class="btn btn-success btn-mini" href="<?php echo $this->Html->url(array('controller'=>'deals','action'=>'add')); ?>"><i class="icon-plus"></i></a> &nbsp      <h3>Events
		<a class="btn btn-success btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'events', 'action' => 'add')); ?>"><i class="icon-plus"></i></a>
		<?php echo $this->Form->create('Contact', array('url' => array_merge(array('action' => 'index'), $this->params['pass']),'class'=>'navbar-search pull-right')); ?>
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
			<?php if(!empty($search_args['search_designation'])): ?>
			<strong>Designation: </strong><span><?php echo $search_args['search_designation']; ?></span>
			<?php endif; ?>
			<?php if(!empty($search_args['search_city'])): ?>
			<strong>City: </strong><span><?php echo $search_args['search_city']; ?></span>
			<?php endif; ?>
			<?php if(!empty($search_args['search_company'])): ?>
			<strong>Company: </strong><span><?php echo $search_args['search_company']; ?></span>
			<?php endif; ?>
			<?php if(!empty($search_args['search_industry'])): ?>
			<strong>Industry: </strong><span><?php echo $search_args['search_industry']; ?></span>
			<?php endif; ?>
			<?php if(!empty($search_args['search_area'])): ?>
			<strong>area: </strong><span><?php echo $search_args['search_area']; ?></span>
			<?php endif; ?>
			<?php if(!empty($search_args['search_address'])): ?>
			<strong>Address: </strong><span><?php echo $search_args['search_address']; ?></span>
			<?php endif; ?>
			<?php if(!empty($search_args['search_phone'])): ?>
			<strong>Phone: </strong><span><?php echo $search_args['search_phone']; ?></span>
			<?php endif; ?>
		</div>
		<?php endif; ?>
		<div class="filter-box" style="display:none">
			<?php echo $this->Form->create('Contact', array('url' => array_merge(array('action' => 'index'), $this->params['pass']),'class'=>'form-inline')); ?>
			<fieldset>
			<legend>Filters</legend>
				
				<?php echo $this->Form->input('search_name',array('div'=>false,'class'=>'span2','label'=>'Name ','placeholder'=>'Name')); ?>
				<?php echo $this->Form->input('search_designation',array('div'=>false,'class'=>'span2','label'=>'Designation ','placeholder'=>'Designation')); ?>
				<?php echo $this->Form->input('search_city',array('div'=>false,'class'=>'span2','label'=>'City ','placeholder'=>'City')); ?>
				<?php echo $this->Form->input('search_company',array('div'=>false,'class'=>'span2','label'=>'Company ','placeholder'=>'Company')); ?>
				<?php echo $this->Form->input('search_industry',array('div'=>false,'class'=>'span2','label'=>'industry ','placeholder'=>'industry')); ?>
				<?php echo $this->Form->input('search_area',array('div'=>false,'class'=>'span2','label'=>'area ','placeholder'=>'area')); ?>
				<?php echo $this->Form->input('search_address',array('div'=>false,'class'=>'span2','label'=>'address ','placeholder'=>'address')); ?>
				<?php echo $this->Form->input('search_phone',array('div'=>false,'class'=>'span2','label'=>'Phone ','placeholder'=>'Phone')); ?>
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
	<table class="table table-bordered table-hover table-striped table-striped-warning">
		<thead>
		<?php
			echo $this->Html->tableHeaders(array(
					array('Name'=>array('class'=>'info')),
					array('Company'=>array('class'=>'warning')),
					array('Industry'=>array('class'=>'warning')),
					array('City'=>array('class'=>'warning')),
					array('<i class="icon-mobile-phone"></i> Mobile #'=>array('class'=>'warning')),
					array('<i class="icon-envelope"></i> E-mail'=>array('class'=>'warning')),
					array('Action'=>array('class'=>'warning'))));
		?>
		</thead>
		<tbody>
		<?php if(empty($contacts)): ?>
		<tr>
			<td colspan="8" class="striped-info">No record found.</td>
		</tr>
		<?php endif; ?>
		<?php foreach ($contacts as $contact):?>
		<tr>
			<td class="striped-info"><a href="<?php echo $this->Html->url(array('controller' => 'contacts', 'action' => 'view', $contact['Contact']['id'])); ?>">
			<?php echo $contact['Contact']['name']; ?></a></td>
			<td><?php echo $contact['Contact']['company']; ?></td>
			<td><?php echo $contact['Contact']['industry']; ?></td>
			<td><?php echo $contact['Contact']['city']; ?></td>
			<td><?php echo $contact['Contact']['mobile']; ?></td>
			<td><?php echo $contact['Contact']['email']; ?></td>
			<td>
				<a href="<?php echo $this->Html->url(array('controller' => 'contacts', 'action' => 'edit', $contact['Contact']['id'])); ?>"><i class="icon-edit"></i></a>
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
	$(".date").datepicker();
});
</script>
<a href="http://wvs.in/report/contacts/index.php">Export Excel</a>