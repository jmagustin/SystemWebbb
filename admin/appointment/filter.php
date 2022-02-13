<?php  
 //filter.php  
 if(isset($_POST["from_date"], $_POST["to_date"]))  
 {  
      $connect = mysqli_connect("localhost", "root", "", "adminpanel");  
      $output = '';  
      $query = "  
           SELECT * FROM bookings  
           WHERE date BETWEEN '".$_POST["from_date"]."' AND '".$_POST["to_date"]."'  
      ";  
      $result = mysqli_query($connect, $query);  
      $output .= '  
           <table class="table table-bordered">  
                <tr>  
                     <th width="5%">ID</th>  
                     <th width="30%">Name</th>  
                     <th width="30%">Contact</th>  
                     <th width="30%">Email</th>  
                     <th width="43%">Appointment Type</th>  
                     <th width="10%">Date</th>  
                     <th width="12%">Time Slot</th>  
                </tr>  
      ';  
      if(mysqli_num_rows($result) > 0)  
      {  
           while($row = mysqli_fetch_array($result))  
           {  
                $output .= '  
                     <tr>  
                          <td>'. $row["id"] .'</td>  
                          <td>'. $row["name"] .'</td>  
                          <td>'. $row["contact"] .'</td>  
                          <td> '. $row["email"] .'</td>  
                          <td>'. $row["appointmenttype"] .'</td>  
                          <td>'. $row["date"] .'</td>  
                          <td>'. $row["timeslot"] .'</td> 
                          <th><a href="mail.php">Email</a></th>  
                     </tr>  
                ';  
           }  
      }  
      else  
      {  
           $output .= '  
                <tr>  
                     <td colspan="5">No Order Found</td>  
                </tr>  
           ';  
      }  
      $output .= '</table>';  
      echo $output;  
 }  
 ?>
