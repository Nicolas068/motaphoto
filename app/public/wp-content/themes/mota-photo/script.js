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
