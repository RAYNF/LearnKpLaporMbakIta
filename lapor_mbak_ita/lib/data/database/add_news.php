<?php
include 'config.php';

$title = $_POST['title'];
$description = $_POST['description'];
// $ketLocation = $_POST['location'];
// $image = $_FILES['image']['tmp_name'];
// $imageContent = addslashes(file_get_contents($image));
$image = $_POST['image'];
// $latitude = $_POST['latitude'];
// $longitude = $_POST['longitude'];
// $latitude = '0';
// $longitude = '0';
$status = "verifikasi";

$query = "INSERT INTO news (title, description, image,status) VALUES ('$title', '$description', '$image', '$status')";

if (mysqli_query($conn, $query)) {
    echo json_encode(array("status" => "success", "message" => "Report added successfully."));
} else {
    echo json_encode(array("status" => "error", "message" => "Error: " . mysqli_error($conn)));
}

mysqli_close($conn);
?>
