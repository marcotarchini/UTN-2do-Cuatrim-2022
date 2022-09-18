<!DOCTYPE html>
<head>
    <title>LABORATORIO IV 2022</title>
</head>
<body>
    <?php
    /*EJERCICIO 1*/
        $name = 'juan,maria,pepe,andrea,jorgelina,cecilia';

        $arrName=array("juan","maria","pepe","andrea","jorgelina","cecilia");
        $arrlength = count($arrName);

        for($x = 0; $x < $arrlength; $x++) {
            echo $arrName[$x];
            echo "<br>";
        }

        echo "<br>";
        echo "<br>";
        
        sort($arrName);
        for($x = 0; $x < $arrlength; $x++) {
            echo $arrName[$x];
            echo "<br>";
        }
        echo "<br>";
        echo "<br>";

        for($x = 0; $x < $arrlength; $x++) {
             echo ucfirst($arrName[$x]);
             echo "<br>";
        }
        echo "<br>";
        echo "<br>";

        /*for($x = 0; $x < $arrlength; $x++) {
            echo count($arrName[$x]);
            echo "<br>";
       }*/
/*EJERCICIO 2*/
        $arreglo2=array(1,2,4,6,7,8,0);
        $aux=2;
       function existeValor($x,$array){
        if(in_array($x,$array)){
            echo "Encontrado";
        }
       }
       existeValor($aux,$arreglo2);

       echo "<br>";
       echo "<br>";

/*EJERCICIO 3*/
       $arreglo3=array("Marco"=>"39","Mia"=>"13","Tygro"=>"7");
       $key="Tygro";
       function existeKey($x,$array){
        if(array_key_exists($x,$array)){
            echo "Encontrada";
        }
       }
       existeKey($key,$arreglo3);

       echo "<br>";
       echo "<br>";
/*EJERCICIO 4*/

       function muestraKeys($array){
            $keys=array_keys($array);
            $arrelength = count($keys);

            for($x = 0; $x < $arrelength; $x++) {
            echo $keys[$x].", ";
       }
    }
       muestraKeys($arreglo3);
       echo "<br>";
       echo "<br>";

    ?>