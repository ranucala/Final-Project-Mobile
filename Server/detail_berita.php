<?php

$kd="";
include './config/koneksi.php';
//$kd = $_GET['idberita'];
if(isset($_GET['id_berita'])){
 $kd=$_GET['id_berita'];

}

$sql = mysqli_query($koneksi,'SELECT * FROM berita where id_berita="'.$kd.'"');
                    while($query = mysqli_fetch_array($sql)){
$json  = '{"berita": [';

//tanda kutip dua (") tidak diijinkan oleh string json, maka akan kita replace dengan karakter `
//strip_tag berfungsi untuk menghilangkan tag-tag html pada string  

$char = '"';

$json .='{"id":"'.$row['id_berita'].'",
"judul":"'.str_replace($char,'`',strip_tags($row["judul"])).'",
"isi":"'.str_replace($char,'`',strip_tags($row["isi_berita"])).'",
"gambar":"http://192.168.1.74/fc_rpl/foto_berita/'.$row['gambar'].'"},';


}

// buat menghilangkan koma diakhir array
$json = substr($json,0,strlen($json)-1);

$json .= ']}';

// print json
echo $json;

?>