<?php
/**
 * Template Single pour CPT "photo"
 */
get_header(); ?>

<main id="site-content" class="site-main photo-single-wrapper">
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

    <div class="photo-layout">

        <!-- Bloc gauche (infos) -->
        <div class="photo-infos">
            <h2 class="photo-title">
                <?php echo preg_replace('/\s+/', '<br>', get_the_title(), 1); ?>
            </h2>

            <?php
            $reference = SCF::get('reference');
            $type = SCF::get('type');
            $annee = SCF::get('annee');

            $terms_categorie = wp_get_post_terms(get_the_ID(), 'categorie');
            $terms_format = wp_get_post_terms(get_the_ID(), 'format');
            ?>

            <?php if ( !empty($reference) ) : ?>
                <p><strong>RÉFÉRENCE :</strong> <?php echo esc_html($reference); ?></p>
                <p class="photo-ref" style="display:none;"><?php echo esc_html($reference); ?></p>
            <?php endif; ?>

            <?php if ( !empty($terms_categorie) && !is_wp_error($terms_categorie) ) : ?>
                <p><strong>CATÉGORIE :</strong> <?php echo esc_html($terms_categorie[0]->name); ?></p>
            <?php endif; ?>

            <?php if ( !empty($terms_format) && !is_wp_error($terms_format) ) : ?>
                <p><strong>FORMAT :</strong> <?php echo esc_html($terms_format[0]->name); ?></p>
            <?php endif; ?>

            <?php if ( !empty($annee) ) : ?>
                <p><strong>DATE :</strong> <?php echo esc_html($annee); ?></p>
            <?php endif; ?>
        </div>

        <!-- Bloc droit (photo) -->
        <?php 
        if ( has_post_thumbnail() ) {
            $thumb_id   = get_post_thumbnail_id();
            $thumb_meta = wp_get_attachment_metadata( $thumb_id );
            $orientation = ($thumb_meta['width'] > $thumb_meta['height']) ? 'landscape' : 'portrait';

            echo wp_get_attachment_image( 
                $thumb_id, 
                'full', 
                false, 
                array( 'class' => 'photo-img ' . $orientation ) 
            );
        }
        ?>
    </div><!-- /.photo-layout -->

    <!-- Bloc bas (contact + navigation) -->
    <div class="photo-footer-wrapper">  
        <div class="photo-footer">
            <div class="photo-contact">
                <p>Cette photo vous intéresse ?</p>
                <a href="#modal-contact" class="btn-contact" data-reference="<?php echo esc_attr($reference); ?>">
                    Contact
                </a>
            </div>

            <div class="photo-navigation">
                <?php
                global $post;

                $prev_post = get_previous_post();
                if ( $prev_post ) {
                    echo '<a href="' . get_permalink( $prev_post->ID ) . '" class="nav-link" data-thumb="' . get_the_post_thumbnail_url( $prev_post->ID, 'thumbnail' ) . '">←</a>';
                } else {
                    $last = get_posts([
                        'post_type'      => 'photo',
                        'posts_per_page' => 1,
                        'order'          => 'DESC',
                        'orderby'        => 'date'
                    ]);
                    if ($last) {
                        echo '<a href="' . get_permalink( $last[0]->ID ) . '" class="nav-link" data-thumb="' . get_the_post_thumbnail_url( $last[0]->ID, 'thumbnail' ) . '">←</a>';
                    }
                }

                $next_post = get_next_post();
                if ( $next_post ) {
                    echo '<a href="' . get_permalink( $next_post->ID ) . '" class="nav-link" data-thumb="' . get_the_post_thumbnail_url( $next_post->ID, 'thumbnail' ) . '">→</a>';
                } else {
                    $first = get_posts([
                        'post_type'      => 'photo',
                        'posts_per_page' => 1,
                        'order'          => 'ASC',
                        'orderby'        => 'date'
                    ]);
                    if ($first) {
                        echo '<a href="' . get_permalink( $first[0]->ID ) . '" class="nav-link" data-thumb="' . get_the_post_thumbnail_url( $first[0]->ID, 'thumbnail' ) . '">→</a>';
                    }
                }
                ?>
            </div> 
        </div><!-- /.photo-footer -->
    </div><!-- /.photo-footer-wrapper -->

<?php endwhile; endif; ?>

<!-- Photo apparentees -->

<section class="photo-apparentees">
  <h3 class="titre-secondaire">VOUS AIMEREZ AUSSI</h3>

  <div class="photo-apparentees-grid">
    <?php
   $terms = wp_get_post_terms(get_the_ID(), 'categorie');

if ($terms && !is_wp_error($terms)) {
    $term_id = $terms[0]->term_id;

    $args = [
        'post_type'      => 'photo',
        'posts_per_page' => 2,
        'post__not_in'   => [get_the_ID()],
        'orderby'        => 'rand', // ordre aléatoire
        'tax_query'      => [
            [
                'taxonomy' => 'categorie',
                'field'    => 'term_id',
                'terms'    => $term_id,
            ],
        ],
    ];
} else {
    $args = [
        'post_type'      => 'photo',
        'posts_per_page' => 2,
        'post__not_in'   => [get_the_ID()],
        'orderby'        => 'rand',
    ];
}


    $related_photos = new WP_Query($args);

    if ($related_photos->have_posts()) :
        while ($related_photos->have_posts()) : $related_photos->the_post(); ?>
        
     <article class="photo-item">
  <div class="photo-hover">
    <?php 
    // Récupère les infos d’image
    $thumb_id   = get_post_thumbnail_id();
    $thumb_meta = wp_get_attachment_metadata($thumb_id);
    $orientation = ($thumb_meta['width'] > $thumb_meta['height']) ? 'landscape' : 'portrait';
    $thumb_url  = get_the_post_thumbnail_url(null, 'large');
    ?>

    <img src="<?php echo esc_url($thumb_url); ?>" class="<?php echo esc_attr($orientation); ?>" alt="<?php the_title_attribute(); ?>">

    <div class="photo-icons">
      <a href="<?php the_permalink(); ?>" class="icon-eye" title="Voir les infos">
        <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/icons/eye.svg" alt="Voir">
      </a>
      <a href="<?php echo wp_get_attachment_image_url(get_post_thumbnail_id(), 'full'); ?>" class="icon-fullscreen" title="Plein écran">
        <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/icons/fullscreen.svg" alt="Plein écran">
      </a>
    </div>
  </div>
</article>
   

        <?php endwhile;
        wp_reset_postdata();
    else : ?>
        <p>Aucune autre photo à afficher.</p>
    <?php endif; ?>
  </div>
</section>




</main>

<?php get_footer(); ?>
