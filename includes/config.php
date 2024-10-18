
<?php
# Konek ke Web Server Lokal
$myHost  = "localhost";
$myUser  = "root";
$myPass  = "";
$myDbs  = "rental_eria";

$koneksidb = mysqli_connect($myHost, $myUser, $myPass, $myDbs);
if (!$koneksidb) {
  echo "Failed Connection !";
}


// Connection settings
// $koneksidb = oci_connect("rental", "rental123", "192.168.100.54:1521/xe");

// if (!$koneksidb) {
//   $m = oci_error();
//   echo $m['message'], "\n";
//   exit;
// } else {
//   print "Connected to Oracle DB!";
// }

// // Close the Oracle connection
// oci_close($koneksidb);

?>


