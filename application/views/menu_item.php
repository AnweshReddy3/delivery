<!doctype html>
<html lang="en">

<head>

	<title>Category</title>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- external css -->
	<link href="<?php echo base_url('./assets/css/admin.css')?>" rel="stylesheet">

	<!-- font awesome icons -->
	<script src="https://kit.fontawesome.com/aa1d0d4bf6.js" crossorigin="anonymous"></script>

	<!-- Bootstrap css -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

	<!-- cdn link for datatables for search and pagination for css -->
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css">

</head>

<body>


	<div class="wrapper">
		<header>
			<div class="header-content">
				<nav class="navbar nav-expand-md navbar-light bg-light">
					<a class="navbar-brand" href="<?php echo base_url(); ?>admin_controller/admin_view/">
						Food Explorer
					</a>
					<div class="dropdown image dropleft">
						<img class="rounded-circle w-25 h-25 dropdown-toggle " id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" src="<?php echo base_url(); ?>assets/upload/profile/profile_pic.jpg" />

						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<a class="dropdown-item" href="#">
								<i class="fas fa-user"></i>
								My Profile
							</a>
							<a class="dropdown-item" href="#">
								<i class="fas fa-key"></i>
								Change Password
							</a>
							<a class="dropdown-item" href="<?php echo base_url(); ?>admin_controller/notification/">
								<i class="fas fa-bell"></i>
								Notification
							</a>
							<a class="dropdown-item" href="#">
								<i class="fas fa-user-cog"></i>
								Setting
							</a>
							<a class="dropdown-item" href="<?php echo base_url('admin_controller/logout/') ?>">
								<i class="fas fa-sign-out-alt"></i>
								Logout
							</a>
						</div>
					</div>
				</nav>
			</div>
		</header>

		<aside>
			<ul class="sidebar-menu">
				<li class="sidebar-list">
					<i class="fas fa-tachometer-alt"></i>
					<a href="<?php echo base_url(); ?>admin_controller/admin_view/">
						<span>Dashboard</span>
					</a>
				</li>
				<li class="sidebar-list">
					<i class="far fa-keyboard"></i>
					<a href="<?php echo base_url(); ?>admin_controller/admin_category/">
						<span>Category</span>
					</a>
				</li>
				<li class="sidebar-list">
					<i class="far fa-minus-square"></i>
					<a href="<?php echo base_url(); ?>admin_controller/menu_item/">
						<span>Menu Items</span>
					</a>
				</li>
				<li class="sidebar-list">
					<i class="fas fa-umbrella"></i>
					<a href="<?php echo base_url(); ?>admin_controller/admin_top_cat/">
						<span>Toppings</span>
					</a>
				</li>
				<li class="sidebar-list">
					<i class="fas fa-user"></i>
					<a href="<?php echo base_url(); ?>admin_controller/users/">
						<span>Users</span>
					</a>
				</li>
				<li class="sidebar-list">
					<i class="fas fa-child"></i>
					<a href="<?php echo base_url(); ?>admin_controller/delivery_boy/">
						<span>Delivery Boy</span>
					</a>
				</li>
				<li class="sidebar-list">
					<i class="fas fa-city"></i>
					<a href="<?php echo base_url(); ?>admin_controller/cities/">
						<span>City</span>
					</a>
				</li>
				<li class="sidebar-list">
					<i class="fas fa-address-book"></i>
					<a href="<?php echo base_url(); ?>admin_controller/contact/">
						<span>Contact Us</span>
					</a>
				</li>
				<p>Notification</p>
				<hr>
				<li class="sidebar-list">
					<i class="far fa-bell"></i>
					<a href="<?php echo base_url(); ?>admin_controller/notification/">
						<span>Send Notification</span>
					</a>
				</li>
				<li class="sidebar-list">
					<i class="fab fa-android"></i>
					<a href="#">
						<span>Android Notification</span>
					</a>
				</li>
				<li class="sidebar-list">
					<i class="fab fa-apple"></i>
					<a href="#">
						<span>ios Notification</span>
					</a>
				</li>
			</ul>
		</aside>


		<article>

			<!-- Modal for adding menu items -->
			<div class="modal fade" id="menu_item" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Add Menu Items</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<form method="post" action="<?php echo base_url(); ?>admin_controller/add_menu_item/" enctype="multipart/form-data">
							<div class="modal-body">
								<div class="form-group">
									<label>Select Category</label>
									<select class="form-control" name="category" required>
										<option value="Select Category">Select Category</option>
										<option value="Veg Pizza">Veg Pizza</option>
										<option value="Greek Pizza">Greek Pizza</option>
										<option value="Meat Favorite">Meat Favorite</option>
										<option value="Gourmet Thins">Gourmet Thins</option>
										<option value="Veggie Favorite">Veggie Favorite</option>
										<option value="Alternative Crusts">Alternative Crusts</option>
										<option value="Quesadillas">Quesadillas</option>
									</select>
								</div>
								<div class="form-group">
									<label>Item Name</label>
									<input type="text" name="item_name" placeholder="Item Name" class="form-control" />
								</div>
								<div class="form-group">
									<label>Description</label>
									<textarea class="form-control" name="item_desc" placeholder="Description"></textarea>
								</div>
								<div class="form-group">
									<label>Price</label>
									<input type="text" name="item_price" placeholder="Price" class="form-control" />
								</div>
								<!--
                                <div class="form-group">
                                    <label>Select Topping</label>
                                </div>
