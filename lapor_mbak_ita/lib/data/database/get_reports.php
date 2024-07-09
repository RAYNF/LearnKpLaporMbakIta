<?php
include 'config.php';

// Dapatkan parameter filter dari query string
$order = $_POST['order'] ?? 'latest';
$status = $_POST['status'] ?? 'all';
$latitude = $_POST['latitude'] ?? null;
$longitude = $_POST['longitude'] ?? null;

// Query dasar
$query = "SELECT * FROM reports";

// Tambahkan filter berdasarkan status
if ($status != 'all') {
    $query .= " WHERE status = '$status'";
}

// Tambahkan filter berdasarkan urutan
if ($order == 'latest') {
    $query .= " ORDER BY created_at DESC";
} elseif ($order == 'popular') {
    $query .= " ORDER BY views DESC";
} elseif ($order == 'nearest' && $latitude && $longitude) {
    $query .= " ORDER BY (POW(latitude - $latitude, 2) + POW(longitude - $longitude, 2)) ASC";
}

$result = mysqli_query($conn, $query);

$reports = array();
while($row = mysqli_fetch_assoc($result)) {
    $reports[] = $row;
}

$response = array("success" => true, "message" => "berita berhasil.", "report" => $reports);

echo json_encode($response);

mysqli_close($conn);
?>
