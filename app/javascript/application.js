// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import jquery from 'jquery'
window.jQuery = jquery
window.$ = jquery

$(document).ready(function() {
  $("#add-task-button").on("click", function() {
    console.log("Button clicked!");
    $("#new-task-form").animate({
      height: 'toggle'
    });
  });

  $(".card").each(function() {
    var dueDate = new Date($(this).find(".badge").text());
    if (dueDate < new Date()) {
      $(this).animate({
        opacity: 0.15
      });
    }
  });
});
