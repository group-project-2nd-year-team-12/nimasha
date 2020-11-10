<?php
require_once ('../../config/database.php');
      require_once ('../../models/adminModel.php');
session_start(); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <div class="report-box">
            <h2>Users details</h2>
            <div><a href="../../controller/adminPanelCon.php?userPDF"><i class="fa fa-file-download fa-lg"></i> Get file here</a></div>
        </div>
        <div class="report-box">
            <h2>Student details</h2>
            <div><a href="../../controller/adminPanelCon.php?studentPDF"><i class="fa fa-file-download fa-lg"></i> Get file here</a></div>
        </div>
        <div class="report-box">
            <h2>Boarding Owner details</h2>
            <div><a href="../../controller/adminPanelCon.php?boardingPDF"><i class="fa fa-file-download fa-lg"></i> Get file here</a></div>
        </div>
        <div class="report-box">
            <h2>Food Supplier details</h2>
            <div><a href="../../controller/adminPanelCon.php?foodPDF"><i class="fa fa-file-download fa-lg"></i> Get file here</a></div>
        </div>
        <div class="report-box">
            <h2>Boarder details</h2>
            <div><a href="../../controller/adminPanelCon.php?boarderPDF"><i class="fa fa-file-download fa-lg"></i> Get file here</a></div>
        </div>
        </div>
        </div>
    </div>
 
</body>
    <script src="../../resource/js/admin.js"></script>
    <script src="../../resource/js/jquery.js"></script>
</html>

