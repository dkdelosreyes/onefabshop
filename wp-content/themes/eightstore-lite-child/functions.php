<?php
function theme_enqueue_styles() {
    wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );

    wp_register_script( 'eightstore-child-matchHeight', get_template_directory_uri() . '-child/js/jquery.matchHeight-min.js', array( 'jquery' ), '1', true );
    wp_register_script( 'eightstore-child-custom-scripts', get_template_directory_uri() . '-child/js/custom-scripts.js', array( 'jquery','eightstore-child-matchHeight' ), '1', true );

    wp_enqueue_script('eightstore-child-matchHeight');
    wp_enqueue_script('eightstore-child-custom-scripts');

}
add_action( 'wp_enqueue_scripts', 'theme_enqueue_styles' );


function eightstore_ticker_header_customizer_custom(){
	//Check if ticker is enabled
	$eightstore_lite_ticker = get_theme_mod('eightstore_ticker_checkbox');
	if($eightstore_lite_ticker==1)
	{
		$ticker_title = get_theme_mod('eightstore_ticker_title');
		$ticker_category = get_theme_mod('ticker_setting_category');
		if(empty($ticker_title)){$ticker_title="Latest";}
		if( !empty($ticker_category)) {
			?>
			<?php
				$loop = new WP_Query(array(
					'cat' => $ticker_category,
					'posts_per_page' => -1    
					));
				if($loop->have_posts()) {
					$i=0;
						while($loop->have_posts()){
							$loop->the_post();
							$i++;
							?>
							<a class="store-switcher" href="<?php echo get_field('redirect_url');?>">
							<div class="top-ticker">
								<script>
									jQuery(document).ready(function($){
										$('#ticker').slick({
											slidesToShow: 1,
											slidesToScroll: 1,
											autoplay: false,
											autoplaySpeed: 2000,
											speed:2000,
											cssEase:'linear',
											arrows:false
										});
									}); //jquery close
								</script> <!-- close script -->
								<span class="ticker-title">
									<img src="<?php echo wp_get_attachment_url(get_post_thumbnail_id());?>" class="store-country-flag">
									<?php echo $ticker_title;?>
								</span>
								<ul id="ticker" class="hidden">
									<li>
										<h5 class="ticker_tick ticker-h5-<?php echo $i; ?>"> <?php the_title(); ?> </h5>
									</li>
								</ul>
							</div>
							</a>
						<?php
						}
				}
				wp_reset_postdata();
				?>
			<?php
		}
	}
}

/* Change default currency symbol for AED */
add_filter('woocommerce_currency_symbol', 'add_custom_currency_symbol', 10, 2);
function add_custom_currency_symbol( $currency_symbol, $currency ) {
switch( $currency ) {
case 'AED': $currency_symbol = 'AED'; break;
}
return $currency_symbol;
}

/* Convert AED to USD */
add_filter('woocommerce_paypal_args', 'convert_aed_to_usd');
function convert_aed_to_usd($paypal_args){
	if ( $paypal_args['currency_code'] == 'AED'){
		$convert_rate = get_aed_exchange_rate(); //Set converting rate
		$paypal_args['currency_code'] = 'USD'; //change AED to USD
		$i = 1;

		while (isset($paypal_args['amount_' . $i])) {
			$paypal_args['amount_' . $i] = round( $paypal_args['amount_' . $i] / $convert_rate, 2);
			++$i;
		}
	}
	return $paypal_args;
}

/* Get current exchange rate of usd to aed */
function get_aed_exchange_rate() {
	$url = "https://www.google.com/finance/converter?a=1&from=USD&to=AED"; //url for the currency convertor
	$result = file_get_contents($url); // fetches the result from the url
	$result = explode("<span class=bld>",$result);
  	$result = explode("</span>",$result[1]);  
  	$converted_amount = preg_replace("/[^0-9\.]/", null, $result[0]);
  	return $converted_amount;
}

?>