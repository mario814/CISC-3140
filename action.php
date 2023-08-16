<html lang="en-US">


 <head>
    <meta charset="UTF-8" />
    <meta name="author" content="Mario E. Guerrero" />
    <title>Lab 3 - Javascript</title>

    <link rel="stylesheet" href="project_css.css" />
    <script src="final_project_js.js">
    </script>
  </head>
  <body>
  <h1>Information for customer:</h1><br>
    <?php 

   
    date_default_timezone_set("America/New_York");
    $time = date("h:i:sa");
    $date =  date("Y/m/d");
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
   
    $zC = $_POST['zipcode']; 
    $address = $_POST['address']; 
    $toppings = $_POST['toppings'];
    $phone = $_POST['phone'];
    $pizzabake = $_POST['pizzabake'];
    $sauce = $_POST['sauce'];
    $gender = $_POST['gender'];

    function validating($num){
      $valid_number = filter_var($num, FILTER_SANITIZE_NUMBER_INT);
      return $valid_number ;
    }

    $phone = validating($phone);


if (is_null($toppings)){

   $toppings =0;
}

if (is_null($gender)){
  $gender="NOT SPECIFIED";
}


    

    echo ("<div class ='info'><label class ='label'>Full name: </label>".$fname. " " . $lname."<br>");
    echo("<label class ='label'>Gender: </label>".htmlspecialchars($gender)."<br>");
    echo("<label class ='label'>Phone Number: </label>".htmlspecialchars($phone)."<br>");
    
    
  
    
    echo("<label class ='label'>Delivery Address: </label>".htmlspecialchars($address).", ". $zC. "</div><br>");

    //Pizza info
    echo("<h2>Pizza:</h2> ");

    echo(" <div class = 'info'>    " .  htmlspecialchars($pizzabake)."<br>"      );
    echo("Pizza will have the following toppings: <br>");
    
    if($toppings != 0){
      for ($i = 0; $i < count($toppings);++$i ){

echo "- ".$toppings[$i]."<br>";
    }
  }
  if($toppings != 0){
    $toppings = count($toppings);
  }


 echo ("Sauce is ".$sauce."</div><br>");


$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "info";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);


// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO `customers`(`First Name`, `Last Name`, `Gender`, `Address`, `ZIP Code`, `Toppings #`, `Phone Number`, `Pizzabake`, `Sauce`, `Date`, `Time`)
VALUES ('$fname', '$lname','$gender','$address','$zC','$toppings','$phone','$pizzabake','$sauce' , '$date','$time')";
 

$result = $conn->query($sql); // $result is a boolean

$conn->close();

?>
<a id="start" class="button home" href="home_page.html"
      >Click to go back to the HOME PAGE</a
    >
  </body>
</html>
