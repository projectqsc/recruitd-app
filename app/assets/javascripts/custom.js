$(document).ready(function(){

	//change menubar on scroll
	$(window).scroll(function(){
		if ( $(window).scrollTop() > 0 ) {
			$(".navbar").css({"height":"65", "background-color":"white", "min-height":"65px", "position":"fixed"});
			$(".container-fluid.container").css("margin-top","7px");
		} else {
			$(".container-fluid.container").css("margin-top","25px");
			$(".navbar").css({"height":"auto", "background-color":"rgba(255,255,255,.9)", "min-height":"100px", "position":"block"});
		}
	});

	//for scrollspy
	$('.scrollspy-steps').affix({
	    offset: {
	      top: 0,
	      bottom: function () {
	        return (this.bottom = $('footer').outerHeight(true) + 40);
	      }
	    }
	  });



	  $("#spy ul li a[href^='#']").on('click', function(e) {

   // prevent default anchor click behavior
   e.preventDefault();

   // store hash
   var hash = this.hash;

   // animate
   $('html, body').animate({
       scrollTop: $(this.hash).offset().top
     }, 300, function(){

       // when done, add hash to url
       // (default click behaviour)
       window.location.hash = hash;
     });

});


});