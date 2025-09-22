<?php
function motaphoto_enqueue_assets() {
    $style_file = get_stylesheet_directory() . '/style.css';
    wp_enqueue_style(
        'mota-photo-style',
        get_stylesheet_uri(),
        [],
        file_exists($style_file) ? filemtime($style_file) : null
    );
}
add_action('wp_enqueue_scripts', 'motaphoto_enqueue_assets');


//ajouter une nouvelle zone de menu à mon thème
// s'il y a plusieurs menus à rajouter, voici le code :
function register_my_menus() {
 register_nav_menus(
 array(
'menu-principal' => __( 'Menu Principal' ), // ton menu du header
 'footer-menu' => __( 'Menu Footer' ),
 )
 );
}
add_action( 'init', 'register_my_menus' );
