/*$('.message a').click(function(){
    $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});*/

/*function toggle_visibility(id) {
    var e = document.getElementById(id);
    if(e.style.display == 'block')
        e.style.display = 'none';
    else
        e.style.display = 'block';
}*/

//Show Pages
var showPage = function(nPage) {
    // Hide all the pages
    $("#pageLogin").hide();
    $("#pageRegister").hide();
    //$("#pageSummary").hide();
    // Show the desired page
    switch(nPage) {
        case 1:
            $("#pageLogin").show();
            break;
        case 2:
            $("#pageRegister").show();
            break;
        case 3:
            alert("showPage called with outofbounds value for npage");
            break;
    }
}

// Document ready handler
$(document).ready(function(){
    //Logic called when the HTML has been loaded and is ready for work
    $("#menuLogin").click(function(){
        // Code run when there is a click event on #menuSummary
        showPage(1);
    });

    $("#menuRegistration").click(function(){
        // Code run when there is a click event on #menuRelationship
        showPage(2);
    });
    $("#menuContact").click(function(){
        // Code run when there is a click event on #menuChat
        alert("Need to implement Contact Details!")
    });
});