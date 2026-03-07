// Navegación móvil + acordeones (menú)

document.addEventListener('click', (e) => {
  const btn = e.target.closest('[data-mobile-menu]');
  if (btn) {
    const panel = document.querySelector('[data-mobile-panel]');
    if (panel) panel.classList.toggle('hidden');
  }

  const acc = e.target.closest('[data-accordion]');
  if (acc) {
    const panel = acc.parentElement?.querySelector('[data-accordion-panel]');
    if (!panel) return;

    const isOpen = !panel.classList.contains('hidden');
    if (isOpen) {
      panel.classList.add('hidden');
    } else {
      panel.classList.remove('hidden');
      panel.classList.add('fade-in');
      setTimeout(() => panel.classList.remove('fade-in'), 300);
    }
  }
});
