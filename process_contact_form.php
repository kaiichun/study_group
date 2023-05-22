<?php
    session_start();

    $host = 'devkinsta_db';
    $dbname = 'contact_form';
    $dbuser = 'root';
    $dbpassword = 'GBhUwpF3t3QzDYbo' ;
    $database = new PDO (
        "mysql:host=$host;dbname=$dbname",
        $dbuser,
        $dbpassword
    );

    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    if (empty($name)|| empty($email) || empty($message) ) {
        $error = "Please insert a name or email &#x1F625;";
    } else if ( strlen( $message) < 10 ) {
        $error = "Please insert more than 10 characters &#x1F61C;";
    } else {
        $sql = 'INSERT INTO contact_us (`name`,`email`,`message`) VALUES (:name,:email,:message)';
        $query = $database->prepare( $sql );
        $query->execute([
            'name' => $name,
            'email' => $email,
            'message' => $message
        ]);        
      $success = "you are sumbit success &#x1F609;";
    } 

    if ( isset( $error ) ) {
        $_SESSION['error'] = $error;
        header("Location: index.php");
        exit;
    }

    if ( isset( $success ) ) {
        $_SESSION['success'] = $success;
        header("Location: index.php");
        exit;
    }