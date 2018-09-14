<?php

global $leadsurf_lite_themename;
global $leadsurf_lite_shortname;

/************************************************
*  ENQUQUE CSS AND JAVASCRIPT
************************************************/
function leadsurf_lite_theme_stylesheet()
{
	global $is_IE;

	$theme = wp_get_theme();
	wp_enqueue_script('hoverIntent');
	wp_enqueue_script('superfish', get_template_directory_uri().'/js/superfish.js',array('jquery'),true,'1.0');
	wp_enqueue_script('waypoints',get_template_directory_uri().'/js/waypoints.js',array('jquery'),'1.0',true );
	
	wp_enqueue_script('leadsurf-customjs', get_template_directory_uri() .'/js/custom.js',array('jquery'),'1.0',1 );
	wp_enqueue_script('comment-reply');

	wp_enqueue_style( 'leadsurf-style', get_stylesheet_uri() );

	
	wp_enqueue_style( 'leadsurf-animation', get_template_directory_uri().'/css/leadsurf-animation.css', false, $theme->Version);
	wp_enqueue_style( 'font-awesome', get_template_directory_uri().'/css/font-awesome.css', false, $theme->Version);
	
			
	/*SUPERFISH*/
	wp_enqueue_style( 'superfish', get_template_directory_uri().'/css/superfish.css', false, $theme->Version);
	wp_enqueue_style( 'bootstrap-responsive', get_template_directory_uri().'/css/bootstrap-responsive.css', false, $theme->Version);
	
	/*GOOGLE FONTS*/
	wp_enqueue_style( 'google-Fonts-Lato','//fonts.googleapis.com/css?family=Lato:400,300italic,400italic,700,700italic,300', false, $theme->Version);
	
	if($is_IE ) {
		wp_enqueue_style( 'ie-style', get_template_directory_uri().'/css/ie-style.css', false, $theme->Version );
		wp_enqueue_style( 'font-awesome-ie7', get_template_directory_uri().'/css/font-awesome-ie7.css', false, $theme->Version );
		
	}
}
add_action('wp_enqueue_scripts', 'leadsurf_lite_theme_stylesheet');

function leadsurf_lite_head() {

	if(!is_admin()) {
		require_once(get_template_directory().'/includes/leadsurf-custom-css.php');
	}

}
add_action('wp_head', 'leadsurf_lite_head');