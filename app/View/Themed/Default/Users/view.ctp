<div class="row">
<div class=" span5 offset3 view-user-box">
	<h3>User Details
	<a href="<?php echo $this->Html->url(array('controller'=>'users','action'=>'edit', $user['User']['id'])); ?>" class="btn btn-success btn-mini"><i class="icon-edit"></i>&nbsp;Edit User</a>
	</h3>
	<table class="table table-condensed">
	<thead>
	<tr>
		<td>Username</td><td>: <?php echo $user['User']['username']; ?></td>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td>Group</td><td>: <?php echo $user['Group']['name']; ?></td>
	</tr>
	<tr>
		<td>Name</td><td>: <?php echo $user['User']['full_name']; ?></td>
	</tr>
	<tr>
		<td>Email</td><td>: <?php echo $user['User']['email']?></td>
	</tr>
	<tr>
		<td>Active</td><td>: <?php if($user['User']['active']) echo 'Yes'; else echo 'No'; ?></td>
	</tr>
	<tr>
		<td>Created</td><td>: <?php echo $user['User']['created']; ?></td>
	</tr>
	</tbody>
	</table>
	<div class="view-user-back">
		<?php echo $this->Html->link('Back',array('controller'=>'users','action'=>'index'),array('class'=>'btn btn-success','icon'=>'reply'));?>
	</div>
</div>
</div>