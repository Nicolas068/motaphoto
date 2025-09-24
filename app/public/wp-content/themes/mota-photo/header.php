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
        <div class="header-top">
    <a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="logo-img">
        <img class="logo-img" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/logo.png" alt="Logo du site">
    </a>

    <!-- Bouton hamburger -->
    <button class="menu-toggle" aria-label="Menu mobile">☰</button>
    </div>

    <?php 
    wp_nav_menu( array(
        'theme_location' => 'menu-principal',
        'menu_class'     => 'my-menu-principal',
        'container'      => false, // enlève le <div> automatique
    ) );
    ?>
</header>
