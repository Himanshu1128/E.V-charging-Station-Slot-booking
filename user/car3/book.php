<?php
 
include"bookings.php";
?>
<?php
    session_start();
    if (!isset($_SESSION['SESSION_EMAIL'])) {
        header("Location: index.php");
        die();
    }

    include '../config.php';

    $query = mysqli_query($conn, "SELECT * FROM users WHERE email='{$_SESSION['SESSION_EMAIL']}'");

    if (mysqli_num_rows($query) > 0) {
        $row = mysqli_fetch_assoc($query);

        
    }
?>
 

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- PAGE TITLE HERE -->
	<title>EVRC(Electronic vehicle rental & charging)</title>
    <link href="../css/style.css" rel="stylesheet">
	
</head>
<body>

    <div id="main-wrapper">
        <div class="nav-header">
            <a href="index.html" class="brand-logo">
				<svg class="logo-abbr" width="53" height="53" viewBox="0 0 53 53">
					<path class="svg-logo-primary-path" d="M48.3418 41.8457H41.0957C36.8148 41.8457 33.332 38.3629 33.332 34.082C33.332 29.8011 36.8148 26.3184 41.0957 26.3184H48.3418V19.2275C48.3418 16.9408 46.4879 15.0869 44.2012 15.0869H4.14062C1.85386 15.0869 0 16.9408 0 19.2275V48.8594C0 51.1462 1.85386 53 4.14062 53H44.2012C46.4879 53 48.3418 51.1462 48.3418 48.8594V41.8457Z" fill="#5BCFC5"/>
					<path class="svg-logo-primary-path" d="M51.4473 29.4238H41.0957C38.5272 29.4238 36.4375 31.5135 36.4375 34.082C36.4375 36.6506 38.5272 38.7402 41.0957 38.7402H51.4473C52.3034 38.7402 53 38.0437 53 37.1875V30.9766C53 30.1204 52.3034 29.4238 51.4473 29.4238ZM41.0957 35.6348C40.2382 35.6348 39.543 34.9396 39.543 34.082C39.543 33.2245 40.2382 32.5293 41.0957 32.5293C41.9532 32.5293 42.6484 33.2245 42.6484 34.082C42.6484 34.9396 41.9532 35.6348 41.0957 35.6348Z" fill="#5BCFC5"/>
				</svg>
                
				<p class="brand-title" width="124px" height="33px"  style="font-size: 30px;">user </p>
            </a>
            <div class="nav-control">
                <div class="hamburger">
                    <span class="line"></span><span class="line"></span><span class="line"></span>
                </div>
            </div>
        </div>
       
        <div class="header">
            <div class="header-content">
                <nav class="navbar navbar-expand">
                    <div class="collapse navbar-collapse justify-content-between">
                        <div class="header-left">
							<div class="dashboard_bar">
                                Booking
                            </div>
                        </div>
                        <ul class="navbar-nav header-right">
			 
                            <li class="nav-item">
								<a href="../logout.php" class="btn btn-primary d-sm-inline-block d-none">Logout<i class="las la-signal ms-3 scale5"></i></a>
							</li>
                        </ul>
                    </div>
				</nav>
			</div>
		</div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="dlabnav">
            <div class="dlabnav-scroll">
				<ul class="metismenu" id="menu">
					<li class="dropdown header-profile">
						<a class="nav-link" href="javascript:void(0);" role="button" data-bs-toggle="dropdown">
							<img src="../images/ion/man (1).png" width="20" alt=""/>
							<div class="header-info ms-3">
								<span class="font-w600 "><?php echo $row['name'];?></span>
							</div>
						</a>
						
					</li>
                     <li><a href="../Dashboard.php" aria-expanded="false">
							<i class="flaticon-025-dashboard"></i>
							<span class="nav-text">Dashboard</span>
						</a>
                    </li>
                    <li><a href="../charging-station.php" aria-expanded="false">
						<i class="flaticon-050-info"></i>
							<span class="nav-text">charging Station</span>
						</a>
                    </li>
                    <li><a href="../carbooking.php" aria-expanded="false">
							<i class="flaticon-041-graph"></i>
							<span class="nav-text">Rent Car</span>
						</a>
                    </li>
                   
                   
                   
                   
                   
                </ul>
			</div>
        </div>
         
        <div class="content-body">
            <!-- row -->
			<div class="container-fluid">
				 
				<div class="row">
					 
					 
					 <div class="container">
<h1 class="text-center">Book for Date: <?php echo date('m/d/Y', strtotime($date)); ?></h1><hr>
<div class="row">
<div class="col-md-12">
<?php echo (isset($msg))?$msg:"";?>

</div>
 <?php $timeslots = timeslots($duration, $cleanup, $start, $end);
 foreach($timeslots as $ts){
	 ?>
	 <div class ="col-md-2">
	 <div class="form-group">
	 <?php if(in_array($ts,$bookings)){?>
	 
	 <button class="btn btn-danger"><?php echo $ts;?></button>
	 
	 <?php }else{?>
	 
	 <button class="btn btn-success book" data-timeslot="<?php echo $ts;?>"><?php echo $ts;?></button>
	 
	 <?php }?>
	 
	 
	 </div>
	 </div>
 <?php }?>
</div>
</div>
<?php
 $query = mysqli_query($conn, "SELECT * FROM c1 ");

    if (mysqli_num_rows($query) > 0) {
        $row = mysqli_fetch_assoc($query);

        
    }
	?>

<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
         
        <h4 class="modal-title">Booking: <span id="slot"></span></h4>
      </div>
      <div class="modal-body">
        <div class="row">
		<div class="col-md-12">
		 <form action="" method="post">
		<div class="form-group">
		<label for=""> Timeslot</label>
		<input type ="text" readonly name="timeslot"id="timeslot" class="form-control">
		
		</div>
		<div class="form-group">
		<label for=""> Name</label>
		<input readonly type ="text" value="<?php echo $row['name'];?>"  name="name" class="form-control">
		</div>
		<div class="form-group">
		<label for=""> Email</label>
		<input readonly type ="email"  name="email" value="<?php echo $row['email'];?>" class="form-control">
		</div>
		<div class="form-group">
		<label for=""> Owner Email</label>
		<input readonly type ="email"  name="owner_email" value="aryan.singh_cs20@gla.ac.in" class="form-control">
		</div>
		<div class="form-group">
		<label for=""> Car modal</label>
		<input readonly type ="text"  name="carmodel" value="MG ZS EV" class="form-control">
		</div>
		<div class="form-group">
		<label for="">Carnumber</label>
		<input readonly  type ="text"  name="carnumber" value="HR26DQ7854" class="form-control">
		</div>
		<div class ="form-group pull right">
		<button class="btn btn-primary" type="submit" name="submit"> submit</button>
		</form>
		
		
      </div></div></div>
       
    </div>

  </div>
</div>
 

					 
				 
				</div>
            </div>
        </div>
        <!--**********************************
            Content body end
        ***********************************-->
		
		
		
        <!--**********************************
            Footer start
        ***********************************-->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>  
 
<script>
$(".book").click(function(){
var timeslot = $(this).attr('data-timeslot');
$("#slot").html(timeslot);
$("#timeslot").val(timeslot);
$("#myModal").modal("show");
})
</script>

    <script src="../vendor/global/global.min.js"></script>
    <script src="../js/custom.min.js"></script>
	<script src="../js/dlabnav-init.js"></script>
	
</body>

</html>


