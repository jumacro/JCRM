<?php
/*
 * View/EventTypes/index.ctp
 * CakePHP Full Calendar Plugin
 *
 * Copyright (c) 2010 Silas Montgomery
 * http://silasmontgomery.com
 *
 * Licensed under MIT
 * http://www.opensource.org/licenses/mit-license.php
 */
?>
<div class="eventTypes index">
	<div>
		<h3>Event Types
		<a class="btn btn-success btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'event_types', 'action' => 'add')); ?>"><i class="icon-plus"></i></a>
		<a class="btn btn-info btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'full_calendar')); ?>"><i class="icon-calendar"></i> Calendar View</a>
		</h3>
	</div>
	<table class="table table-bordered table-striped table-striped-warning">
	<thead class="warning">
	<tr>
			<th><?php echo $this->Paginator->sort('name');?></th>
            <th><?php echo $this->Paginator->sort('color');?></th>
			<th class="actions">Action</th>
	</tr>
	</thead>
	<?php
	$i = 0;
	foreach ($eventTypes as $eventType):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $this->Html->link($eventType['EventType']['name'], array('plugin' => 'full_calendar', 'action' => 'view', $eventType['EventType']['id'])); ?></td>
        <td><?php echo $eventType['EventType']['color']; ?></td>
		<td class="actions">
			
			<?php echo $this->Html->link('', array('plugin' => 'full_calendar', 'action' => 'edit', $eventType['EventType']['id']),array('icon'=>'edit')); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>

	<div class="pagination pagination-centered pagination-mini">
	<ul>
		<?php echo $this->Paginator->prev('', array(), null, array('class'=>'disabled'));?>
		<?php echo $this->Paginator->numbers();?>
		<?php echo $this->Paginator->next('', array(), null, array('class' => 'disabled'));?>
	</ul>
	</div>
</div>
