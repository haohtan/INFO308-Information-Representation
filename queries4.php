<?php
$con = mysqli_connect("db.sice.indiana.edu","i308u20_team10","my+sql=i308u20_team10","i308u20_team10");

// Check connection

if (mysqli_connect_errno())

   { die("Failed to connect to MySQL: " . mysqli_connect_error()); }

else

   { echo "Established Database Connection";}

$sql = "select concat(g.firstname,' ', g.middlename,' ', g.lastname) as full_name
from guest as g
where g.guestid not in (
select a.guestid
from guest as gt
join attractions as a on a.guestid = gt.guestid
where a.gamename='Pinball');";
   
$result = mysqli_query($con, $sql);

if (mysqli_num_rows($result) > 0) {
// output data of each row
	echo "<table border=1><tr><td style='background-color: silver;'>full_name</td>";
	while($row = mysqli_fetch_assoc($result)) {
		
	echo "<tr> <td>" . $row["full_name"] . "</td></tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}
mysqli_close($con);
 
?>
   
   
   