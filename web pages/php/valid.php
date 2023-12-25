<?php
    $servername="localhost:3308";
    $db="users";
    $conn=new mysqli($servername,"tiger","123",$db);
    $name=$_POST['n'];
    $mail=$_POST['eid'];
    $phone=$_POST['ph'];
    $flag=false;
    if(preg_match("/^[a-zA-Z']*$/",$name)){
        if(preg_match("/^([a-z A-Z 0-9 @+.-]+)(@[a-z A-Z 0-9 @+.-]+)(\.[a-zA-Z0-9])*$/",$mail)){
            if(strlen($phone)===10){
                $sql="insert into users(name,email,phone) values('$name' , '$mail' , '$phone')";
                if($conn->query($sql)===TRUE){
                    $sq='select * from users';
                    $result=$conn->query($sq);
                    if($result->num_rows>0){
                    while($row=$result->fetch_assoc()){
                        if(strcmp($row['name'],($name))===0 && strcmp($row['email'],($mail))===0 && strcmp($row['phone'],($phone))===0){
                            $flag=true;
                        }
                        }
                    }
                    if($flag===true){
                        echo '<script>alert("INSERTED SUCCESSFULLY");</script>';
                    }
                }
                else{
                    echo "error : ".$sql."<br>".$conn->error;
                }
            }
            else{
                echo '<script>alert("INVALID PHONE NUMBER");</script>';
            }
        }
        else{
            echo '<script>alert("INVALID EMAIL");</script>';
        }
    }
    else{
        echo '<script>alert("INVALID NAME");</script>';
    }
    $conn->close();
?>
