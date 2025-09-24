<?php
/* Template Name: Page par défaut */
get_header();
?>

<main class="site-page">
    <?php
    if ( have_posts() ) :
        while ( have_posts() ) : the_post();
            the_content();
        endwhile;
    endif;
    ?>
</main>

<?php
get_footer();
