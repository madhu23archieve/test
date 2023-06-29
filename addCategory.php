<?php
session_start();
    include_once ("db_connection.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
    <title>Document</title>
</head>
<body>
    <h2>Beauty Product</h2>
    <?php 
        if(isset($_SESSION['msg'])){
            echo $_SESSION['msg'];
        }
        unset($_SESSION['msg']);
    ?>
    <form action="addCategoryDb.php" method="post">
        <span>Category</span>
        <select name="category" id="category">
            <option value="">Select Category</option>
            <option value="Makeup">Makeup</option>
            <option value="Skin">Skin</option>
            <option value="Hair">Hair</option>
            <option value="Fragances">Fragances</option>
        </select>
        <br>
    </form>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="ajax.js"></script>
</html>