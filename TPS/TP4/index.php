<!DOCTYPE html>
<head>
    <title>LABORATORIO IV 2022</title>
    
   
</head>
<body>
        <div>
        <form action="" method="" >
               <div class="form-group">
                    <label for="">Usuario</label>
                    <input type="text" name=""  placeholder="Ingresar usuario">
               </div>
               <div class="form-group">
                    <label for="">Contraseña</label>
                    <input type="text" name=""  placeholder="Ingresar constraseña">
               </div>
               <button  type="submit">Iniciar Sesión</button>
          </form>    
        </div>


    <?php
         abstract class Person{
            private $id;
            private $firstName;
            private $lastName;
            private $dni;
            private $email;
        }

        class Client extends Person {
            private $userName;
            private $password;
        }

        class Bill{
            private $date;
            private $type;
            private $number;
        }

        class Item{
            private $name;
            private $description;
            private $price;
            private $quantity;
        }

        interface IActions{
            function add();
            function remove();
            function getAll();
        }

    ?>
</body>