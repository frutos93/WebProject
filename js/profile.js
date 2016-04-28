$(document).ready(function () {
    $("#usName").text(localStorage.getItem('name'));
    dataToSend ={
        action : "SESSION",
    }
    
    $.ajax({
        url: "data/applicationLayer.php"
        , type: "POST"
        , data: dataToSend
        , dataType: "json"
        , contentType: "application/x-www-form-urlencoded"
        , success: function (jsonObject) {
            $("#nombre").text(jsonObject.fName);
            $("#apellido").text(jsonObject.lName);
            $("#username").text(jsonObject.username);
            $("#email").text(jsonObject.email);
            $("#country").text(jsonObject.country);
            $("#gender").text(jsonObject.gender);
            $("#age").text(jsonObject.age);
            $("#weight").text(jsonObject.weight);
            $("#height").text(jsonObject.height);
            $("#activity").text(jsonObject.activity);
            $("#goal").text(jsonObject.goal);
            }
        , error: function (errorMsg) {
            alert("Login ERROR " + errorMsg.statusText);
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
                    localStorage.setItem('currentFood', jsonObject.name);
                    window.location.replace("food_specification.html");
                },
                error: function(errorMsg) {
                    alert("Login ERROR " + errorMsg.statusText); 
                }

            });
    }

    });
    
    dataToSend ={
        action : "FAVORITES",
    }
    $.ajax({
                url: "data/applicationLayer.php",
                type: "POST",
                data: dataToSend,
                dataType: "html",
                contentType: "application/x-www-form-urlencoded",
                success: function(Data) {
                    $("#favorite_list").append(Data);

                },
                error: function(errorMsg) {
                    alert("Login ERROR " + errorMsg.statusText); 
                }

            });
    $("#add_new").click(function(){
        if($("#foodName").val() == "")
            alert("Fill the name");
        else if($("#type option:selected").val() == "0")
            alert("Select a type");
        else if($("#brand").val() == "")
            alert("Type a brand");
        else if($("#portion").val() == "")
            alert("Type a portion");
        else if($("#typeMeasure option:selected").val() == "0")
            alert("Select a measure");
        else if($("#calories").val() == "")
            alert("Type calories");
        else if($("#fat").val() == "")
            alert("Type fat");
        else if($("#carbs").val() == "")
            alert("Type carbs");
        else if($("#protein").val() == "")
            alert("Type protein");
        else{
            dataToSend = {
                name : $("#foodName").val(),
                type : $("#type option:selected").text(),
                product : $("#product").val(),
                brand : $("#brand").val(),
                portion : $("#portion").val(),
                measure : $("#typeMeasure option:selected").text(),
                calories : $("#calories").val(),
                fat : $("#fat").val(),
                carbs : $("#carbs").val(),
                protein : $("#protein").val(),
                action: "ADDFOOD",
            }
            
            $.ajax({
                url: "data/applicationLayer.php",
                type: "POST",
                data: dataToSend,
                dataType: "html",
                contentType: "application/x-www-form-urlencoded",
                success: function(Data) {

                },
                error: function(errorMsg) {
                    alert("Login ERROR " + errorMsg.statusText); 
                }

            });
            
            
        }
        
    });
});

    $(document).keypress(function(event) {
        var keycode = (event.keyCode ? event.keyCode : event.which);
        if (keycode == '13') {
            $('#searchBtn').click();
        }
    });
