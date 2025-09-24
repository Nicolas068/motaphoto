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

  if (closeBtn) {
    closeBtn.addEventListener("click", function () {
      modal.style.display = "none";
    });
  }

  // fermer si clic à l’extérieur
  window.addEventListener("click", function (e) {
    if (e.target === modal) {
      modal.style.display = "none";
    }
  });
});
