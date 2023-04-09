
<?php
function build_calendar($month, $year) {	
    $daysOfWeek = array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
    $firstDayOfMonth = mktime(0, 0, 0, $month, 1, $year);
    $numberDays = date('t', $firstDayOfMonth);
    $dateComponents = getdate($firstDayOfMonth);
    $monthName = $dateComponents['month'];
    $dayOfWeek = $dateComponents['wday'];
    $dateToday = date('Y-m-d');

    $prev_month = date('m', mktime(0, 0, 0, $month-1, 1, $year));
    $prev_year = date('Y', mktime(0, 0, 0, $month-1, 1, $year));
    $next_month = date('m', mktime(0, 0, 0, $month+1, 1, $year));
    $next_year = date('Y', mktime(0, 0, 0, $month+1, 1, $year));
    $calendar = "<center><h2>$monthName $year</h2>";

    $calendar .= "<a class='btn btn-primary btn-xs' href='?month=$prev_month&year=$prev_year'>PrevMonth</a>"; 
    $calendar .= "<a class='btn btn-primary btn-xs' href='?month=".date('m')."&year=".date('Y')."'>Current Month</a>";
    $calendar .= "<a class='btn btn-primary btn-xs' href='?month=$next_month&year=$next_year'>Next Month</a></center>";
    $calendar .= "<br><table class='table table-bordered'>";
    $calendar .= "<tr>";

    foreach($daysOfWeek as $day) {
        $calendar .= "<th class='header'>$day</th>";
    }

    $calendar .= "</tr><tr>";
    $currentDay = 1;
    if($dayOfWeek > 0) {
        for($k = 0; $k < $dayOfWeek; $k++) {
            $calendar .= "<td class='empty'></td>";
        }
    }
    $month = str_pad($month, 2, "0", STR_PAD_LEFT);
    while($currentDay <= $numberDays) {
        if($dayOfWeek == 7) {
            $dayOfWeek = 0;
            $calendar .= "</tr><tr>";
        }

        $currentDayRel = str_pad($currentDay, 2, "0", STR_PAD_LEFT);
        $date = "$year-$month-$currentDayRel";
        $dayName = strtolower(date('I', strtotime($date)));
        $today = $date == date('Y-m-d') ? 'today' : '';
        $calendar .= "<td class='$today'><h3>$currentDayRel</h3></td>";
        $currentDay++;
        $dayOfWeek++; 
    }

    if($dayOfWeek < 7) {
        $remainingDays = 7 - $dayOfWeek;
        for($i = 0; $i < $remainingDays; $i++) {
            $calendar .= "<td class ='empty'></td>";
        }
    }

    $calendar .= "</tr>";
    $calendar .= "</table>";

    return $calendar;
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<style>
@media only screen and (max-width:760px),
(min-device-width:802px)and(max-device-width:1020px){
	table,
	thead,
	tbody,
	th,
	td,
	tr{
		display:block;
	}
	.empty{
		display:none;
	}
	th{
		position : absolute;
		top:-9999px;
		left:-9999px;
	}
	tr{
		border : 1px solid #ccc;
	}
	td{
		border:none;
		border-bottom:1px solid #eee;
		position: relative;
		padding-left:50%;
	}
	td: (1){
		content:"Sunday";
	}
	td: (2){
		content:"Monday";
	}
	td: (3){
		content:"Tuesday";
	}
	td: (4){
		content:"Wednesday";
	}
	td: (5){
		content:"Thursday";
	}
	td: (6){
		content:"Friday";
	}
	td: (7){
		content:"Saturday";
	}
}

@media only screen and 
(min-device-width:320px)and(max-device-width:480px){
	body{
		padding :0;
		margin:0;
}
}

@media only screen and 
(min-device-width:802px)and(max-device-width:1020px){
	body{
		 width:495px;
}
}
@media(min-width:641px){
	table{
		table-layout: fixed;
	}
	td{
		width:33%;
	}
}
.row{
	margin-top:20px;
}
.today{
	background:yellow;
}
		
</style>

</head>
<body>
<div class ="container">
     <div class="row">
        <div class="col-md-12">
		
		 <?php
		 $dateComponents = getdate();
		 if(isset($_GET['month'])&& isset($_GET['year'])){
			 $month = $_GET['month'];
		 $year =$_GET['year'];
		 }else{
			 $month = $dateComponents['mon'];
			 $year=$dateComponents['year'];
		 }
		 echo build_calendar($month,$year);
		 
		 
		 ?> 
</body>
</html>
