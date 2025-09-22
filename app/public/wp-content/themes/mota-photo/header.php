<!doctype html>
<html lang="fr">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Mota Photo</title>
<?php wp_head(); ?>
    </head>
<body>
    <header id="site-header">
        <a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="logo-img">
         <img class="logo-img" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/logo.png" alt="Logo du site">
<?php 
 wp_nav_menu ( array (
 'theme_location' => 'menu-principal' ,
 'menu_class' => 'my-menu-principal', 
 ) ); ?>
    </header>