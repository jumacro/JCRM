<div class="span6 offset3 view-deal-box">
	<h3>Deal Details
	<a href="<?php echo $this->Html->url(array('controller'=>'deals','action'=>'edit', $deal['Deal']['id'])); ?>" class="btn btn-success btn-mini"><i class="icon-edit"></i> Edit</a>
	</h3>
	<table class="table table-condensed">
		<thead>
			<tr>
				<th>Contact Name:</th>
				<th><?php echo $deal['Contact']['name']?> (<?php echo $deal['Contact']['company']?>)</th>
			<tr>
		</thead>
		<tbody>
			<tr>
				<td>User Name:</td>
				<td><?php echo $deal['children']['User']['full_name']?></td>
			<tr>
			<tr>
				<td>Amount:</td>
				<td><?php echo $this->Number->currency($deal['Deal']['amount'],'USD'); ?></td>
			<tr>
			<tr>
				<td>Date:</td>
				<td><?php echo $deal['Deal']['date']?></td>
			<tr>
			<tr>
				<td>Details:</td> 
				<td><?php echo $deal['Deal']['details']?></td>
			<tr>
			<tr>
				<td>Remarks:</td>
				<td><?php echo $deal['Deal']['remarks']?></td>
			<tr>
			<tr>
				<td>Status:</td>
				<td><?php if($deal['DealStatus']['name']=='Process'){
				echo '<span class="label label-warning">'.$deal['DealStatus']['name'].'</span>'; 
			}
			else if($deal['DealStatus']['name']=='Accepted'){
				echo '<span class="label label-success">'.$deal['DealStatus']['name'].'</span>';
			}
			else if($deal['DealStatus']['name']=='Rejected'){
				echo '<span class="label label-important">'.$deal['DealStatus']['name'].'</span>';
			}?></td>
			<tr>
		</tbody>
	</table>
	
	<div class="view-deal-back">
		<?php echo $this->Html->link('Back',array('controller'=>'deals','action'=>'index'),array('class'=>'btn btn-success'));?>
	</div>
</div>
