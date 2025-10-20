document.addEventListener("DOMContentLoaded", () => {
  const modal = document.getElementById("contact-modal");
  if (!modal) return;

  let currentRef = "";

 // récupère la ref sauf sur la page d'accueil (home ou front-page)
if (
  !document.body.classList.contains("home") &&
  !document.body.classList.contains("front-page")
) {
  const photoRef = document.querySelector(".photo-ref");
  if (photoRef) currentRef = photoRef.textContent.trim();
}

  // transforme les liens contact en déclencheurs
  document.querySelectorAll('a[href*="contact"]').forEach(link => {
    link.classList.add("open-contact");
    link.setAttribute("href", "#");
  });

  // ouvre la modale
  document.querySelectorAll(".open-contact").forEach(btn => {
    btn.addEventListener("click", e => {
      e.preventDefault();
      const refField = modal.querySelector("#photo-reference");
      const ref = e.currentTarget.dataset.ref || currentRef || "";
      if (refField) refField.value = ref;
      modal.style.display = "block";
    });
  });

  // ferme en cliquant à l’extérieur
  window.addEventListener("click", e => {
    if (e.target === modal) modal.style.display = "none";
  });
});


// ==================== MENU HAMBURGER ====================
document.addEventListener("DOMContentLoaded", () => {
  const toggle = document.querySelector(".menu-toggle");
  const menu = document.querySelector(".my-menu-principal");
  if (!toggle || !menu) return;

  toggle.addEventListener("click", () => {
    menu.classList.toggle("active");
    toggle.textContent = menu.classList.contains("active") ? "✖" : "☰";
  });
});


// ==================== SURVOL MINIATURE ====================
document.addEventListener("DOMContentLoaded", () => {
  const navLinks = document.querySelectorAll(".photo-navigation a");
  navLinks.forEach(link => {
    link.addEventListener("mouseenter", function () {
      const thumb = this.getAttribute("data-thumb");
      if (!thumb) return;
      const preview = document.createElement("div");
      preview.className = "thumb-preview";
      Object.assign(preview.style, {
        position: "absolute",
        bottom: "120%",
        left: "50%",
        transform: "translateX(-50%)",
        width: "80px",
        height: "60px",
        backgroundImage: `url(${thumb})`,
        backgroundSize: "cover",
        border: "1px solid #ccc",
      });
      this.appendChild(preview);
    });

    link.addEventListener("mouseleave", function () {
      const preview = this.querySelector(".thumb-preview");
      if (preview) preview.remove();
    });
  });
});


// ==================== FILTRES ET CHARGER PLUS ====================

(function ($) {
  let page = 1;
  let currentFilters = { categorie: '', format: '', ordre: 'DESC' };

  // --- Lightbox réactive automatiquement sur contenu dynamique ---
  $(document).on('click', '.icon-fullscreen', function (e) {
    e.preventDefault();
    const link = $(this).attr('href');
    const container = $(this).closest('.photo-card, .photo-item');
    const ref = container.find('.photo-ref').text().trim();
    const cat = container.find('.photo-category').text().trim();

    const lightbox = $('#lightbox');
    lightbox.find('#lightbox-image').attr('src', link);
    lightbox.find('#lightbox-ref').text(ref ? `Réf : ${ref}` : '');
    lightbox.find('#lightbox-cat').text(cat);
    lightbox.addClass('active');
  });

  // --- Chargement AJAX ---
  function loadPhotos(reset = false) {
    const data = {
      action: 'filter_photos',
      page: page,
      ...currentFilters
    };

    $.ajax({
      url: loadmore.ajaxurl,
      type: 'POST',
      data: data,
      beforeSend: function () {
        if (reset) $('#photo-grid').css('opacity', '0.5');
      },
      success: function (response) {
        if (reset) {
          $('#photo-grid').html(response).css('opacity', '1');
          $('.no-more-photos').remove();
          ensureLoadMore();
        } else {
          if ($.trim(response) === '') {
            $('#load-more').remove();
            if (!$('.no-more-photos').length) {
              $('.load-more-container').append('<p class="no-more-photos">Aucune photo trouvée.</p>');
            }
          } else {
            $('#photo-grid').append(response);
          }
        }
      }
    });
  }

  function ensureLoadMore() {
    if (!$('#load-more').length) {
      $('.load-more-container .no-more-photos').remove();
      $('.load-more-container').append('<button id="load-more">Charger plus</button>');
      initLoadMore();
    } else {
      $('#load-more').show().prop('disabled', false).text('Charger plus');
    }
  }

  function initLoadMore() {
    const btn = document.querySelector('#load-more');
    const grid = document.querySelector('#photo-grid');
    if (!btn || !grid || typeof loadmore === 'undefined') return;

    const newBtn = btn.cloneNode(true);
    btn.parentNode.replaceChild(newBtn, btn);

    newBtn.addEventListener('click', function () {
      newBtn.disabled = true;
      newBtn.textContent = 'Chargement...';

      const data = new URLSearchParams({
        action: 'filter_photos',
        page: page + 1,
        categorie: currentFilters.categorie || '',
        format: currentFilters.format || '',
        ordre: currentFilters.ordre || 'DESC'
      });

      fetch(loadmore.ajaxurl, {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
        body: data,
        credentials: 'same-origin'
      })
        .then(res => res.text())
        .then(html => {
          const content = html.trim();
          if (content !== '' && !content.includes('Aucune photo')) {
            grid.insertAdjacentHTML('beforeend', content);
            page++;
            newBtn.disabled = false;
            newBtn.textContent = 'Charger plus';
          } else {
            newBtn.remove();
            if (!$('.no-more-photos').length) {
              $('.load-more-container').append('<p class="no-more-photos">Aucune photo trouvée.</p>');
            }
          }
        })
        .catch(err => {
          console.error('Erreur AJAX :', err);
          newBtn.disabled = false;
          newBtn.textContent = 'Charger plus';
        });
    });
  }

  // --- Filtres ---
  $('#photo-filters select').on('change', function () {
    currentFilters = {
      categorie: $('#filter-categorie').val(),
      format: $('#filter-format').val(),
      ordre: $('#filter-ordre').val()
    };
    page = 1;
    loadPhotos(true);
  });

  
  $(function () {
    initLoadMore();
  });

  // --- Fermeture Lightbox ---
  $(document).on('click', '.lightbox-close, .lightbox-overlay', function () {
    $('#lightbox').removeClass('active');
  });
})(jQuery);

