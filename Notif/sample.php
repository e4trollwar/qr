
<!DOCTYPE html>
<html>
<head>
	<title></title>
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="">Notif</a>
			</div>

			<ul class="nav navbar navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="label label-pill label-danger count" style="border-radius: 10px"></span><span class="glyphicon glyphicon-bell" style="font-size: 18px;"></span></a>
					<ul class="dropdown-menu"></ul>
				</li>
			</ul>
		</div>
	</nav>
	<br>
	<form method="post" id="message_form">
		<div class="form-group">
			<label>Tile</label>
			<input type="text" name="title" id="title" class="form-control">
		</div>
		<div class="form-group">
			<label>Msg</label>
			<textarea name="message" id="message" class="form-control" rows="5"></textarea> 
		</div>
		<div class="form-group">
			<input type="submit" name="submit" id="post" class="btn btn-primary" value="submit message">
		</div>
	</form>
</div>

<script>
	$(document).ready(function(){

		function showUnreadNotifications(option = '') {
				$.ajax({
					url: 'fetch.php',
					method: 'POST',
					data: {option: option},
					dataType: 'json',
					success: function(data){

						$('.dropdown-menu').html(data.notification);

						if(data.unreadNotification > 0){
							$('.count').html(data.unreadNotification);
						}
					}
				});
		}
		showUnreadNotifications();

		$('#message_form').on('submit', function(e){
			e.preventDefault();
			if($('#title').val() != '' && $('#message').val() != ''){
				var formData = $(this).serialize();
				$.ajax({
					url: 'insert.php',
					method: 'POST',
					data: formData,
					success: function(data){
						$('#message_form')[0].reset();
						showUnreadNotifications();
					}
				});
			} else{
				alert('Fill this up')
			}
		});

		$(document).on('click', '.dropdown-toggle', function(){

			$('.count').html('');

		})

		setInterval(function(){
			showUnreadNotifications();
		}, 5000);

	});

</script>
</body>
</html>