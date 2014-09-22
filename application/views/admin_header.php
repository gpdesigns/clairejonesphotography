<!doctype HTML>
<html>
<head>
	<meta charset="UTF-8">
	<title>Administrator Only | ClaireJonesPhotography.com</title>
	<link href="<?php echo site_url();?>files/css/reset.css" rel="stylesheet" type="text/css">	
	<link href="<?php echo site_url();?>files/css/style.css" rel="stylesheet" type="text/css">
	<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>	
</head>
<body id="admin">
	<header>
		<p><img src="<?php echo site_url();?>files/images/cjphoto.png" alt="ClaireJonesPhotography" /></p>
		<nav>
			<ul>
				<li>Welcome Back, "<?php echo $username; ?>"</li>
				<li><a href="<?php echo site_url();?>index.php/admin/logout"><img src="<?php echo site_url();?>files/images/logout.png" /></a></li>
				<li><a href="<?php echo site_url();?>index.php/admin/logout">LOGOUT</a></li>
			</ul>
		</nav>	
	</header>