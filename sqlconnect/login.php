<?php
$con = mysqli_connect('localhost:8889', 'root', 'root', 'UnityAccess');

// Check if the connection happened
if(mysqli_connect_errno()) {
    echo "1: Connection failed"; // Error code #1 = connection failed
    exit();
}

//check if the request is to logout
if(isset($_POST["logout"]) && $_POST["logout"] == true)
{
    echo "8: logout successful";
    exit();
}

$email = mysqli_real_escape_string($con, $_POST["email"]);
$emailclean = filter_var($email, FILTER_SANITIZE_EMAIL, FILTER_FLAG_STRIP_LOW | FILTER_FLAG_STRIP_HIGH);
$password = $_POST["password"];

// Check if email exists
$emailCheckQuery = "SELECT email, salt, hash, experience FROM players WHERE email = '$emailclean'";
$emailCheck = mysqli_query($con, $emailCheckQuery);

if(!$emailCheck) {
    echo "2: Email check query failed: " . mysqli_error($con);
    exit();
}

if(mysqli_num_rows($emailCheck) != 1) {
    echo "5: Either no user with email, or more than one"; // Error code #5 - number of emails matching != 1
    exit();
}

// Get login info from query
$existingInfo = mysqli_fetch_assoc($emailCheck);
$salt = $existingInfo["salt"];
$hash = $existingInfo["hash"];
$experience = $existingInfo["experience"];

$loginhash = crypt($password, $salt);
if($hash != $loginhash)
{
    echo "6: Incorrect Password"; //error code #6 - password does not hash to match table
    exit();
}

echo "0\t" . $experience;

mysqli_close($con);


?>
