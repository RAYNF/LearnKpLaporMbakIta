<?php
include 'config.php';

// Dapatkan parameter filter dari query string
// $order = $_POST['order'] ?? 'latest';
// $status = $_POST['status'] ?? 'all';
// $latitude = $_POST['latitude'] ?? null;
// $longitude = $_POST['longitude'] ?? null;
//$image = $_POST['image'] ?? 'https://t3.ftcdn.net/jpg/04/62/93/66/360_F_462936689_BpEEcxfgMuYPfTaIAOC1tCDurmsno7Sp.jpg'

// Query dasar
$query = "SELECT * FROM news";

// Tambahkan filter berdasarkan status
// if ($status != 'all') {
//     $query .= " WHERE status = '$status'";
// }

// Tambahkan filter berdasarkan urutan
// if ($order == 'latest') {
//     $query .= " ORDER BY created_at DESC";
// } elseif ($order == 'popular') {
//     $query .= " ORDER BY views DESC";
// } elseif ($order == 'nearest' && $latitude && $longitude) {
//     $query .= " ORDER BY (POW(latitude - $latitude, 2) + POW(longitude - $longitude, 2)) ASC";
// }

$result = mysqli_query($conn, $query);

$news = array();
while($row = mysqli_fetch_assoc($result)) {
    $news[] = $row;
}

$response = array("success" => true, "message" => "berita berhasil.", "news" => $news);

echo json_encode($response);

?>
