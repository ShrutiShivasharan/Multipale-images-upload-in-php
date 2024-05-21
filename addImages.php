<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Add Multi images</title>
	<!-- bootstrap cdn -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<div class="container m-5 p-5">
		<form method="post" enctype="multipart/form-data">
		  <div class="form-group">
		    <label>Enter Product Name</label>
		    <input type="text" class="form-control" placeholder="Enter name" name="name">
		  </div>
		   
		   <div class="form-group">
		    <label>Upload Product images</label>
		    <input type="file" class="form-control" name="images[]" multiple>
		    <small class="form-text text-muted">Upload Multiple images</small>
		  </div>
		  
		  <button type="submit" name="AddFormSubmit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>

<?php 
include('con.php');

if(isset($_POST['AddFormSubmit'])){
 $name = $_POST['name'];
 $images = array();

 //upload images
 foreach ($_FILES['images']['tmp_name'] as $key => $tmp_name) {
    $file_name = $_FILES['images']['name'][$key];
    $file_tmp = $_FILES['images']['tmp_name'][$key];

    // Move uploaded file
    $upload_dir = 'images/';
    $target_file = $upload_dir . basename($file_name);

    if (move_uploaded_file($file_tmp, $target_file)) {
        $images[] = $target_file;
    } else {
        echo "failed to upload images!";
    }
}


 //inser query
 $images_path_json = json_encode($images);
 $sql = "INSERT INTO `multiimages`(`name`, `images`) VALUES ('$name','$images_path_json')";
 $result = mysqli_query($con,$sql);
 if($result){
 	echo "data Inserted!";
 }else{
 	echo "error while insert data";
 }
}

?>

