<?php
require_once ('../../config/database.php');
      require_once ('../../models/adminModel.php');
session_start(); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="../../resource/css/admin.css">
    <link rel="stylesheet" href="../../resource/css/all.css">
    <title>Document</title>
</head>
<body>

    <div class="container">
    <div class="header">
            <div class="logo"><img src="../../resource/img/logo.svg" alt=""></div>
            <div class="sign">
            <a href="../../index.php"><i style=" padding-right:10px" class="fa fa-angle-double-right"></i></a>
            <a href="../../controller/logoutController.php"><i style=" padding-right:30px" class="fa fa-sign-out-alt"></i></a>    </div>
        </div>
        <div class="wrapper">
        <?php include 'slide-bar.php' ?>
      
        <div class="content">
            <div class="search">
               <div class="title"><h3>Student</h3></div> 
               <button onclick="window.location='student.php';" type="button">Show All</button>
               <div class="search-bar">
                   <form action="../../views/admin/student.php" method="post">
                       <input name="word" type="text" placeholder="Search">
                       <button name="search" type="submit"><i class="fa fa-search fa-lg"></i></button>
                   </form>
               </div>
            </div>
            <div class="table">
                <table>
                    <tr>
                        <th>Reg Id</td>
                        <th>First Name</td>
                        <th>Last Name</td>
                        <th>Email</td>
                        <th>NIC</th>
                        <th>Address</th>
                        <th>Is_accepted</th>
                        <th>Block user</th>
                    </tr>
                    <?php if(isset($_POST['search']))
                    {
                        $word=$_POST['word'];
                        $id=intval($_POST['word']);
                        $word.='%';
                        
                        
                        $result=adminModel::searchStudent($id,$word,$connection);
                        while($row=mysqli_fetch_assoc($result)){
                            ?> 
                       <?php include 'pop.php' ?>
                          <tr>
                              <td><?php echo $row['Reg_id']; ?></td>
                              <td><?php echo $row['first_name']; ?></td>
                              <td><?php echo $row['last_name']; ?></td>
                              <td><?php echo $row['email']; ?></td>
                              <td><?php echo $row['nic']; ?></td>
                              <td><?php echo $row['address']; ?></td>
                              <td><?php if($row['user_accepted']==0)echo 'not accepted';
                                        elseif($row['user_accepted']==1)echo 'accepted';
                                        else  echo 'blocked';      
                              ?></td>
                              <td><a style="color: red; cursor: pointer;" onclick='popBlock(<?php echo $row["Reg_id"]; ?>,"<?php echo $row["email"]; ?>","<?php echo $row["level"]?>);"'>Block</a></td>
                          </tr>
                         
                          <?php
                         }
                    }
                    else{ $result=adminModel::userDetails('student',$connection);
                    while($row=mysqli_fetch_assoc($result)){        
                       ?> 
                     <?php include 'pop.php' ?>
                     <tr>
                         <td><?php echo $row['Reg_id']; ?></td>
                         <td><?php echo $row['first_name']; ?></td>
                         <td><?php echo $row['last_name']; ?></td>
                         <td><?php echo $row['email']; ?></td>
                         <td><?php echo $row['nic']; ?></td>
                         <td><?php echo $row['address']; ?></td>
                         <td><?php if($row['user_accepted']==0)echo 'not accepted';
                                        elseif($row['user_accepted']==1)echo 'accepted';
                                        else  echo 'blocked';      
                              ?></td>
                         <td><a style="color: red; cursor: pointer;" onclick='popBlock(<?php echo $row["Reg_id"]; ?>,"<?php echo $row["email"]; ?>","<?php echo $row["level"];?>");'>Block</a></td>
                     </tr>
                     
                     <?php
                    }
                }
                    ?>
                </table>
            </div>
        </div>
        </div>
    </div>
 
</body>
    <script src="../../resource/js/admin.js"></script>
    <script src="../../resource/js/jquery.js"></script>
    <script>
              $('#1').click(title);
          $('#2').click(title);
          $('#3').click(title);
          $('#4').click(title);
          $('#5').click(title);
          $('#6').click(title);
        function title()
        { 
           
            if(this.checked)
        {
            $('.btn button').removeAttr('disabled',false);
            $('.btn button').css('background-color','red');
        }
        else{if(!$('#1').is(":checked") && !$('#2').is(":checked") && !$('#3').is(":checked") && !$('#4').is(":checked") && !$('#5').is(":checked") ){
            $('.btn button').attr('disabled',true);
            $('.btn button').css('background-color','gray');
        }
        }
        }
        function popBlock(id,email,level)
        {
       
            document.querySelector('.block').style.display='block';
            // document.querySelector('div:not(.block)').style.filter='blur(6px)';
            document.getElementById('id').innerHTML='User Id :'+id;
            document.getElementById('email').innerHTML='User email :'+email;
            document.getElementById('email-save').value=email;
            document.getElementById('level-save').value=level;

        }
        function popBack()
        {
            document.querySelector('.block').style.display='none';
            // document.querySelector('div:not(.block)').style.filter='blur(0px)';
        }
    </script>
</html>

