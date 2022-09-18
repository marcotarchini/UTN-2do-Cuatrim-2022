<!DOCTYPE html>
<head>
    <title>LABORATORIO IV 2022</title>
    <link rel="stylesheet" href="CSS\style.css">
</head>
<body>
    <div class="wrapper">
        <table>
            <tr>
                <th>
                    <h1>YOUR BASIC INFO</h1>
                </th>
            </tr>
            <tr>
                <td>x</td>
                <td>x</td>
            </tr>
            <tr>
                <td>x</td>
                <td>x</td>
            </tr>
            <tr>
                <td>x</td>
                <td>x</td>
            </tr>
            <tr>
                <td>x</td>
                <td>x</td>
            </tr>
            <tr>
                 <td>x</td>
                <td>x</td>
            </tr>
            <tr>
                <td>x</td>
                <td>x</td>
            </tr>
            <tr>
                <th>
                    <h1>YOUR PROFILE</h1>
                </th>
            </tr>
            <tr>
                <td>x</td>
                <td>x</td>
            </tr>
            <tr>
                <td>x</td>
                <td>x</td>
            </tr>
            <tr>
                <td>x</td>
                <td>x</td>
            </tr>
    
        </table>
    <br>


    </div>
<?php
    $parameters = array();

    if ($_SERVER['REQUEST_METHOD'] == "POST")
        $parameters = $_POST;
    else
        $parameters = $_GET;

    foreach($parameters as $parameterName=>$parameterValue)
    {
        echo $parameterName . ': ' . $parameterValue . '<br>' ;
    }
?>
</body>