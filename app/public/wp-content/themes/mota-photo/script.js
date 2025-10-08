

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

document.addEventListener("DOMContentLoaded", function () {
  let page = 1; // variable locale, pas globale
  const btn = document.querySelector('#load-more');
  const grid = document.querySelector('#photo-grid');

  if (!btn || !grid) return; // si pas de bouton ou de grille, on arrête

  btn.addEventListener('click', () => {
    page++;
    const url = `${loadmore.ajaxurl}?action=load_more_photos&page=${page}`;
    fetch(url)
      .then(res => res.text())
      .then(html => {
        if (html.trim()) {
          grid.insertAdjacentHTML('beforeend', html);
        } else {
          btn.style.display = 'none';
        }
      });
  });
});
