<!-- Modal Contact -->
<div id="contact-modal" class="modal-overlay">
  <div class="modal-content">
    <?php echo do_shortcode('[contact-form-7 id="66927a4" title="Contact form 1"]'); ?>
  </div>
</div>

<!-- Lightbox -->
 
<div id="lightbox" class="lightbox">
  <div class="lightbox-overlay"></div>

  <div class="lightbox-content">
    <button class="lightbox-close">&times;</button>

    <div class="lightbox-image-container">
      <img id="lightbox-image" src="" alt="">
    </div>

    <div class="lightbox-nav">
      <button id="lightbox-prev" class="nav-btn">← Précédente</button>
      <button id="lightbox-next" class="nav-btn">Suivante →</button>
    </div>

    <div class="lightbox-info">
      <span id="lightbox-ref" class="lightbox-ref"></span>
      <span id="lightbox-cat" class="lightbox-cat"></span>
    </div>
  </div>
</div>


<!-- footer -->

<?php 
 wp_nav_menu ( array (
 'theme_location' => 'footer-menu' ,
 'menu_class' => 'my-footer-menu', 
 ) ); 
 wp_footer(); ?>

</body>
</html>