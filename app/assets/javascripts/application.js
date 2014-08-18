// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks  
//= require twitter/bootstrap
//= require custom
//= require bootstrap
//= require bootstrap.min.js
//= require bootstrap-datepicker
//= require tinymce
//= require tinymce-jquery
//= require chosen-jquery
//= require profiles
//= require_tree .





function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).parents(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));
}



function li_one() {
  $(".l1").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
}
;

$(document).on("mouseenter", "#personal-info", function() {
   $(".l1").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
});


function li_two() {
  $(".l2").css({"background-color": "grey", "color": "white"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
}
;

$(document).on("mouseenter","#job-preferences",function(){
  $(".l2").css({"background-color": "grey", "color": "white"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
  });
  
  
function li_three() {
  $(".l3").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
}
;

$(document).on("mouseenter","#web-presence",function(){
  $(".l3").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
  });
  
function li_four() {
  $(".l4").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
}
;

$(document).on("mouseenter","#summary",function(){
  $(".l4").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
  });
  
function li_five() {
  $(".l5").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
}
;

$(document).on("mouseenter","#work-history",function(){
   $(".l5").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
  });
  
function li_six() {
  $(".l6").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
}
;

$(document).on("mouseenter","#industry",function(){
   $(".l6").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
  });
  
function li_seven() {
  $(".l7").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
}
;

$(document).on("mouseenter","#education",function(){
   $(".l7").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
  });
  
function li_eight() {
  $(".l8").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
}
;

$(document).on("mouseenter","#additional",function(){
   $(".l8").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
  });
  
  
function li_nine() {
  $(".l9").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
}
;

$(document).on("mouseenter","#languages",function(){
  $(".l9").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  $(".l10").css({"background-color": "white", "color": "#787c7f"});
  });
  
function li_ten() {
  $(".l10").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
}
;

$(document).on("mouseenter","#recommendation",function(){
  $(".l10").css({"background-color": "grey", "color": "white"});
  $(".l2").css({"background-color": "white", "color": "#787c7f"});
  $(".l3").css({"background-color": "white", "color": "#787c7f"});
  $(".l4").css({"background-color": "white", "color": "#787c7f"});
  $(".l5").css({"background-color": "white", "color": "#787c7f"});
  $(".l6").css({"background-color": "white", "color": "#787c7f"});
  $(".l7").css({"background-color": "white", "color": "#787c7f"});
  $(".l8").css({"background-color": "white", "color": "#787c7f"});
  $(".l9").css({"background-color": "white", "color": "#787c7f"});
  $(".l1").css({"background-color": "white", "color": "#787c7f"});
  });