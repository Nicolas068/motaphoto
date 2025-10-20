document.addEventListener('DOMContentLoaded', () => {
  const lightbox = document.getElementById('lightbox');
  if (!lightbox) return;

  const lightboxImage = document.getElementById('lightbox-image');
  const lightboxTitle = document.getElementById('lightbox-title');
  const closeBtn = document.querySelector('.lightbox-close');
  const nextBtn = document.getElementById('lightbox-next');
  const prevBtn = document.getElementById('lightbox-prev');
  const overlay = lightbox.querySelector('.lightbox-overlay');

  let images = Array.from(document.querySelectorAll('.icon-fullscreen'));
  let currentIndex = 0;

function openLightbox(index) {
  const link = images[index];
  if (!link) return;

  const container = link.closest('.photo-card, .photo-item');
  if (!container) return;

  const img = container.querySelector('img');
  const ref = container.querySelector('.photo-ref')?.textContent?.trim() || '';
  const cat = container.querySelector('.photo-category')?.textContent?.trim() || '';

  const lightboxImage = document.getElementById('lightbox-image');
  const refEl = document.getElementById('lightbox-ref');
  const catEl = document.getElementById('lightbox-cat');

  if (!lightboxImage || !refEl || !catEl) return; // évite toute erreur
  if (!img) return;

  lightboxImage.src = link.href;
  refEl.textContent = ref ? `Réf : ${ref}` : '';
  catEl.textContent = cat;

  lightbox.classList.add('active');
  currentIndex = index;
}


  function closeLightbox() {
    lightbox.classList.remove('active');
  }

  function showNext() {
    currentIndex = (currentIndex + 1) % images.length;
    openLightbox(currentIndex);
  }

  function showPrev() {
    currentIndex = (currentIndex - 1 + images.length) % images.length;
    openLightbox(currentIndex);
  }

  function attachLightboxEvents() {
    images = Array.from(document.querySelectorAll('.icon-fullscreen'));
    images.forEach((link, index) => {
      link.addEventListener('click', e => {
        e.preventDefault();
        openLightbox(index);
      });
    });
  }

 
  attachLightboxEvents();

  
  document.addEventListener('ajaxComplete', attachLightboxEvents);

  if (closeBtn) closeBtn.addEventListener('click', closeLightbox);
  if (overlay) overlay.addEventListener('click', closeLightbox);
  if (nextBtn) nextBtn.addEventListener('click', showNext);
  if (prevBtn) prevBtn.addEventListener('click', showPrev);
});
