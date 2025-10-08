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
