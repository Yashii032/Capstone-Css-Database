<?php

// Establish database connection
$db_host = "localhost";
$db_username = "root";
$db_password = ""; // Replace with your actual password
$db_name = "my_project";

try {
    $conn = new mysqli($db_host, $db_username, $db_password, $db_name);

    // Check for connection errors
    if ($conn->connect_error) {
        die("ERROR: Could not connect." . $conn->connect_error);
    }

    // Handle form submission
    if(isset( 
        $_POST['firstname'], $_POST['middlename'], $_POST[ 'lastname'],
        $_POST[ 'bdate'] ,$_POST["age"], $_POST["bplace"], $_POST['gender'],
        $_POST['civilstatus'], $_POST['spousefname'], $_POST['spousemidname'], $_POST['spouselname'],
        $_POST['street'], $_POST[ 'barangay'], $_POST['city'], $_POST['country'], $_POST['zip'],
        $_POST[ 'cellnum'], $_POST[ 'telnum'], $_POST[ 'primeEmail'], $_POST[ 'secEmail'],
        $_POST[ 'empStat'], $_POST[ 'prime_ID_Type'], $_POST[ 'prime_ID_Photo'], $_POST[ 'sec_ID_Type'], $_POST['sec_ID_Photo']
        )){
        $firstname = $_POST['firstname'];
        $middlename = $_POST['middlename'];
        $lastname = $_POST['lastname'];
        $bdate = $_POST['bdate'];
        $age = $_POST['age'];
        $bplace = $_POST['bplace'];
        $gender = $_POST['gender'];
        $civilstatus = $_POST['civilstatus'];
        $spousefname = $_POST['spousefname'];
        $spousemidname = $_POST['spousemidname'];
        $spouselname = $_POST['spouselname'];
        $street = $_POST['street'];
        $barangay = $_POST['barangay'];
        $city = $_POST['city'];
        $country = $_POST['country'];
        $zip = $_POST['zip'];
        $cellnum = $_POST['cellnum'];
        $telnum = $_POST['telnum'];
        $primeEmail = $_POST['primeEmail'];
        $secEmail = $_POST['secEmail'];
        $empStat = $_POST['empStat'];
        $primeIDType = $_POST['prime_ID_Type'];
        $primeIDPhoto = $_POST['prime_ID_Photo'];
        $secIDType = $_POST['second_ID_Type'];
        $secIDPhoto = $_POST['second_ID_Photo'];

        // Prepare and execute SQL statement
        $sql = "INSERT INTO personal_details (
            firstname, middlename, lastname, 
            bdate, age,  bplace, gender,
            civilstatus, spousefname, spousemidname, spouselname, 
            street, barangay, city, country, zip, 
            cellnum, telnum, primeEmail, secEmail, 
            empStat, 
            prime_ID_Type, prime_ID_Photo, second_ID_Type, second_ID_Photo)
        VALUES ( 
            ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
            ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
            ?, ?, ?, ?, ?)";

            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sss", $firstname, $middlename, $lastname,
                $bdate, $age, $bplace, $gender, $civilstatus,
                $spousefname, $spousemidname, $spouselname,
                $street, $barangay, $city, $country, $zip,
                $cellnum, $telnum, $primeEmail, $secEmail, 
                $empStat, $primeIDType, $primeIDPhoto, $secIDType, $secIDPhoto);
            $stmt->execute();

        if($stmt->affected_rows > 0) {
            // Data stored successfully
            ?>
            <script>
                alert('Details successfully saved!');
                window.location.href = 'personaldetails.php';
            </script>
            <?php
        } else {
            echo "Error: Hush! Sorry $sql, something went wrong." . mysqli_error($conn);
        }

    }

    // Close the connection
    $conn->close();
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}


