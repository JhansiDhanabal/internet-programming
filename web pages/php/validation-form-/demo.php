<!DOCTYPE html>
<html>
    <head>
        <title>valid</title>
        <style>
            td{
                border: 2px solid black;
                padding: 20px;
            }
            .container{
                border: 1px solid white;
                padding-top: 10px;
                padding-left: 40%;
            }
            input{
                margin-left: 12px;
            }
        </style>
    </head>
   
    <body>
        <div class="container">
            <h1 class="heading" > VALIDATION FORM</h1>
        <table>
            <td >
		<form action="validate.php" method="post">
                <label>User id  :  </label><input type="text" name="u"><br><br>
                <label>Password  :  </label><input  type="text" name="p"><br><br>
                <label>Name  :  </label><input type="text" name="n"><br><br>
                <label>Address  :  </label><input type="text" name="ad"><br><br>
                <label>Country  :  </label>
                <select id="country" name="country" >
                    <option value="please select the country">please select the country</option>
                    <option value="India">India</option>
                    <option value="Iceland">Iceland</option>
                    <option value="Indonesia">Indonesia</option>
                    <option value="Iran">Iran</option>
                    <option value="Iraq">Iraq</option>
                    <option value="Ireland">Ireland</option>
                    <option value="Israel">Israel</option>
                    <option value="Italy">Italy</option>
                </select>
                <br><br>
                <label>Zip code  :  </label><input type="text" name="zip"><br><br>
                <label>Email  :  </label><input type="text" name="eid"><br><br>
                <label for="gender">Select Male or Female  :  </label><input name="gender" type="radio" value="male">male<input type="radio" name="gender" value="female">female<br><br>
                <label for="language">Language [optional]  :  </label><input type="checkbox" name="language" id="english">English<input type="checkbox" name="language" id="nonenglish" >Non English<br><br>
                <label for="about">About [optional] :  </label><br>
                <textarea name="about" rows="5" cols="40"></textarea><br><br>
                <center><input type="submit" ></center>
		</form>
            </td>
        </table>
        </div>
    </body>
</html>
