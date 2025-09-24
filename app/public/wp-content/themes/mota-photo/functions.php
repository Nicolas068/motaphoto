<?php
// Charger styles et scripts
function motaphoto_enqueue_assets() {
    // Feuille de style principale
    $style_file = get_stylesheet_directory() . '/style.css';
    wp_enqueue_style(
        'motaphoto-style',
        get_stylesheet_uri(),
        [],
        file_exists($style_file) ? filemtime($style_file) : null
    );

    // Charger script.js
    $script_file = get_stylesheet_directory() . '/script.js';
    wp_enqueue_script(
        'motaphoto-script',
        get_stylesheet_directory_uri() . '/script.js',
        ['jquery'], // dépend de jQuery
        file_exists($script_file) ? filemtime($script_file) : null,
        true // dans le footer
    );
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
