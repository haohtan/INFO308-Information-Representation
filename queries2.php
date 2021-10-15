<?php
$con = mysqli_connect("db.sice.indiana.edu","i308u20_team10","my+sql=i308u20_team10","i308u20_team10");

// Check connection

if (mysqli_connect_errno())

   { die("Failed to connect to MySQL: " . mysqli_connect_error()); }

else

   { echo "Established Database Connection";}

$santype = mysqli_real_escape_string($con, $_POST['type']);

$sql = "SELECT AVG(DATEDIFF(CURDATE(), g.dob)/365) as guest_age
FROM guest as g
JOIN guest_phone AS gp ON g.guestid = gp.guestid
where gp.type = '$santype';";
   
$result = mysqli_query($con, $sql);




if (mysqli_num_rows($result) > 0) {
// output data of each row
	echo "<table border=1><tr><td style='background-color: silver;'>Guest_Average_Age</td>";
	while($row = mysqli_fetch_assoc($result)) {
		
	echo "<tr><td>" . $row["guest_age"]. "</td></tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}
mysqli_close($con);
 
?>
   
   
   