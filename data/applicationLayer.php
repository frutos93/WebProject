<?php
	header('Accept: application/json');
	header('Content-type: application/json');
	require_once __DIR__ . '/dataLayer.php';

	$action = $_POST["action"];

	switch ($action) {
		case 'LOGIN': verifyLogin(); 
			break;
		case 'REGISTER': verifyRegistration();
			break;
		case 'SESSION': verifySession();
			break;
		case 'COMMENTS': verifyComments();
			break;
		case 'POSTCOMMENT': postComment();
			break;
		case 'DELETSESSION': deletSession();
			break;
		case 'COOKIE': rememberCookie();
			break;
		case 'SEARCHUSER': searchUserAction(); 
			break; 
        case 'FOOD': searchFood();
            break;
        case 'GETFOOD': getFoodInfo();
            break;
        case 'SEARCH': findFood();
            break;
        case 'FAVORITES': findFavorites();
            break;
        case 'ADDFOOD': addFood();
            break;

        case 'ADDDAY': addDay();
            break;
	}


	function verifyLogin() {
		$userName = $_POST["username"]; 
		$userPassword = $_POST["password"];
		$rememberCookie = $_POST["cookie"];
		$result = loginAction($userName, $userPassword); 
        
		if ($result["statusTxt"] == "SUCCESS") {
			$finalResponse = array("firstName" => $result["data"]["fName"], "lastName" => $result["data"]["lName"]);
			//Starting the session 
			session_start();
			$_SESSION["userName"] = $result["data"]['username'];
			$_SESSION["fName"] = $result["data"]['fName'];
			$_SESSION["lName"] = $result["data"]['lName'];
			$_SESSION["email"] = $result["data"]['email'];
			$_SESSION["gender"] = $result["data"]['gender'];
			$_SESSION["age"] = $result["data"]['age'];
            $_SESSION["weight"] = $result["data"]['weight'];
            $_SESSION["height"] = $result["data"]['height'];
            $_SESSION["activity"] = $result["data"]['activity'];
            $_SESSION["goal"] = $result["data"]['goal'];
            

			//Setting the cookies
			if($rememberCookie == "true"){
				setcookie("usernameCookie", $userName, time() + 3600 * 24 * 30);

			}
			echo json_encode($finalResponse);

		}
		else {
			header('HTTP/1.1 406 User not found');
	        die(json_encode(array('message' => 'ERROR', 'code' => 1337)));
		}
	}



	function verifyRegistration(){

		$userFirstName = $_POST["firstname"];
		$userLastName = $_POST["lastname"];
        $userName = $_POST["username"];
		$userPassword = $_POST["password"];
		$userEmail = $_POST["email"];
		$userCountry = $_POST["country"];
		$userGender = $_POST["gender"];
        $userAge = $_POST["age"];
        $userWeight = $_POST["weight"];
        $userHeight = $_POST["height"];
        $userActivity = $_POST["activity"];
        $userGoal = $_POST["goal"];
        
        $result = registrationAction($userFirstName, $userLastName,$userName, $userPassword, $userEmail, $userCountry, $userGender, $userAge, $userWeight, $userHeight, $userActivity, $userGoal);

		if($result){
			session_start();
			$_SESSION["userName"] = $userName;
			$_SESSION["fName"] = $userFirstName;
			$_SESSION["lName"] = $userLastName;
			$_SESSION["email"] = $userEmail;
			$_SESSION["country"] = $userCountry;
			$_SESSION["gender"] = $userGender;
            $_SESSION["age"] = $userAge;
            $_SESSION["weight"] = $userWeight;
            $_SESSION["height"] = $userHeight;
            $_SESSION["activity"] = $userActivity;
            $_SESSION["goal"] = $userGoal;
			
			echo json_encode("New record created successfully");
		}
		else {
			header("HTTP/1.1 406 User not registered ");
			echo "Error: " . $sql . "<br>" . $conn->error;
			die("user was not able to be registered"); 
			
		}
	}


	function verifySession(){ 

		session_start();
	
		if(isset($_SESSION["userName"])){
            $finalResponse = array("username" => $_SESSION["userName"], 
                          "fName" => $_SESSION["fName"],
                                       "lName" => $_SESSION["lName"], "email" => $_SESSION["email"],
                                      "gender" => $_SESSION["gender"], "age" => $_SESSION["age"], "country" => $_SESSION["country"],
                                      "weight" => $_SESSION["weight"], "height" => $_SESSION["height"],
                                        "activity" => $_SESSION["activity"], "goal" => $_SESSION["goal"]);

				echo json_encode($finalResponse);
		}
		else {
			header("HTTP/1.1 406 Session has expired, you will be redirected to the login");
			echo("Session has expired");
		}
	}

	function deletSession(){

		session_start();
		echo json_encode($_SESSION["userName"]);
		if(isset($_SESSION["userName"])){

			session_destroy();
			echo json_encode(array("success" => "Session deleted"));

		}
		else {
			echo ("error");
			header("HTTP/1.1 406 Session has expired, you will be redirected to the login");
			die(json_encode(array("message" => "Session has expired")));
		}
	}

	function verifyComments(){

		session_start();

		if(isset($_SESSION["userName"])){
			$user = $_SESSION["userName"];

			$result = commentsAction($user);

			$size = count($result);
			if ($result["statusTxt"] == "SUCCESS") { 

				for ($i = 0; $i < $size-1; $i++){
					echo "<div class = comment> <h3>".$result[$i]['userName']."</h3><p>". $result[$i]['comment']."</p></div>";
				}	
			}

		}
		else {
			header("HTTP/1.1 406 Session has expired, you will be redirected to the login");
			echo("Session has expired");
		}
	}

	function postComment(){

		session_start();
		if(isset($_SESSION["userName"])){

			$commentText = $_POST["comment"];
			$user = $_SESSION["userName"];

			$result = postCommentAction($user, $commentText); 

			if ($result) {
				echo json_encode($user);
			}
		}
		else {
			header("HTTP/1.1 406 Session has expired, you will be redirected to the login");
			echo("Session has expired");
		}
	}

	function rememberCookie(){

		if (isset($_COOKIE["usernameCookie"]))
		{
			echo json_encode(array("cookieValue" => $_COOKIE["usernameCookie"]));
		}
		else
		{
			header('HTTP/1.1 406 Cookie has not been set yet');
			die(json_encode(array('message' => 'Cookie not set')));
		}
	}

	function searchUserAction(){

		session_start();
		if (isset($_SESSION["userName"])){

			$user = $_SESSION["userName"];
			$result = favoriteFood($user); 

			
			if ($result["statusTxt"] == "SUCCESS") { 



				$size = count($result);
				for ($i = 0; $i < $size-1; $i++){
			
					echo "<div class = user>";
					echo "<p>".$result[$i]['userName']."</p>";
					echo "<input type=button class=addUser value=Add/>";
					echo "</div>";
				}	
			}

		}
		else {
			header("HTTP/1.1 406 Session has expired, you will be redirected to the login");
			echo("Session has expired");
		}

	}

