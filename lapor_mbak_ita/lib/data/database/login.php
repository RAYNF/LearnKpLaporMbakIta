<?php
include 'config.php';

$email = $_POST['email'];
$password = $_POST['password'];

$query = "SELECT * FROM users WHERE email='$email'";
$result = mysqli_query($conn, $query);

if ($result) {
    $row = mysqli_fetch_assoc($result);

    //cek password menggunakan hash
    if ($row && password_verify($password, $row['password'])) {
        echo json_encode(array(
            "status" => "success",
             "message" => "Login successful.",
            "user" => $row,
            ));
    } else {
        echo json_encode(array("status" => "error", "message" => "Invalid email or password."));
    }

} else {
    echo json_encode(array("status" => "gagal", "message" => "Query failed."));
}

mysqli_close($conn);
?>
