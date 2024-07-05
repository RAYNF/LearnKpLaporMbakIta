<?php
include 'config.php';

$username = $_POST['username'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$password = $_POST['password'];
$confirm_password = $_POST['confirm_password'];

if ($password != $confirm_password) {
    echo json_encode(array("status" => "error", "message" => "Passwords do not match."));
    exit();
}

//hash password
$hashed_password = password_hash($password, PASSWORD_DEFAULT);

$query = "INSERT INTO users (username, email, phone, password) VALUES ('$username', '$email', '$phone', '$hashed_password')";

// if (mysqli_query($conn, $query)) {
//     echo json_encode(array("status" => "success", "message" => "User registered successfully."));
// } else {
//     echo json_encode(array("status" => "error", "message" => "Error: " . mysqli_error($conn)));
// }
// mysqli_close($conn);

if ($query == true) {
    $response = array("succes" => true,"message" => "akun berhsail ditambahkan");
}else{
    $response = array("succes"=> false,"message" => "gagal menambahkan akun: " .$connect->error);
}
echo json_encode($response);

?>
