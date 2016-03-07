<?php
function theme_enqueue_styles() {
    wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );

    wp_register_script( 'eightstore-child-matchHeight', get_template_directory_uri() . '-child/js/jquery.matchHeight-min.js', array( 'jquery' ), '1', true );
    wp_register_script( 'eightstore-child-custom-scripts', get_template_directory_uri() . '-child/js/custom-scripts.js', array( 'jquery','eightstore-child-matchHeight' ), '1', true );

    wp_enqueue_script('eightstore-child-matchHeight');
    wp_enqueue_script('eightstore-child-custom-scripts');

}
add_action( 'wp_enqueue_scripts', 'theme_enqueue_styles' );


?>