function searchFood(){

            $food = $_POST["food"];
            
			$result = getFood($food);

			$size = count($result);
			if ($result["statusTxt"] == "SUCCESS") { 

				for ($i = 0; $i < $size-1; $i++){
                    $tmp = $result[$i]['name'];
                    echo '<p><a href="#" onClick="setFood(\''.$tmp.'\')"><b>'.$tmp.'</b></a></p>';
				}	
			}
            
        }

function findFood(){

            $food = $_POST["food"];
            
			$result = getFoodInformation($food);

			$size = count($result);
			if ($result["statusTxt"] == "SUCCESS") { 

                    $finalResponse = array("name" =>$result["data"]['name']);
                echo json_encode($finalResponse);
			}else {
			header('HTTP/1.1 406 User not found');
	        die(json_encode(array('message' => 'ERROR', 'code' => 1337)));
		}
            
        }   

		

 
    function getFoodInfo(){
        $food = $_POST["food"];
        $result = getFoodInformation($food);

			if ($result["statusTxt"] == "SUCCESS") { 
                $finalResponse = 
                    array("name" => $result["data"]["name"], 
                          "measure" => $result["data"]["measure"],
                                       "portion" => $result["data"]["portion"], "calories" => $result["data"]["calories"],
                                      "fat" => $result["data"]["fat"], "carbs" => $result["data"]["carbs"],
                                      "protein" => $result["data"]["protein"]);

				echo json_encode($finalResponse);
			}
        else {
			header('HTTP/1.1 406 User not found');
	        die(json_encode(array('message' => 'ERROR', 'code' => 1337)));
		}

		}

function findFavorites(){
    session_start();
		if (isset($_SESSION["userName"])){
            $user = $_SESSION["userName"];
            $result = favoriteFood($user);
            $size = count($result);
            
			if ($result["statusTxt"] == "SUCCESS") { 

				for ($i = 0; $i < $size-1; $i++){
                    $tmp = $result[$i]['name'];
					echo '<p><a href="#" onClick="setFood(\''.$tmp.'\')"><b>'.$tmp.'</b></a></p>';
				}

				echo json_encode($finalResponse);
			}	
        }else {
			header("HTTP/1.1 406 Session has expired, you will be redirected to the login");
			echo("Session has expired");
		}
    
    
}

function addFood(){
     	session_start();
		if (isset($_SESSION["userName"])){
            $name = $_POST["name"];
            $type = $_POST["type"];
            $brand = $_POST["brand"];
            $portion = $_POST["portion"];
            $measure = $_POST["measure"];
            $calories = $_POST["calories"];
            $fat = $_POST["fat"];
            $carbs = $_POST["carbs"];
            $protein = $_POST["protein"];
            $result = insertFood($name,$type,$brand,$portion,
                                $measure,$calories,$fat,$carbs,
                                $protein)
        	if($result){
            echo json_encode("New record created successfully");
        	}
		
			else {
				header("HTTP/1.1 406 User not registered ");
				echo "Error: " . $sql . "<br>" . $conn->error;
				die("food not able to be registered"); 
			}
		}			
}

    

        
	
?>