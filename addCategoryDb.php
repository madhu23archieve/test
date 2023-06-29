<?php
session_start();
    include_once ("db_connection.php");
    $category = $_POST['category'];

    if(isset($_POST['submit'])){
        $sql = $conn->prepare("INSERT INTO category(name) VALUES(?)");
        if($sql->execute([$category])){
            $_SESSION['msg'] = 'Category added successfully.';
            header('location:addCategory.php');
        }else{
            $_SESSION['msg'] = 'Failed to add category.';
            header('location:addCategory.php');
        }
    }
?>