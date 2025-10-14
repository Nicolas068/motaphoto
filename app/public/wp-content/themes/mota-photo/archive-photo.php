<?php
/**
 * Template Archive pour CPT "photos"
 */
get_header(); ?>

<main id="site-content" class="site-main">
    <h1>Galerie de Photos</h1>

    <?php if ( have_posts() ) : ?>
        <div class="photo-grid">
            <?php while ( have_posts() ) : the_post(); ?>
                <div class="photo-card">
                    <a href="<?php the_permalink(); ?>">
                        <?php if ( has_post_thumbnail() ) {
                            the_post_thumbnail('medium');
                        } ?>
                        <h2><?php the_title(); ?></h2>
                    </a>
                </div>
            <?php endwhile; ?>
        </div>
    <?php else : ?>
        <p>Aucune photo trouvée.</p>
    <?php endif; ?>
</main>

<?php
get_footer();

