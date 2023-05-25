// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("../channels")
//require("trix")
//import 'trix'
//= require trix

require("@rails/actiontext")
//require ("jquery.turbolinks").start()


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

//require("bootstrap")
//import 'bootstrap'

//import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap';
import 'jquery';
// import 'jquery'
//= require jquery

//= require jquery-ui

// import 'bootstrap/js/dist/dropdown'

//import '@fortawesome/fontawesome-free'
import "@fortawesome/fontawesome-free/js/all";
//require("@fortawesome/fontawesome-free")
//require('./myJs')
import './myJs'

document.addEventListener("turbolinks:load", () => {
    $('[data-bs-toggle="tooltip"]').tooltip()

})

$(document).on("turbolinks:load", function() {
    gtag('config', 'UA-176057162-1', {'page_location': event.data.url});
})


/*
$(document).ready(function(){
    $(".nav-tabs a").click(function(){
        $(this).tab('show');
    });
});
*/
//require("trix")
require("@rails/actiontext")