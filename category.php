<?php
  include_once ("db_connection.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
    <title>Categories</title>
</head>
<body>
    <h3>Category</h3>
    <table>
        <tr>
            <th>Category</th>
            <th>Sub Category</th>
            <th>Sub Category Type</th>
        </tr>
        <?php
                $sql = $conn->prepare("SELECT c.*, cate.name as sub_category, sub_type.name as sub_category_type FROM category as c
                                                LEFT JOIN category as cate ON c.id = cate.category_id
                                                LEFT JOIN category as sub_type ON cate.id = sub_type.sub_category_id
                                                where c.category_id = 0 and c.sub_category_id = 0
                                                ORDER BY c.name  ASC
                                     ");
                $sql->execute();
                $result =  $sql->fetchAll(PDO::FETCH_OBJ);
                foreach($result as $data){
            ?>
        <tr>
            <td><?= $data->name; ?></td>
            <td><?= $data->sub_category; ?></td>
            <td><?= $data->sub_category_type; ?></td>
        </tr>
        <?php } ?>
    </table>
</body>
</html>