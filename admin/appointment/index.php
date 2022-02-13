<?php include("../../path.php"); ?>
<?php include(ROOT_PATH . "/app/controllers/appointment.php"); 
adminOnly();
?>
<?php  
 $connect = mysqli_connect("localhost", "root", "", "adminpanel");  
 $query = "SELECT * FROM bookings ORDER BY id desc";  
 $result = mysqli_query($connect, $query);  
 ?> 
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
           <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>  
           <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">  
        <link rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
            integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
            crossorigin="anonymous"> 
        <link href="https://fonts.googleapis.com/css?family=Candal|Lora"
            rel="stylesheet">
       
        <link rel="stylesheet" href="../../assets/css/header1.css">

        <link rel="stylesheet" href="../../assets/css/admindashboard.css">

        <title>Admin Section - Manage Appointment</title>
    </head>
    <body>   
    <?php include(ROOT_PATH . "/app/includes/adminHeader.php"); ?>

        
        <div class="admin-wrapper">

        <?php include(ROOT_PATH . "/app/includes/adminSidebar.php"); ?>

        <div class="admin-content">
                <div class="button-group">
                            
                </div>

                <div class="content">
            
           <br /><br />  
           <div class="container" style="width:1500px;">  
              
                <div class="col-md-3">  
                     <input type="text" name="from_date" id="from_date" class="form-control" placeholder="From Date" />  
                </div>  
                <div class="col-md-3">  
                     <input type="text" name="to_date" id="to_date" class="form-control" placeholder="To Date" />  
                </div>  
                <div class="col-md-5">  
                     <input type="button" name="filter" id="filter" value="Filter" class="btn btn-info" />  
                </div>  
                <div style="clear:both"></div>                 
                <br />  
                <div id="order_table">  
                     <table class="table table-bordered">  
                          <tr>  
                               <th width="10%">ID</th>  
                               <th width="50%">Name</th>  
                               <th width="10%">Contact</th>  
                               <th width="10%">Email</th>  
                               <th width="10%">Appointment type</th>  
                               <th width="12%">Date</th>  
                               <th width="20%">Timeslot</th>  
                          </tr>  
                     <?php  
                     while($row = mysqli_fetch_array($result))  
                     {  
                     ?>  
                          <tr>  
                               <td><?php echo $row["id"]; ?></td>  
                               <td><?php echo $row["name"]; ?></td>  
                               <td><?php echo $row["contact"]; ?></td>  
                               <td> <?php echo $row["email"]; ?></td>  
                               <td><?php echo $row["appointmenttype"]; ?></td>  
                               <td><?php echo $row["date"]; ?></td>  
                               <td><?php echo $row["timeslot"]; ?></td>
                               <td><a href="mail.php" target="_blank" rel="noopener noreferrer" class="delete">email</a></td>  
                          </tr>  
                     <?php  
                     }  
                     ?>  
                     </table>  
                </div>  
           </div>  
      </body>  
 </html>  
 <script>  
      $(document).ready(function(){  
           $.datepicker.setDefaults({  
                dateFormat: 'yy-mm-dd'   
           });  
           $(function(){  
                $("#from_date").datepicker();  
                $("#to_date").datepicker();  
           });  
           $('#filter').click(function(){  
                var from_date = $('#from_date').val();  
                var to_date = $('#to_date').val();  
                if(from_date != '' && to_date != '')  
                {  
                     $.ajax({  
                          url:"filter.php",  
                          method:"POST",  
                          data:{from_date:from_date, to_date:to_date},  
                          success:function(data)  
                          {  
                               $('#order_table').html(data);  
                          }  
                     });  
                }  
                else  
                {  
                     alert("Please Select Date");  
                }  
           });  
      });  
 </script>



    

</html>