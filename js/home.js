$(document).ready(function(){

    $("#tabs > li").click(function(){
        var identifier = $(this).attr("id");
        
        $("#tabs > li").removeClass('selected');
        $(this).addClass('selected');
        
        $("#tabcontent > div").removeClass('active');
        $("#tabcontent > #content-" + identifier).addClass('active');
    });

    $("#usName").text(localStorage.getItem('name'));
    var dataSession = {
        action: "SESSION",
    }
    var dataComments = {
        action: "COMMENTS",
    }
    var dataDelet = {
        action: "DELETSESSION",
    }


 $.ajax({
        url: "data/applicationLayer.php",
        type: "POST",
        data: dataComments,
        dataType: "html",
        success: function(Data){
            $("#content-tab1 div").append(Data);
        },
                
        error: function(errorMsg)
            {
                alert(errorMsg.statusText); 
            }
    });
    
    
     $("#comentabttn").click(function(){

        var text = $("#mycoment").val();

        if(text != ""){

            var dataToSend = { 
                comment : text,
                action: "SEARCH", 
            }

            $.ajax({
                url: "data/applicationLayer.php",
                type: "POST",
                data: dataToSend,
                dataType: "json",
                contentType: "application/x-www-form-urlencoded",
                success: function(jsonObject) {
                    //alert(jsonObject.fname+ " " + jsonObject.lname);
                },
                error: function(errorMsg) {
                    alert("Login ERROR " + errorMsg.statusText); 
                }

            });

        }
        
    });
    
    $("#searchBtn").click(function(){

        if($("#search").val() == "")
            alert("Enter a search value.");
        else{
        var dataToSend = { 
                food : $("#search").val(),
                action: "SEARCH", 
            }
            $.ajax({
                url: "data/applicationLayer.php",
                type: "POST",
                data: dataToSend,
                dataType: "json",
                contentType: "application/x-www-form-urlencoded",
                success: function(jsonObject) {
                    localStorage.clear();
                    localStorage.setItem('currentFood', jsonObject.name);
                    window.location.replace("food_specification.html");
                },
                error: function(errorMsg) {
                    alert("Login ERROR " + errorMsg.statusText); 
                }

            });
    }

    });
    /*

    $.ajax({
        url: "data/applicationLayer.php",
        type: "POST",
        data: dataSession,
        dataType: "html",
        contentType: "application/x-www-form-urlencoded",
        success: function(Data){
            $("#content-tab3").append(Data);
        },
        error: function(errorMsg)
            {
                alert(errorMsg.statusText);
                window.location.replace("login.html"); 
            }
    });


    $("#tab4").on("click", function(){
        $.ajax({
            url:"data/applicationLayer.php",
            type:"POST",
            data: dataDelet,
            dataType: "json",
            contentType: "application/x-www-form-urlencoded",
            succes: function(sessionObjJson){
                window.location.replace("login.html");
                alert("sessionObjJson");

            },
            error: function(errorMsg){
                alert(errorMsg.statusText); 
                window.location.replace("login.html");

                
            }
        });
    });


   

    $("#searchBttn").click(function(){


        $("#usersResult").html('');
        var $text = $("#searchUser").val();


        if($text != ""){

            var dataToSend = { 
                searchName : $text,
                action: "SEARCHUSER", 
            }
        }
        $.ajax({
            url: "data/applicationLayer.php",
            type: "POST",
            data: dataToSend,
            dataType: "html",
            contentType: "application/x-www-form-urlencoded",
            success: function(Data) {
                $("#usersResult").append(Data);

            },
            error: function(errorMsg)
            {
                alert(errorMsg.statusText); 
            }
        });

    });


*/

}); //END
    $(document).keypress(function(event) {
        var keycode = (event.keyCode ? event.keyCode : event.which);
        if (keycode == '13') {
            $('#searchBtn').click();
        }
    });





