<STYLE type="text/css">
	.tableTd {
	   	border-width: 0.5pt; 
		border: solid; 
	}
	.tableTdContent{
		border-width: 0.5pt; 
		border: solid;
	}
	#titles{
		font-weight: bolder;
	}
   
</STYLE>
<table>
	<tr>
		<td><b>Events report<b></td>
	</tr>
	<tr>
		<td><b>Date:</b></td>
		<td><?php echo date("F j, Y, g:i a"); ?></td>
	</tr>
	<tr>
		<td><b>Number of Rows:</b></td>
		<td style="text-align:left"><?php echo count($rows);?></td>
	</tr>
	<tr>
		<td></td>
	</tr>
		<tr id="titles">
			<td class="tableTd">Title</td>
			<td class="tableTd">Event Type</td>
			<td class="tableTd">Status</td>
			<td class="tableTd">User</td>
			<td class="tableTd">Start</td>
			<td class="tableTd">End</td>
		</tr>		
		<?php foreach($rows as $row):
			echo '<tr>';
			echo '<td class="tableTdContent">'.$row['Event']['title'].'</td>';
			echo '<td class="tableTdContent">'.$row['EventType']['name'].'</td>';
			echo '<td class="tableTdContent">'.$row['Event']['status'].'</td>';
			echo '<td class="tableTdContent">'; ?>
			<?php
			if(!empty($row['User'])){
				foreach($row['User'] as $user){
					echo $user['full_name'] . ', ';
				}
			}
			else {
				echo "&nbsp;";
			}
			echo '</td>';
			echo '<td class="tableTdContent">'.$row['Event']['start'].'</td>';
			echo '<td class="tableTdContent">'.$row['Event']['end'].'</td>';
			echo '</tr>';
			endforeach;
		?>
</table>

