// Modal //

document.addEventListener("DOMContentLoaded", function () {
  const contactLink = document.querySelector('a[href*="contact"]'); // le lien CONTACT du menu
  const modal = document.getElementById("contact-modal");
  const closeBtn = document.querySelector(".modal-close");

  if (contactLink) {
    contactLink.addEventListener("click", function (e) {
      e.preventDefault(); // empêche la navigation
      modal.style.display = "block";
    });
  }

  // fermer si clic à l’extérieur
  window.addEventListener("click", function (e) {
    if (e.target === modal) {
      modal.style.display = "none";
    }
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



