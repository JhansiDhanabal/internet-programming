<!DOCTYPE html>
<html>
    <head>
        <title>valid</title>
        <style>
            table{
                margin-left:39%;
            }
            td{
                border: 2px solid black;
                padding: 20px;
            }
            h1{
                text-align:center;
            }
            input{
                margin-left: 12px;
            }
        </style>
    </head>
   
    <body>
        <h1 class="heading" >LOGIN FORM</h1>
        <table>
        <td >
		<form action="valid.php" method="post">
                <label>Name  :  </label><input type="text" name="n"><br><br>
                <label>Email  :  </label><input type="text" name="eid"><br><br>
                <label>phone : </label><input type="text" name="ph"><br><br>
                <center><input type="submit" ></center>
		</form>
        </td>
        </table>
    </body>
</html>
