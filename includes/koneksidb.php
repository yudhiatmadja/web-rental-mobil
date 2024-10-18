
<?php
try {
  $myUser = "rental";
  $myPass = "rental123";
  $myDbs = '//localhost:1521/rental';

  $koneksidb = new PDO("oci:dbname=$myDbs; charset=utf8", $myUser, $myPass, [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_EMULATE_PREPARES => false,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
  ]);
  echo "Oracle DB Connected Successfully!";
} catch (PDOException $e) {
  echo $e->getMessage();
}


?>

