<!DOCTYPE html>
<head>
    <title>LABORATORIO IV 2022</title>
    
   
</head>
<body>
    <?php
echo "Hola";

$myNumber = 123;
$numberString = "123";
echo "<br>";
/*$aux=$myNumber + $numberString;
echo $aux;*/
echo "<br>";
/*echo $myNumber + $numberString;*/
echo "<br>";
/*echo $numberString + $myNumber;*/
/*echo $myNumber.$numberString;*/

if(1-1){
    echo "It's right"; 
}
$aux1= 5;
$aux2= 10;
echo var_dump ($aux1);
function multiplica($aux1, $aux2){
    echo $aux1 * $aux2;
}
function divide($aux1, $aux2){
    echo $aux2 / $aux1;
}

multiplica($aux1,$aux2);
echo "<br>";
divide($aux1,$aux2);
echo "<br>";
echo "<br>";

$array = [  
    1     => "first value",
    "1"  => "second value",    
    1,2  => "tirth value",    
    true => "fourth value",    
    1+0,2 => "fifth value",    
    false !== null => "sixth value", 
];

echo count($array);
echo "<br>";
/*EJERCICIO 4*/
foreach ($array as $x=>$x_value){
    echo "Key= ".$x.",Value= ".$x_value."<br>";
}
echo "<br>";
echo "<br>";
/*EJERCICIO 5*/
$people = [ 
    ['name' => 'Martin', 'age' => 18, 'sex' => 'm'], 
    ['name' => 'Martina', 'age' => 25, 'sex' => 'f'], 
    ['name' => 'Pablo', 'age' => 27, 'sex' => 'm'], 
    ['name' => 'Paula', 'age' => 12, 'sex' => 'f'], 
    ['name' => 'Alexis', 'age' => 8, 'sex' => 'm'], 
    ['name' => 'Jacinta', 'age' => 33, 'sex' => 'f'], 
    ['name' => 'Epifania', 'age' => 45, 'sex' => 'f'], 
];

$arrlength = count($people);

/*for($x = 0; $x <= $arrlength; $x++) {
    foreach ($people[$x] as $x_name=>$x_value){
        if($x_value>=18){
        echo $x_name.":".$x_value."<br>";
        }
    }
}*/
echo "<br>";
echo "<br>";
/*EJERCICIO 6*/
echo "El día de la semana es :".date("l") . "<br>";
echo date("l jS \of F Y h:i:s A");
echo "<br>";
/*EJERCICIO A*/
if(date("N")==6 or date("N")==7){
    echo "Es fin de semana";
};
echo "<br>";
echo "<br>";
/*EJERCICIO 7*/
/*$total_sale;

if($total_sale<=200){
    if($total_sale.mascota=="mascota"){
        echo "No se puede realizar envio."
    }
    if else($total_sale.ropa=="ropa"){
        echo "Los gastos de envio son 80 pesos"
    }
}
if($total_sale>=200 && $total_sale<=600){
    echo "Los gastos de envio son 80 pesos"
}
if($total_sale>=600){
    echo "Portes de envio gratis"
}
if($total_sale>=2000){
    echo "Codigo de descuento: CODEDESC33"
}*/

/*EJERCICIO 8*/
$a=1;
$b=2;
$c=3;
$d=4;

echo max($a,$b,$c,$d);
echo "<br>";
echo "<br>";

$name = $age = $sex = "";
$nameErr = $ageErr = $sexErr = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (empty($_POST["name"])) {
        $nameErr = "Name is required";
      } else {
        $name = test_input($_POST["name"]);
      }
      if (empty($_POST["age"])) {
        $ageErr = "Age is required";
      } else {
        $age = test_input($_POST["age"]);
      }
      if (empty($_POST["sex"])) {
        $sexErr = "Sex is required";
      } else {
        $sex = test_input($_POST["sex"]);
      }
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>

<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post" >
  <label for="name">Name:</label><br>
  <input type="text" id="name" name="name" value="<?php echo $name;?>"><br>
  <span class="error"><?php echo $nameErr;?></span>
  <label for="age">Age:</label><br>
  <input type="number" id="age" name="age" value="<?php echo $age;?>"><br>
  <label for="sex">Sex:</label><br>
  <input type="text" id="sex" name="sex" value="<?php echo $sex;?>"><br><br>
  <button class="button" type="submit">Send</button>
  <button class="button" type="reset">Reset</button> 
</form>

</body>