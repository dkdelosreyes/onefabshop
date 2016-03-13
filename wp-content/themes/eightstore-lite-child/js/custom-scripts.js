jQuery(document).ready(function() {

	jQuery('.item-prod-wrap').matchHeight({
	    property: 'min-height'
	});

	jQuery(window).scroll(function () {
	      // console.log(jQuery(window).scrollTop())
	    if (jQuery(window).scrollTop() > 220) {
	      jQuery('.store-menu').addClass('store-menu-sticky');
	    }
	    if (jQuery(window).scrollTop() < 220) {
	      jQuery('.store-menu').removeClass('store-menu-sticky');
	    }
	});

	jQuery('.cat-parent').hover(function(){
		// comment out the overriden function of this in parent theme after theme updates
		jQuery(this).children('ul.children').stop().slideToggle(500);
	});
	
	jQuery('.cat-parent>a').click(function(e){
		e.preventDefault();
	})
});