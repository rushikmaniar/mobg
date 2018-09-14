<?php
/**
* The template for displaying the footer.
*
* Contains footer content and the closing of the
* #main and #page div elements.
*
*/
?>
	<div class="clearfix"></div>
</div>
<!-- #main --> 
<?php
$leadsurf_lite_fb_url		= esc_url( get_theme_mod('leadsurf_fb_url','#') );
$leadsurf_lite_tw_url		= esc_url( get_theme_mod('leadsurf_tw_url','#') );
$leadsurf_lite_lin_url		= esc_url( get_theme_mod('leadsurf_lin_url','#') );
$leadsurf_lite_gplus_url	= esc_url( get_theme_mod('leadsurf_gplus_url','#') );
$leadsurf_lite_fl_url		= esc_url( get_theme_mod('leadsurf_fl_url','#') );
$leadsurf_lite_pin_url		= esc_url( get_theme_mod('leadsurf_pin_url','#') );
$leadsurf_lite_drib_url	= esc_url( get_theme_mod('leadsurf_drib_url','#') );
$leadsurf_lite_skype_url	= esc_url( get_theme_mod('leadsurf_skype_url','#') );
$leadsurf_lite_instagram_url	= esc_url( get_theme_mod('leadsurf_instagram_url','#') );
$leadsurf_lite_vk_url	= esc_url( get_theme_mod('leadsurf_vk_url','#') );
$leadsurf_lite_whatsapp_url	= esc_url( get_theme_mod('leadsurf_whatsapp_url','#') );
?>
<!-- #footer -->
<div id="footer" class="leadsurf-section">
	<div class="backtotop-warp"><a href="JavaScript:void(0);" title="Back To Top" id="backtop"></a></div>
	<div id="footer-content" class="clearfix">
		<div class="container">
			<div class="row-fluid">
				<div class="second_wrapper">
					<!-- Social Links Section -->
					<div class="social_icon">
						<ul class="clearfix">
							<?php if( $leadsurf_lite_fb_url != '' ){ ?><li class="fb-icon"><a target="_blank" href="<?php echo $leadsurf_lite_fb_url; ?>"><span class="fa fa-facebook" title="Facebook"></span></a></li><?php } ?>
							<?php if( $leadsurf_lite_tw_url != '' ){ ?><li class="tw-icon"><a target="_blank" href="<?php echo $leadsurf_lite_tw_url; ?>"><span class="fa fa-twitter" title="Twitter"></span></a></li><?php } ?>
							<?php if( $leadsurf_lite_lin_url != '' ){ ?><li class="linkedin-icon"><a target="_blank" href="<?php echo $leadsurf_lite_lin_url; ?>"><span class="fa fa-linkedin" title="Linkedin"></span></a></li><?php } ?>
							<?php if( $leadsurf_lite_gplus_url != '' ){ ?><li class="gplus-icon"><a target="_blank" href="<?php echo $leadsurf_lite_gplus_url; ?>"><span class="fa fa-google-plus" title="Google Plus"></span></a></li><?php } ?>
							<?php if( $leadsurf_lite_fl_url != '' ){ ?><li class="flickr-icon"><a target="_blank" href="<?php echo $leadsurf_lite_fl_url; ?>"><span class="fa fa-flickr" title="Flickr"></span></a></li><?php } ?>
							<?php if( $leadsurf_lite_pin_url != '' ){ ?><li class="pinterest-icon"><a target="_blank" href="<?php echo $leadsurf_lite_pin_url; ?>"><span class="fa fa-pinterest" title="Pinterest"></span></a></li><?php } ?>
							<?php if( $leadsurf_lite_drib_url != '' ){ ?><li class="dribbble-icon"><a target="_blank" href="<?php echo $leadsurf_lite_drib_url; ?>"><span class="fa fa-dribbble" title="dribbble"></span></a></li><?php } ?>
							<?php if( $leadsurf_lite_skype_url != '' ){ ?><li class="skype-icon"><a target="_blank" href="<?php echo $leadsurf_lite_skype_url; ?>"><span class="fa fa-skype" title="skype"></span></a></li><?php } ?>
							<?php if( $leadsurf_lite_instagram_url != '' ){ ?><li class="instagram-icon"><a target="_blank" href="<?php echo $leadsurf_lite_instagram_url; ?>"><span class="fa fa-instagram" title="instagram"></span></a></li><?php } ?>
							<?php if( $leadsurf_lite_vk_url != '' ){ ?><li class="vk-icon"><a target="_blank" href="<?php echo $leadsurf_lite_vk_url; ?>"><span class="fa fa-vk" title="vk"></span></a></li><?php } ?>
							<?php if( $leadsurf_lite_whatsapp_url != '' ){ ?><li class="whatsapp-icon"><a target="_blank" href="<?php echo $leadsurf_lite_whatsapp_url; ?>"><span class="fa fa-whatsapp" title="whatsapp"></span></a></li><?php } ?>
						</ul>
					</div>
					<!-- Social Links Section -->
					<div class="clearfix"></div>
				</div><!-- second_wrapper -->
			</div>
		</div>
	</div>

	<div class="third_wrapper">
		<div class="container">
			<div class="row-fluid">
				<div class="copyright span6"> <?php echo wp_kses_post( get_theme_mod('leadsurf_copyright', __('Copyright Text here..', 'leadsurf-lite') ) ); ?></div>
				<div class="owner span6"><?php printf( __( '%s -Lite Theme By %s', 'leadsurf-lite' ), 'Leadsurf', '<a href="'.esc_url('https://sketchthemes.com').'" title="SketchThemes">SketchThemes</a>' ); ?></div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div><!-- third_wrapper --> 
</div>
<!-- #footer -->

</div>
<!-- #wrapper -->
	<?php wp_footer(); ?>
</body>
</html>