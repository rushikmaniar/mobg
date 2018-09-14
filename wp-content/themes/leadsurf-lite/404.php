<?php 
/**
 * The template for displaying Error 404 page.
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 */

get_header(); ?>

<div class="page-content">
	<div class="container" id="error-404">
		<div class="row-fluid">
			<div id="content" class="span12">
				<div class="post">
					<div class="skepost _404-page">
						<div class="error-txt-first"><img src="<?php echo get_template_directory_uri().'/images/404-image.png'; ?>"></div>
						<div class="error-txt"><?php _e( 'PAGE NOT FOUND', 'leadsurf-lite' ); ?></div>
						<?php get_search_form(); ?>
					</div>
					<!-- post --> 
				</div>
				<!-- post -->
			</div>
			<!-- content --> 
		</div>
	</div>
</div>
<?php get_footer(); ?>