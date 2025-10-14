<?php
// Charger styles et scripts
function motaphoto_enqueue_assets() {
    // Feuille de style principale
    $style_file = get_stylesheet_directory() . '/style.css';
    wp_enqueue_style(
        'motaphoto-style',
        get_stylesheet_uri(),
        [],
        file_exists($style_file) ? filemtime($style_file) : '' // <-- corrigé
    );

    // Charger script.js
    $script_file = get_stylesheet_directory() . '/script.js';
    wp_enqueue_script(
        'motaphoto-script',
        get_stylesheet_directory_uri() . '/script.js',
        ['jquery'], // dépend de jQuery
        file_exists($script_file) ? filemtime($script_file) : '', // <-- corrigé
        true // dans le footer
        
    );

 // Script Lightbox
    wp_enqueue_script(
        'motaphoto-lightbox',
        get_template_directory_uri() . '/assets/js/lightbox.js',
        [],
        filemtime(get_stylesheet_directory() . '/assets/js/lightbox.js'),
        true
    );

    wp_localize_script('motaphoto-script', 'loadmore', [
  'ajaxurl' => admin_url('admin-ajax.php')
  
]);
}
add_action('wp_enqueue_scripts', 'motaphoto_enqueue_assets');

// Ajouter les menus
function register_my_menus() {
    register_nav_menus([
        'menu-principal' => __( 'Menu Principal' ), // menu du header
        'footer-menu'    => __( 'Menu Footer' ),
    ]);
}
add_action('init', 'register_my_menus');


// Ajax

add_action('wp_ajax_load_more_photos', 'load_more_photos');
add_action('wp_ajax_nopriv_load_more_photos', 'load_more_photos');

function load_more_photos() {
  $paged = isset($_GET['page']) ? intval($_GET['page']) : 1;

  $args = [
    'post_type'      => 'photo',
    'posts_per_page' => 8,
    'orderby'        => 'date',
    'order'          => 'DESC',
    'paged'          => $paged
  ];

  $query = new WP_Query($args);

  if ($query->have_posts()) {
    while ($query->have_posts()) {
      $query->the_post();
      get_template_part('template-parts/photo-card');
    }
  }
  wp_die();
}

// AJAX : filtrer les photos

function motaphoto_filter_photos() {
  $page = isset($_POST['page']) ? intval($_POST['page']) : 1;

  $args = [
    'post_type'      => 'photo',
    'posts_per_page' => 8,
    'paged'          => $page,
    'orderby'        => 'date',
    'order'          => isset($_POST['ordre']) ? sanitize_text_field($_POST['ordre']) : 'DESC',
    'tax_query'      => []
  ];

  if (!empty($_POST['categorie'])) {
    $args['tax_query'][] = [
      'taxonomy' => 'categorie',
      'field'    => 'slug',
      'terms'    => sanitize_text_field($_POST['categorie']),
    ];
  }

  if (!empty($_POST['format'])) {
    $args['tax_query'][] = [
      'taxonomy' => 'format',
      'field'    => 'slug',
      'terms'    => sanitize_text_field($_POST['format']),
    ];
  }

  if (count($args['tax_query']) > 1) {
    $args['tax_query']['relation'] = 'AND';
  }

  $photos = new WP_Query($args);

  if ($photos->have_posts()) :
    ob_start();
    while ($photos->have_posts()) : $photos->the_post();
      get_template_part('template-parts/photo-card');
    endwhile;
    echo ob_get_clean();
  else :
    echo '<p>Aucune photo trouvée.</p>';
  endif;

  wp_die();
}
add_action('wp_ajax_filter_photos', 'motaphoto_filter_photos');
add_action('wp_ajax_nopriv_filter_photos', 'motaphoto_filter_photos');
