<!-- Modal Contact -->
<div id="contact-modal" class="modal-overlay">
  <div class="modal-content">
    <span class="modal-close">&times;</span>
    <h2>Contactez-nous</h2>
    <?php echo do_shortcode('[contact-form-7 id="123" title="Formulaire de contact"]'); ?>
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