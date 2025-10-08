<article class="photo-item">
  <div class="photo-hover">
    <?php
    // Récupère les infos d’image
    $thumb_id   = get_post_thumbnail_id();
    $thumb_meta = wp_get_attachment_metadata($thumb_id);
    $orientation = ($thumb_meta['width'] > $thumb_meta['height']) ? 'landscape' : 'portrait';
    $thumb_url  = get_the_post_thumbnail_url(get_the_ID(), 'large');
    ?>

    <img src="<?php echo esc_url($thumb_url); ?>" class="<?php echo esc_attr($orientation); ?>" alt="<?php the_title_attribute(); ?>">

    <div class="photo-icons">
      <a href="<?php the_permalink(); ?>" class="icon-eye" title="Voir les infos">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/eye.svg" alt="Voir">
      </a>
      <a href="<?php echo wp_get_attachment_image_url(get_post_thumbnail_id(), 'full'); ?>" class="icon-fullscreen" title="Plein écran">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/fullscreen.svg" alt="Plein écran">
      </a>
    </div>
  </div>
</article>
