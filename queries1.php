<?php
$con = mysqli_connect("db.sice.indiana.edu","i308u20_team10","my+sql=i308u20_team10","i308u20_team10");

// Check connection

if (mysqli_connect_errno())

   { die("Failed to connect to MySQL: " . mysqli_connect_error()); }

else

   { echo "Established Database Connection";}



$sql = "SELECT count(t.ticketid) AS num_of_tickets, g.creditcardtype
FROM guest AS g
JOIN tickets AS t ON g.guestid = t.guestid
GROUP BY g.creditcardtype;";
   
$result = mysqli_query($con, $sql);




if (mysqli_num_rows($result) > 0) {
// output data of each row
	echo "<table border=1><tr><td style='background-color: silver;'>num_of_tickets</td>
							<td style='background-color: silver;'>credit_card_type</td>";
	while($row = mysqli_fetch_assoc($result)) {
		
	echo "<tr><td>" . $row["num_of_tickets"]. "</td><td>" . $row["creditcardtype"]. "</td></tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}
mysqli_close($con);
 
?>
   
   
   