<?php 
    $chars = '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPUQRSTUVWXYZ';
    $token = substr(str_shuffle($chars), 0, 16);
  
    $upload = $token . '_' . $_FILES['file_upload']['name']; 
    $path = 'img/' . $upload;

    $url = './view.php?img=' . $upload;

    move_uploaded_file($_FILES['file_upload']['tmp_name'], $path);
?>

<h1>Image Sharing Service</h1>

<script>
alert('Uploaded!')
location.href = '<?php echo $url ?>'
</script>
