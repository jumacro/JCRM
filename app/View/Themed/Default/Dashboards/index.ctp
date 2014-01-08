<?php
//echo $this->Html->script('rgraph/RGraph.common.core');
//echo $this->Html->script('rgraph/RGraph.line');
echo $this->Html->script('jqplot/jquery.jqplot.min');
echo $this->Html->script('jqplot/plugins/jqplot.canvasTextRenderer.min');
echo $this->Html->script('jqplot/plugins/jqplot.canvasAxisLabelRenderer.min');
echo $this->Html->script('jqplot/plugins/jqplot.canvasAxisTickRenderer.min');
echo $this->Html->css('jqplot/jquery.jqplot.min');
?>
<div class="row">
	<div class="span6">
		<h3 style="float: left;">My Contacts</h3><h3 style="float: left; margin:10px 0 0 25px;">Contacts
		<a class="btn btn-success btn-mini" href="<?php echo $this->Html->url(array('controller'=>'contacts','action'=>'add')); ?>"><i class="icon-plus"></i></a></h3>
		<div>
			<table class="table table-bordered table-striped table-striped-warning">
				<thead class="warning">
					<?php echo $this->Html->tableHeaders(array('Name', 'Status', 'Company', 'City', '<i class="icon-phone"></i> Phone #'));?>
				</thead>
				<tbody>
					<?php foreach($contacts as $contact): ?>
					<tr>
						<td><a href="<?php echo $this->Html->url(array('controller' => 'contacts', 'action' => 'view', $contact['Contact']['id'])); ?>"><?php echo $contact['Contact']['name']; ?></a></td>
						<td>
						<?php
							if ($contact['ContactStatus']['name']=='Lead'){
								
								echo '<span class="label label-important">' . $contact['ContactStatus']['name'] . '</span>';
							}
							else if($contact['ContactStatus']['name']=='Opportunity'){
								echo '<span class="label label-warning">' . $contact['ContactStatus']['name'] . '</span>';
								
							}
							else if($contact['ContactStatus']['name']=='Account'){
								echo '<span class="label label-success">' . $contact['ContactStatus']['name'] . '</span>';
							}
						?>
						</td>
						<td><?php echo $contact['Contact']['company']; ?></td>
						<td><?php echo $contact['Contact']['city']; ?></td>
						<td><?php echo $contact['Contact']['phone']; ?></td>
					</tr>
					<?php endforeach; ?>
				</tbody>
			</table>
		</div>
	</div>
	<div class="span6">
		<h3>Company Deal Progress</h3>
		<div class="chart-box">
			<!--  <canvas id="thegraph" width="460" height="165">[Canvas not supported]</canvas>-->
			<div id="chartdiv" ></div>
		</div>
	</div>
</div>
<div class="row">
	<div class="span6">
		<h3 style="float:left;">My Deals</h3><h3 style="float: left; margin:10px 0 0 25px;">Deals
		<a class="btn btn-success btn-mini" href="<?php echo $this->Html->url(array('controller'=>'deals','action'=>'add')); ?>"><i class="icon-plus"></i></a></h3>
		<div>
			<table class="table table-bordered table-striped table-striped-success">
				<thead class="success">
					<?php echo $this->Html->tableHeaders(array('Amount', 'Contact Name', 'Status','Date')); ?>
				</thead>
				<tbody>
					<?php foreach($deals as $deal): ?>
					<tr>
						<td><a href="<?php echo $this->Html->url(array('controller' => 'deals', 'action' => 'view', $deal['Deal']['id'])); ?>"><?php echo $this->Number->currency($deal['Deal']['amount'],'USD'); ?></a></td>
						<td><?php echo $deal['Contact']['name']; ?></td>
						<td><?php if($deal['DealStatus']['name']=='Process'){
							echo '<span class="label label-warning">'.$deal['DealStatus']['name'].'</span>'; 
						}
						else if($deal['DealStatus']['name']=='Accepted'){
							echo '<span class="label label-success">'.$deal['DealStatus']['name'].'</span>';
						}
						else if($deal['DealStatus']['name']=='Rejected'){
							echo '<span class="label label-important">'.$deal['DealStatus']['name'].'</span>';
						}?>
						</td>
						<td><?php echo $deal['Deal']['date']; ?>
					</tr>
					<?php endforeach; ?>
				</tbody>
			</table>
		</div>
	</div>
	<div class="span6">
		<h3 style="float:left;">My Events</h3><h3 style="float: left; margin:10px 0 0 25px;">Events
		<a class="btn btn-success btn-mini" href="<?php echo $this->Html->url(array('plugin' => 'full_calendar', 'controller' => 'events', 'action' => 'add')); ?>"><i class="icon-plus"></i></a></h3>
		<div>
			<table class="table table-bordered table-striped table-striped-info">
				<thead class="info">
					<?php echo $this->Html->tableHeaders(array('Title','Start','End','Status')); ?>
				</thead>
				<tbody>
					<?php foreach($events as $event):?>
					<tr>
						<td><?php echo $this->Html->link($event['Event']['title'], array('plugin'=>'full_calendar','controller'=>'events','action' => 'view', $event['Event']['id'])); ?></td>
						<td><?php echo $event['Event']['start']; ?></td>
						<td><?php echo $event['Event']['end']; ?></td>
						<td><?php echo $event['Event']['status']; ?></td>
					</tr>
					<?php endforeach;?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<style>
	.jqplot-yaxis-tick {
		right:1px;
		text-align:right;
	}
	.jqplot-xaxis {
		margin-top:3px;
	}
</style>
<script>
    var data = <?php echo json_encode($deal_graph_data);?>;
    var ticks =  <?php echo json_encode($ticks); ?>;//[["1","jj"],["2","kk"],["3","ll"],["4","mm"],["5","nn"],["6","oo"],["7","pp"]];
        
$(document).ready(function(){

  var plot3 = $.jqplot('chartdiv', data, 
    { 
      //title:'Line Style Options', 
      // Series options are specified as an array of objects, one object
      // for each series.
      series:[ 
          {
            // Change our line width and use a diamond shaped marker.
            label:'Process',
            lineWidth:1, 
            showMarker:false,
            color: 'rgb(248, 148, 6)',
            //markerOptions: { style:'diamond' }
          }, 
          {
        	  label:'Accepted',
        	 lineWidth:1,
        	 showMarker:false,
        	 color: 'rgb(70, 136, 71)',
            //showLine:false, 
            //markerOptions: { size: 7, style:"x" }
          },
          {
        	  label:'Rejected',
        	 lineWidth:1,
        	 showMarker:false,
        	 color: 'rgb(185, 74, 72)',
           // markerOptions: { style:"circle" }
          }
      ],
      legend: {
          show: false,
          location: 'e',
          placement: 'Grid'
      },
      axesDefaults: {
          labelRenderer: $.jqplot.CanvasAxisLabelRenderer
          //tickRenderer: $.jqplot.CanvasAxisTickRenderer
        },
      
        axes: {
          // options for each axis are specified in seperate option objects.
          xaxis: {
        	  renderer: $.jqplot.CategoryAxisRenderer,
        	  //renderer:$.jqplot.DateAxisRenderer,
        	  tickRenderer: $.jqplot.CanvasAxisTickRenderer,
              tickOptions:{
                 angle:-90,
                fontSize:'11px',
                  },
              ticks: ticks,
            
           pad: 0,
            
          },
          yaxis: {
              tickOptions:{
            	  	formatString:'$%.0f&nbsp;&nbsp;',
                	angle: 0
                  },
            //label: "",
            min: 0,
          }
        }
    }
  );
    
});
</script>