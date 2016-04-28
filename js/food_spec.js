$(document).ready(function () {
    $("#food_head").text(localStorage.getItem('currentFood'));
    $("#usName").text(localStorage.getItem('name'));
    dataToSend = {
        food: $("#food_head").text(),
        action: 'GETFOOD',
    }
    $.ajax({
        url: "data/applicationLayer.php"
        , type: "POST"
        , data: dataToSend
        , dataType: "json"
        , contentType: "application/x-www-form-urlencoded"
        , success: function (jsonObject) {
            $("#servNum").text(jsonObject.portion);
            $("#servNum2").text(jsonObject.measure);
            $("#calNum").text(jsonObject.calories);
            $("#fatNum").text(jsonObject.fat);
            $("#carbNum").text(jsonObject.carbs);
            $("#protNum").text(jsonObject.protein);
        }
        , error: function (errorMsg) {
            alert("Login ERROR " + errorMsg.statusText);
        }
    });
    
    $("#calculate").click(function(){
        $("#totalcal").text(($("#cantidad").val() *
        $("#calNum").text())/$("#servNum").text());
        
        $("#totalfat").text(($("#cantidad").val() *
        $("#fatNum").text())/$("#servNum").text());
        
         $("#totalcarbs").text(($("#cantidad").val() *
        $("#carbNum").text())/$("#servNum").text());
        
        $("#totalprotein").text(($("#cantidad").val() *
        $("#protNum").text())/$("#servNum").text());
    });



    $("#add_day").click(function(){

        var dataToSend = { 
                name: $("#food_head").text(),
                cal : $("#totalcal").text(),
                fat:  $("#totalfat").text(),
                carb: $("#totalcarbs").text(),
                prot: $("#totalprotein").text(),
                action: 'ADDDAY',
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
    
});
    $(document).keypress(function(event) {
        var keycode = (event.keyCode ? event.keyCode : event.which);
        if (keycode == '13') {
            $('#searchBtn').click();
        }
    });
