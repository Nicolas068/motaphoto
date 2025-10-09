

// MODALE CONTACT
document.addEventListener("DOMContentLoaded", function () {
  const modal = document.getElementById("contact-modal");

  // --- Récupère la ref sur les pages photo ---
let currentRef = "";
const photoRef = document.querySelector(".photo-ref");
if (photoRef) currentRef = photoRef.textContent.trim();


  // --- Transforme tous les liens vers /contact/ en déclencheurs ---
  document.querySelectorAll('a[href*="contact"]').forEach(link => {
    link.classList.add("open-contact");
    link.setAttribute("href", "#");
  });

  // --- Ouvre la modale ---
  document.querySelectorAll(".open-contact").forEach(btn => {
    btn.addEventListener("click", e => {
      e.preventDefault();
      const refField = modal.querySelector("#photo-reference");
      const ref = e.currentTarget.dataset.ref || currentRef || "";
      if (refField) refField.value = ref;
      modal.style.display = "block";
    });
  });

  // --- Ferme la modale ---
  window.addEventListener("click", e => {
    if (e.target === modal) modal.style.display = "none";
  });
});




// menu hamburger

document.addEventListener("DOMContentLoaded", function () {
  const toggle = document.querySelector(".menu-toggle");
  const menu = document.querySelector(".my-menu-principal");

  if (toggle && menu) {
    toggle.addEventListener("click", function () {
      menu.classList.toggle("active");

      // change l'icône
      toggle.textContent = menu.classList.contains("active") ? "✖" : "☰";
    });
  }
});

// survol miniature

 document.addEventListener("DOMContentLoaded", function() {
  const navLinks = document.querySelectorAll(".photo-navigation a");

  navLinks.forEach(link => {
    link.addEventListener("mouseenter", function() {
      const thumb = this.getAttribute("data-thumb");
      if (thumb) {
        let preview = document.createElement("div");
        preview.classList.add("thumb-preview");
        preview.style.position = "absolute";
        preview.style.bottom = "120%";
        preview.style.left = "50%";
        preview.style.transform = "translateX(-50%)";
        preview.style.width = "80px";
        preview.style.height = "60px";
        preview.style.backgroundImage = `url(${thumb})`;
        preview.style.backgroundSize = "cover";
        preview.style.border = "1px solid #ccc";
        this.appendChild(preview);
      }
    });

    link.addEventListener("mouseleave", function() {
      const preview = this.querySelector(".thumb-preview");
      if (preview) preview.remove();
    });
  });
});


// affichage photo front page 

jQuery(document).ready(function($) {
  let page = 1;
  let currentFilters = {
    categorie: '',
    format: '',
    ordre: 'DESC'
  };

  function loadPhotos(reset = false) {
    const data = {
      action: 'filter_photos',
      page: page,
      categorie: currentFilters.categorie,
      format: currentFilters.format,
      ordre: currentFilters.ordre
    };

    $.ajax({
      url: loadmore.ajaxurl,
      type: 'POST',
      data: data,
      beforeSend: function() {
        if (reset) $('#photo-grid').css('opacity', '0.5');
      },
      success: function(response) {
        if (reset) {
          $('#photo-grid').html(response);
          $('#photo-grid').css('opacity', '1');
          $('#load-more').show();        // réaffiche le bouton
        } else {
          if ($.trim(response) === '') {
            $('#load-more').hide();      // plus de résultats
          } else {
            $('#photo-grid').append(response);
          }
        }
      }
    });
  }

  // --- Filtres --- //
  $('#photo-filters select').on('change', function() {
    currentFilters = {
      categorie: $('#filter-categorie').val(),
      format: $('#filter-format').val(),
      ordre: $('#filter-ordre').val()
    };
    page = 1;             // reset pagination
    loadPhotos(true);     // recharge proprement
  });

  // --- Charger plus --- //
  $('#load-more').on('click', function(e) {
    e.preventDefault();

    // si on vient juste d'appliquer un filtre, on veut d’abord charger la page 2
    page++;
    loadPhotos(false);
  });
});


// Lightbox