-->
								<div class="form-group">
									<label>Image</label>
									<input type="file" name="item_image" class="form-control" />
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
								<button type="submit" name="insert_menu_item" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>


			<!-- Modal for editing menu items -->
			<div class="modal fade" id="edit_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Add Menu Items</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<form method="post" action="<?php echo base_url(); ?>admin_controller/add_menu_item/" enctype="multipart/form-data">
							<div class="modal-body">
								<div class="form-group">
									<label>Select Category</label>
									<select class="form-control" name="category" required>
										<option value="Select Category">Select Category</option>
										<option value="Veg Pizza">Veg Pizza</option>
										<option value="Greek Pizza">Greek Pizza</option>
										<option value="Meat Favorite">Meat Favorite</option>
										<option value="Gourmet Thins">Gourmet Thins</option>
										<option value="Veggie Favorite">Veggie Favorite</option>
										<option value="Alternative Crusts">Alternative Crusts</option>
										<option value="Quesadillas">Quesadillas</option>
									</select>
								</div>
								<div class="form-group">
									<label>Item Name</label>
									<input type="text" name="item_name" placeholder="Item Name" class="form-control" />
								</div>
								<div class="form-group">
									<label>Description</label>
									<textarea class="form-control" name="item_desc" placeholder="Description"></textarea>
								</div>
								<div class="form-group">
									<label>Price</label>
									<input type="text" name="item_price" placeholder="Price" class="form-control" />
								</div>

								<div class="form-group">
									<label>Select Topping</label>
								</div>

								<div class="form-group">
									<label>Image</label>
									<input type="file" name="item_image" class="form-control" />
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
								<button type="submit" name="insert_menu_item" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>

			<br>

			<div class="category">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?php echo base_url(); ?>admin_controller/admin_view/">Home</a></li>
						<li class="breadcrumb-item"><a href="<?php echo base_url(); ?>admin_controller/menu_item/">Menu Item</a></li>
					</ol>
				</nav>
			</div>
			<div class="container">
				<div class="add-category">
					<!-- Button trigger modal -->
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#menu_item">
						Add Menu Items
					</button>
					<br>
					<br>
					<div class="table">
						<table class="table table-striped table-hover" id="data-table">
							<thead class="thead-dark">
								<tr class="info">
									<th>ID</th>
									<th>Item Name</th>
									<th>Category</th>
									<th style="width:16.66%">Description</th>
									<th>Price</th>
									<th style="width:8.33%">Image</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<?php
                                $no = 1;
                                foreach($data as $row) {    
                                ?>
								<tr>
									<td><?php echo $no++; ?></td>
									<td><?php echo $row->item_name; ?></td>
									<td><?php echo $row->item_category; ?></td>
									<td><?php echo $row->item_desc; ?></td>
									<td><?php echo $row->item_price; ?></td>
									<td>
										<img alt="icon" src="<?php echo base_url("./assets/upload/images/".$row->item_image); ?>" style="width: 60px; height: 60px;">
									</td>
									<td>
										<a href="<?php echo 
                                        base_url("admin_controller/fetch_id_menu/".$row->id);  ?>" class="btn btn-info">
											Edit
										</a>
										
										<a class="btn btn-danger" href="<?php echo base_url("admin_controller/delete_menu_item/".$row->id); ?>">
											Delete
										</a>
									</td>
								</tr>
								<?php
                                }   
                                ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</article>


	</div>


	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js" integrity="sha512-+NqPlbbtM1QqiK8ZAo4Yrj2c4lNQoGv8P79DPtKzj++l5jnN39rHA/xsqn8zE9l0uSoxaCdrOgFs6yjyfbBxSg==" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

	<!--  cdn link for jquery datatables -->
	<script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
	<!-- cdn link for bootstrap datatables -->
	<script src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.min.js"></script>

	<!-- code for datatables activation  -->
	<script>
		$(document).ready(function() {
			$('#data-table').DataTable({
				language : {
					search : "_INPUT_",
					searchPlaceholder : "Search Menu Items",
				}
			});
		});

	</script>

</body>

</html>
