<?php
/*
 * View/EventTypes/view.ctp
 * CakePHP Full Calendar Plugin
 *
 * Copyright (c) 2010 Silas Montgomery
 * http://silasmontgomery.com
 *
 * Licensed under MIT
 * http://www.opensource.org/licenses/mit-license.php
 */
?>
<div class="row">
<div class="span3 view-eventtype-box">
	<div>
		<h4>Event Type
		<a class="btn btn-success btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'action' => 'edit', $eventType['EventType']['id'])); ?>"><i class="icon-edit"></i> Edit</a>
		<a class="btn btn-success btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'full_calendar')); ?>"><i class="icon-calendar"></i> Calendar View</a>
		
		</h4>
	</div>
	<dl class="dl-horizontal"><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php echo __('Name'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $eventType['EventType']['name']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php echo __('Color'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $eventType['EventType']['color']; ?>
			&nbsp;
		</dd>
	</dl>
</div>

<div class="span8">
<div class="tabbable eventtype-tabbable">
				<ul class="nav nav-tabs">
			    	<li class="tab-blue active"><a href="#tab1" data-toggle="tab">Related Events</a></li>
			  	</ul>
			  	<div class="tab-content">
			  		<div class="tab-pane active" id="tab1">
	
	<?php if (!empty($eventType['Event'])):?>
	<table class="table table-bordered table-striped table-striped-info">
	<thead class="info">
	<tr>
		<th><?php echo __('Title'); ?></th>
		<th><?php echo __('Status'); ?></th>
		<th><?php echo __('Start'); ?></th>
        <th><?php echo __('End'); ?></th>
        <th><?php echo __('All Day'); ?></th>
		<th><?php echo __('Modified'); ?></th>
		<th class="actions"><?php echo __('Action'); ?></th>
	</tr>
	</thead>
	<?php
		foreach ($eventType['Event'] as $event):		
		?>
		<tr>
			<td><?php echo $this->Html->link($event['title'], array('plugin' => 'full_calendar', 'controller' => 'events', 'action' => 'view', $event['id'])); ?></td>
			<td><?php echo $event['status'];?></td>
			<td><?php echo $event['start'];?></td>
            <td><?php if($event['all_day'] != 1) { echo $event['end']; } else { echo "N/A"; } ?></td>
            <td><?php if($event['all_day'] == 1) { echo "Yes"; } else { echo "No"; }?></td>
			<td><?php echo $event['modified'];?></td>
			<td class="actions">
				<?php echo $this->Html->link('', array('plugin' => 'full_calendar', 'controller' => 'events', 'action' => 'edit', $event['id']),array('icon'=>'edit')); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>
	</div>
	</div>
	</div>
</div>
</div>