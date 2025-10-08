<?php get_header(); ?>

<?php
$hero = scf::get('hero_image');
$hero_url = wp_get_attachment_image_url($hero, 'full');
?>
<section class="hero" style="background-image: url('<?php echo esc_url($hero_url); ?>');">
  <div class="hero-overlay"></div>
  <h1 class="hero-title">PHOTOGRAPHE EVENT</h1>
</section>

<section class="photo-filtres">
  <form id="photo-filters">
    <div class="filter-left">
      <select name="categorie" id="filter-categorie">
        <option value="">Catégories</option>
        <?php
        $categories = get_terms(['taxonomy' => 'categorie', 'hide_empty' => false]);
        foreach ($categories as $cat) {
          echo '<option value="' . esc_attr($cat->slug) . '">' . esc_html($cat->name) . '</option>';
        }
        ?>
      </select>

      <select name="format" id="filter-format">
        <option value="">Formats</option>
        <?php
        $formats = get_terms(['taxonomy' => 'format', 'hide_empty' => false]);
        foreach ($formats as $fmt) {
          echo '<option value="' . esc_attr($fmt->slug) . '">' . esc_html($fmt->name) . '</option>';
        }
        ?>
      </select>
    </div>

    <div class="filter-right">
      <select name="ordre" id="filter-ordre">
        <option value="">Trier par</option>
        <option value="DESC">Plus récentes</option>
        <option value="ASC">Plus anciennes</option>
      </select>
    </div>
  </form>
</section>

<!-- Galerie -->
<div class="photo-apparentees-grid" id="photo-grid">
  <?php
  $args = [
    'post_type'      => 'photo',
    'posts_per_page' => 8,
    'orderby'        => 'date',
    'order'          => 'DESC',
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

<!-- Bouton Charger Plus -->
<div class="load-more-container" style="text-align:center; margin-top:40px;">
  <button id="load-more">Charger plus</button>
</div>

<?php get_footer(); ?>
