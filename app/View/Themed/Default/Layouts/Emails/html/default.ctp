<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN">
<html>
<head>
	<title><?php echo $title_for_layout; ?></title>
</head>
<body>
	<?php echo $this->fetch('content'); ?>

	<p>This mail was sent by <a href="<?php $this->Html->url('/',true); ?>">Micra CRM</a></p>
</body>
</html>