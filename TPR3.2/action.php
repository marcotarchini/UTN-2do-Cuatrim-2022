<?php
    $parameters = array();

    if ($_SERVER['REQUEST_METHOD'] == "POST")
        $parameters = $_POST;
    else
        $parameters = $_GET;
?>
<html>
    <head>
        <meta charset="utf-8">
        <title>Result Form</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>

      <div>
        <table>
          <!-- Your Basic Info -->
          <tr>
            <th colspan="2" class="header-row-color">YOUR BASIC INFO</th>
          </tr>

          <tr>
            <th>Name</th>
            <td><?php echo $parameters['user_name']; ?></td>
          </tr>
          <tr>
            <th>Email</th>
            <td><?php echo $parameters['user_email']; ?></td>
          </tr>
          <tr>
            <th>Password</th>
            <td><?php echo $parameters['user_password']; ?></td>
          </tr>
          <tr>
            <th>Birth-day</th>
            <td><?php echo $parameters['user_birth_day']; ?></td>
          </tr>
          <tr>
            <th>Sex</th>
            <td>
              <?php
                if(isset($parameters['user_sex'])) //Learn about function isset() for check if value it´s defined and isn´t null
                  echo $parameters['user_sex'] == "male" ? "Masculino":  "Femenino"; //Ternary operator
                else 
                  echo '-Sin indicar-';
              ?>
            </td>
          </tr>
            <!-- Your Profile -->
          <tr>
              <th colspan="2" class="header-row-color">YOUR PROFILE</th>
          </tr>

          <tr>
            <th>About you</th>
            <td><?php 
                  if(isset($parameters['user_bio']) && $parameters['user_bio'] != "") 
                    echo $parameters['user_bio']; 
                  else 
                    echo '-Sin completar-'; 
                ?>
            </td>
          </tr>
          <tr>
            <th>Role</th>
            <td><?php echo $parameters['user_role']; ?></td>
          </tr>
          <tr>
            <th>Interests</th>
            <td>
              <?php
              $initValue = "interest_";
              foreach($parameters as $parameterName=> $parameterValue){
                  if(substr($parameterName, 0, strlen($initValue)) === $initValue){//String functions
                    $nameValue = ltrim($parameterName, $initValue);
                    echo ucfirst($nameValue) . '<br>';
                  }                    
              }
              ?>
            </td>
          </tr>
        </table>

        <br>
        <a href="index.html">Regresar al Formulario</a>
      </div>
    </body>
</html>

