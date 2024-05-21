<style type="text/css">
	img{
		width: 100px;
	}
</style>
<?php 
include 'con.php';

$sql = "SELECT * FROM `multiimages`";
$result = mysqli_query($con,$sql);

if($result){
 while ($row = mysqli_fetch_assoc($result)) {
 	$name = $row['name'];
 	$images_json = $row['images'];
 	$images = json_decode($images_json);

 	echo "<h2>$name</h2>";
 	echo "<div>";
 	foreach ($images as $image) {
 		echo "<img src='$image'>";
 	}
 	echo "</div>";
  }
 }else{
 	echo "0 results";
 }

?>