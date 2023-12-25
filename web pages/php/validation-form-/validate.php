<?php
    $userid=$_POST['u'];
    $password=$_POST['p'];
    $name=$_POST['n'];
    $address=$_POST['ad'];
    $country=$_POST['country'];
    $zip=$_POST['zip'];
    $mail=$_POST['eid'];

    if(strlen($userid)>=5 && strlen($userid)<=7){
        if(strlen($password)>=7 && strlen($password)<=12){
            if(preg_match("/^[a-zA-Z-']*$/",$name)){
                if(ctype_alnum($address)){
                    if($country!=="please select a country"){
                        if(ctype_alnum($zip)){
                            if(preg_match("/^([a-z A-Z 0-9 @+.-]+)(@[a-z A-Z 0-9 @+.-]+)(\.[a-zA-Z0-9])*$/",$mail)){
                                    echo '<script>alert("REGISTERED SUCCESSFULLY");</script>';
                            }
                            else{
                                echo '<script>alert("INVALID MAIL");</script>';
                            }
                        }
                        else{
                            echo '<script>alert("INVALID ZIP CODE");</script>';
                        }
                    }
                    else{
                        echo '<script>alert("INVALID COUNTRY");</script>';
                    }
                }
                else{
                    echo '<script>alert("INVALID ADDRESS");</script>';
                }
            }
            else{
            echo '<script>alert("INVALID NAME");</script>';}
        }
        else{
            echo '<script>alert("INVALID PASSWORD");</script>';
        }
    }
    else{
        echo '<script>alert("INVALID USER ID");</script>';
    }
?>
