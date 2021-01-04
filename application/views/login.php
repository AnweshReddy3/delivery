<!doctype html>
<html lang="en">

<head>

	<title>Login</title>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- external css -->
	<link href="<?php echo base_url('./assets/css/login.css')?>" rel="stylesheet">

	<!-- font awesome icons -->
	<script src="https://kit.fontawesome.com/aa1d0d4bf6.js" crossorigin="anonymous"></script>

	<!-- Bootstrap css -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

</head>

<body>


	<div class="fluid-container cont">
		<div class="row">
			<div class="col-lg-3 col-md-2"></div>
			<div class="col-lg-6 col-md-8 login-box">

				<div class="col-lg-5 login-title mx-auto">
					Food Explorer
				</div>


				<div class="col-lg-7 login-form offset-2">

					<?php echo form_open('Admin_controller/'); ?>
					<div class="form-group">
						<div class="error">
							<?php echo form_error('username'); ?>
						</div>
						<input type="text" class="form-control" placeholder="Username" name="username" value="<?php echo set_value('username'); ?>">
					</div>
					<hr class="line-break">
					<div class="form-group">
						<div class="error">
							<?php echo form_error('password'); ?>
						</div>
						<input type="password" class="form-control" placeholder="Password" name="password" value="<?php echo set_value('password'); ?>">
					</div>
					<hr class="line-break">
					<div class="col-lg-12 loginbttn">
						<div class="col-lg-6 login-btm login-text">
							<!-- Error Message -->
						</div>
						<div class="col-lg-6 login-btm login-button">
							<button type="submit" class="btn btn-info info">LOGIN</button>
						</div>
					</div>
					<?php echo form_close(); ?>

				</div>

				<div class="col-lg-3 col-md-2"></div>
			</div>
		</div>



		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js" integrity="sha512-+NqPlbbtM1QqiK8ZAo4Yrj2c4lNQoGv8P79DPtKzj++l5jnN39rHA/xsqn8zE9l0uSoxaCdrOgFs6yjyfbBxSg==" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>

</html>
