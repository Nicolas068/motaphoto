<?php get_header(); ?>

<?php
$hero = scf::get('hero_image');
$hero_url = wp_get_attachment_image_url($hero, 'full');
?>
<section class="hero" style="background-image: url('<?php echo esc_url($hero_url); ?>');">
  <div class="hero-overlay"></div>
  <h1 class="hero-title">PHOTOGRAPHE EVENT</h1>
</section>

<section class="photo-galerie">
  <h2 class="titre-secondaire">Galerie photo</h2>

  <div class="photo-apparentees-grid" id="photo-grid">
    <?php
    $args = [
      'post_type'      => 'photo',
      'posts_per_page' => 8,
      'orderby'        => 'date',
      'order'          => 'DESC',
      'paged'          => 1
    ];
    $photos = new WP_Query($args);

    if ($photos->have_posts()) :
      while ($photos->have_posts()) : $photos->the_post();
        get_template_part('template-parts/photo-card');
      endwhile;
      wp_reset_postdata();
    endif;
    ?>
  </div>

  <button id="load-more">Charger plus</button>
</section>

<?php get_footer(); ?>






