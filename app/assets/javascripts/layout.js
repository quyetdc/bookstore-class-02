$( document ).ready(function() {
    console.log( "ready!" );
    $("#categories-nav-dropdown").click(function() {
        if ($("#authors-nav").is(":visible")){
            $("#authors-nav").hide();
            $("#categories-nav").fadeIn(350);
        } else {
            $("#categories-nav").slideToggle(350);
        }

        $("#categories-nav-dropdown a").toggleClass('active');
        $("#authors-nav-dropdown a").removeClass('active');
    });

    $("#authors-nav-dropdown").click(function() {
        if ($("#categories-nav").is(":visible")){
            $("#categories-nav").hide();
            $("#authors-nav").fadeIn(350);
        } else {
            $("#authors-nav").slideToggle(350);
        }

        $("#authors-nav-dropdown a").toggleClass('active');
        $("#categories-nav-dropdown a").removeClass('active');
    });


});