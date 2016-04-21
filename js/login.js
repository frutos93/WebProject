$(document).ready(function(){
    
    $("#registerL").click(function(e){
        e.preventDefault;
        location.replace("/register.html");
    });
    
    $("#login_button").click(function(){

        var dataToSend = {
            username : $("#loginUser").val(),
            password : $("#loginPassword").val(),
            action: "LOGIN",
        }
        
        $.ajax({
            url: "data/applicationLayer.php",
            type: "POST",
            data: dataToSend,
            dataType: "json",
            contentType: "application/x-www-form-urlencoded",
            success: function(jsonObject)
            {
                window.location.replace("home.html");
            },
            error: function(errorMsg)
            {
                alert("Login ERROR " + errorMsg.statusText); 
            }

        });
    });
    
    
    /*
    var datacookie = {
        action: "COOKIE",
    }
    
    $.ajax({
        type: "POST",
        url: "data/applicationLayer.php",
        data: datacookie,
        dataType: "json",
        success: function(cookieJson)
        {
            $("#loginUser").val(cookieJson.cookieValue);
        },
        error: function(errorMsg)
        {
            alert(errorMsg.statusText);
        }

    });


   
*/
});