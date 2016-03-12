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
});