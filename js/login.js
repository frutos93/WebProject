$(document).ready(function(){
    
    $("#registerL").click(function(e){
        e.preventDefault;
        window.location.replace("register.html");
    });

    $("#loginL").click(function(){

        var remember = "false"; 
        if($("#cookie_check").prop("checked")){
            remember = "true";
        }
        else{
            remember = "false"; 
        }
        
        if ($("#loginUser").val() == ""){
            alert("Type your username");
        }
        else if ($("#loginPassword").val() == ""){
            alert("Type your password");
        }
        else{
            var dataToSend = {
            username : $("#loginUser").val(),
            password : $("#loginPassword").val(),
            cookie: remember,  
            action: "LOGIN",
            }
            
            $.ajax({
            url: "data/applicationLayer.php",
            type: "POST",
            data: dataToSend,
            dataType: "json",
            contentType: "application/x-www-form-urlencoded",
            success: function(jsonObject){
                localStorage.setItem('name', jsonObject.firstName);
                window.location.replace("home.html");
            },
            error: function(errorMsg){
                alert("Login ERROR " + errorMsg.statusText); 
            }
                
            });
        }

    });
    
});