$( document ).on('turbolinks:load', function() {
    $("#inputGroupFile01").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
    /*
    if ($(window).width() < 767) {
        $("#avatarUser").hide()
    }else {
        $("#avatarUser").show()
    } */

});