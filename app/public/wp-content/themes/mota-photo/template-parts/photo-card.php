<article class="photo-card">
  <?php
  $thumb_id   = get_post_thumbnail_id();
  $thumb_meta = wp_get_attachment_metadata($thumb_id);
  $orientation = ($thumb_meta['width'] > $thumb_meta['height']) ? 'landscape' : 'portrait';
  $thumb_url  = get_the_post_thumbnail_url(get_the_ID(), 'large');
  $terms_categorie = wp_get_post_terms(get_the_ID(), 'categorie');
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

  <div class="photo-info-overlay">
    <span class="photo-title"><?php the_title(); ?></span>
    <?php if (!empty($terms_categorie) && !is_wp_error($terms_categorie)) : ?>
      <span class="photo-category"><?php echo esc_html($terms_categorie[0]->name); ?></span>
    <?php endif; ?>
  </div>

  <?php 
$reference = SCF::get('reference'); // récupère la valeur depuis Smart Custom Fields
if ($reference) : ?>
  <span class="photo-ref" style="display:none;"><?php echo esc_html($reference); ?></span>
<?php endif; ?>

</article>


