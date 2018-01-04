<?php

include './config/koneksi.php';
$query = mysqli_query($koneksi,"SELECT * FROM berita ORDER BY id_berita desc");
$json  = '{"berita": [';

// bikin looping dech array yang di fetch
while ($row = mysqli_fetch_array ($query)) {

//tanda kutip dua (") tidak diijinkan oleh string json, 
//maka akan kita replace dengan karakter `
//strip_tag berfungsi untuk menghilangkan tag-tag html pada string  

$char = '"';

$json .= '{"id":"'.$row['id_berita'].'",
"judul":"'.str_replace($char,'`',strip_tags($row['judul'])).'",
"gambar":"http://192.168.43.113/fp_rpl/image/'.$row['gambar'].'"},';
}

// buat menghilangkan koma diakhir array
$json = substr($json,0,strlen($json)-1);

$json .= ']}';

// print json
echo $json;

?>