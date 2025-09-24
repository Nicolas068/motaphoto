<!-- Modal Contact -->
<div id="contact-modal" class="modal-overlay">
  <div class="modal-content">
    <?php echo do_shortcode('[contact-form-7 id="66927a4" title="Contact form 1"]'); ?>
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