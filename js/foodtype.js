$(document).ready(function () {
    $("#usName").text(localStorage.getItem('name'));
    if (localStorage.getItem('food') == 'beans')
        $("#foodText").text("Beans & Legumes");
    if (localStorage.getItem('food') == 'bread')
        $("#foodText").text("Breads & Cereals");
    if (localStorage.getItem('food') == 'milk')
        $("#foodText").text("Cheese, Milk & Dairy");
    if (localStorage.getItem('food') == 'drinks')
        $("#foodText").text("Drinks");
    if (localStorage.getItem('food') == 'eggs')
        $("#foodText").text("Eggs");
    if (localStorage.getItem('food') == 'fast')
        $("#foodText").text("Fast Food");
    if (localStorage.getItem('food') == 'fish')
        $("#foodText").text("Fish & Seafood");
    if (localStorage.getItem('food') == 'fruit')
        $("#foodText").text("Fruit");
    if (localStorage.getItem('food') == 'meat')
        $("#foodText").text("Meat");
    if (localStorage.getItem('food') == 'nuts')
        $("#foodText").text("Nuts & Seeds");
    if (localStorage.getItem('food') == 'pasta')
        $("#foodText").text("Pasta, Rice & Noodles");
    if (localStorage.getItem('food') == 'snacks')
        $("#foodText").text("Snacks");
    if (localStorage.getItem('food') == 'candy')
        $("#foodText").text("Sweets, Candy & Desserts");
    if (localStorage.getItem('food') == 'vegetables')
        $("#foodText").text("Vegetables");
    $("#img_tittle").attr('src', "img/" + localStorage.getItem('food') + ".png");

    dataToSend = {
        food: $("#foodText").text()
        , action: "FOOD"
    , }

    $.ajax({
        url: "data/applicationLayer.php", 
        type: "POST", 
        data: dataToSend,
        dataType: "html",
        success: function (Data) {
            $("#food_variety").append(Data);
        }
        , error: function (errorMsg) {
            alert(errorMsg.statusText);
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

});
    $(document).keypress(function(event) {
        var keycode = (event.keyCode ? event.keyCode : event.which);
        if (keycode == '13') {
            $('#searchBtn').click();
        }
    });


function setFood(food){
    localStorage.setItem('currentFood', food);
    window.location.replace("food_specification.html");
}

function setItem(food) {
    localStorage.setItem('food', food);
    window.location.replace("food_type.html");
}

