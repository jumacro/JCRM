<?php
/*
 * View/FullCalendar/index.ctp
 * CakePHP Full Calendar Plugin
 *
 * Copyright (c) 2010 Silas Montgomery
 * http://silasmontgomery.com
 *
 * Licensed under MIT
 * http://www.opensource.org/licenses/mit-license.php
 */
?>
<script type="text/javascript">
plgFcRoot = '<?php echo $this->Html->url('/',true); ?>' + "full_calendar";
</script>
<?php
echo $this->Html->script(array('/full_calendar/js/jquery-1.5.min', '/full_calendar/js/jquery-ui-1.8.9.custom.min', '/full_calendar/js/fullcalendar.min', '/full_calendar/js/jquery.qtip-1.0.0-rc3.min', '/full_calendar/js/ready'), array('inline' => 'false'));
echo $this->Html->css('/full_calendar/css/fullcalendar', null, array('inline' => false));
?>


<div class="calendar-box">
	<div>
		<h3>Calendar
		<a class="btn btn-success" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'events', 'action' => 'add')); ?>"><i class="icon-plus-sign"></i> New Event</a>
		<a class="btn btn-info" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'events')); ?>"><i class="icon-tasks"></i> Event View</a>
		<a class="btn btn-info pull-right" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'event_types')); ?>" >Event Types</a>
		</h3>
	</div>
	<div id="calendar"></div>
</div>