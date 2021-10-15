<?php
$con = mysqli_connect("db.sice.indiana.edu","i308u20_team10","my+sql=i308u20_team10","i308u20_team10");

// Check connection

if (mysqli_connect_errno())

   { die("Failed to connect to MySQL: " . mysqli_connect_error()); }

else

   { echo "Established Database Connection";}

$sanride_name = mysqli_real_escape_string($con, $_POST['ride_name']);

$sql = "SELECT concat(g.firstname,' ', g.middlename,' ', g.lastname) as full_name
FROM guest AS g
join attractions as a on a.guestid = g.guestid
where a.ridename='$sanride_name';";
   
$result = mysqli_query($con, $sql);


if (mysqli_num_rows($result) > 0) {
// output data of each row
	echo "<table border=1><tr><td style='background-color: silver;'>Full name</td>";
	while($row = mysqli_fetch_assoc($result)) {
		
	echo "<tr><td>" . $row["full_name"]. "</td></tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}
mysqli_close($con);
 
?>
   
   
   