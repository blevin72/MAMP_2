<?php
$con = mysqli_connect('localhost:8889', 'root', 'root', 'UnityAccess');

//check if the connection happened
if(mysqli_connect_errno()) {
    echo "1: Connection failed"; //error code #1 = connection failed
    exit();
}

$username = $_POST["name"];
$password = $_POST["password"];
$email = $_POST["email"];

//check if username exists
$usernamecheckquery = "SELECT username FROM players WHERE username = '$username'";
$usernamecheck = mysqli_query($con, $usernamecheckquery);

if(!$usernamecheck) {
    echo "2: Username check query failed: " . mysqli_error($con);
    exit();
}

if(mysqli_num_rows($usernamecheck) > 0) {
    echo "3: Name already exists";
    exit();
}

$salt = "\$5\$rounds=5000\$" . "steamedhams" . $username . "\$";
$hash = crypt($password, $salt);

$insertuserquery = "INSERT INTO players (username, hash, salt, email) VALUES ('$username', '$hash', '$salt', '$email')";
$insertuser = mysqli_query($con, $insertuserquery);

if(!$insertuser) {
    echo "4: Insert player query failed: " . mysqli_error($con);
    exit();
}

echo "0"; // Successful registration
?>
