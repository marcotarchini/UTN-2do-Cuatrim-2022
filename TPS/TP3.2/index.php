<!DOCTYPE html>
<head>
    <title>LABORATORIO IV 2022</title>
    <link rel="stylesheet" href="CSS\style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
<div class="wrapper">
    <h1>Contact Form</h1>
    <br>
    <i class="material-icons">looks_one</i>
    <h3>Your bacis info</h3>
        <form action="action.php" method="post">
            <label for="fname">Name:</label>
            <br>
            <input type="text" id="fname" name="fname"required>
            <br>
            <label for="email">Email:</label>
            <br>
            <input type="email" id="email" name="email"required>
            <br>
            <label for="pwd">Password:</label>
            <br>
            <input type="password" id="pwd" name="pwd"required>
            <br>
            <label for="birthday">Birthday:</label>
            <br>
            <input type="date" id="birthday" name="birthday"required>
            <br>
            <p>Sex:</p>
                <input type="radio" id="male" name="sex" value="male">
                <label for="male">Male</label>
                <input type="radio" id="female" name="sex" value="female">
                <label for="female">Female</label>
            <br>
            <br>
        <i class="material-icons">looks_two</i>    
        <h3>Your profile</h3> 
            <label for="message">About you</label>
            <br>
            <textarea name="message" rows="10" cols="30"></textarea>
            <br>  
            <label for="role">Role:</label>
            <br>
            <select id="role" name="role">
                <option value="Front-End">Front-End Developer</option>
                <option value="Back-End">Back-End Developer</option>
                <option value="Team Leader">Team Leader Developer</option>
            </select>
            <br>
            <p>Interests:</p>
                <input type="radio" id="Data" name="Interests" value="Data">
                <label for="Data">Data Base</label>
                <input type="radio" id="design" name="Interests" value="design">
                <label for="design">Desing</label>
                <input type="radio" id="Business" name="Interests" value="Business">
                <label for="Business">Business</label>
                <input type="radio" id="unit" name="Interests" value="unit">
                <label for="inut">Unit Test</label>
                <input type="radio" id="cloud" name="Interests" value="cloud">
                <label for="cloud">Cloud Development</label>
                <input type="radio" id="web" name="Interests" value="web">
                <label for="web">Web Development</label>
            <br>
            <br>
         <button class="button" type="submit">Send</button>
         <button class="button" type="reset">Reset</button> 
        </form>
         <br>
         <br>
</div>
</body>





