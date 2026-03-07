(function () {
  const data = window.__BUILDER__;
  if (!data) return;

  const els = {
    pack: document.getElementById('pack'),
    baseType: document.getElementById('baseType'),
    ingredients: Array.from(document.querySelectorAll('.ingredient')),
    addIceCream: document.getElementById('addIceCream'),
    salty: document.getElementById('salty'),
    addEgg: document.getElementById('addEgg'),
    note: document.getElementById('note'),
    savedName: document.getElementById('savedName'),

    includedCount: document.getElementById('includedCount'),
    selectedCount: document.getElementById('selectedCount'),
    extraCount: document.getElementById('extraCount'),
    total: document.getElementById('total'),
    summaryLine: document.getElementById('summaryLine'),
  };

  function getPackInfo() {
    const opt = els.pack.options[els.pack.selectedIndex];
    return {
      id: opt.value,
      included: Number(opt.dataset.included || 0),
      basePrice: Number(opt.dataset.baseprice || 0),
      name: opt.textContent.split('—')[0].trim(),
    };
  }

  function selectedIngredients() {
    const selected = els.ingredients
      .filter((x) => x.checked)
      .map((x) => ({ group: x.dataset.group, name: x.value }));
    return selected;
  }

  function hasAnyOf(names) {
    const sel = selectedIngredients().map((x) => x.name);
    return names.some((n) => sel.includes(n));
  }

  function compute() {
    // Habilitar huevo solo si es salada
    const salty = !!els.salty.checked;
    els.addEgg.disabled = !salty;
    if (!salty) els.addEgg.checked = false;

    const pack = getPackInfo();
    const selected = selectedIngredients();

    const selectedCount = selected.length;
    const extras = Math.max(0, selectedCount - pack.included);

    let total = pack.basePrice;
    total += extras * data.extras.ingredienteExtra;

    if (els.addIceCream.checked) total += data.extras.agregarNieve;
    if (els.addEgg.checked) total += data.extras.huevoSalada;

    // Mensaje de regla Nutella
    const nutella = hasAnyOf(['Nutella']);
    const philadelphia = hasAnyOf(['Philadelphia']);
    const mermelada = hasAnyOf(['Mermelada de zarzamora', 'Mermelada de fresa']);

    let autoMsg = '';
    if (nutella && !(philadelphia || mermelada)) {
      autoMsg = '· Auto: rayado Hershey\'s + azúcar glass';
    }

    const baseLabel = els.baseType.options[els.baseType.selectedIndex].textContent;

    const summary = `${baseLabel} · ${pack.name} · ${selectedCount} ingrediente(s) seleccionados${extras ? ` · ${extras} extra` : ''} ${autoMsg}`.trim();

    els.includedCount.textContent = String(pack.included);
    els.selectedCount.textContent = String(selectedCount);
    els.extraCount.textContent = String(extras);
    els.total.textContent = `$${total.toFixed(2)}`;
    els.summaryLine.textContent = summary;

    const displayName = `${baseLabel} personalizada`;

    return {
      baseType: els.baseType.value,
      pack: { id: pack.id, included: pack.included, basePrice: pack.basePrice },
      ingredients: selected,
      extras: {
        addIceCream: !!els.addIceCream.checked,
        salty,
        addEgg: !!els.addEgg.checked,
      },
      note: (els.note.value || '').trim(),
      total,
      displayName,
      summaryLine: summary,
      savedName: (els.savedName?.value || '').trim(),
    };
  }

  function refresh() {
    compute();
  }

  // Listeners
  ['change', 'input'].forEach((evt) => {
    document.addEventListener(evt, (e) => {
      if (
        e.target === els.pack ||
        e.target === els.baseType ||
        e.target === els.addIceCream ||
        e.target === els.salty ||
        e.target === els.addEgg ||
        e.target === els.note ||
        e.target === els.savedName ||
        e.target.classList?.contains('ingredient')
      ) {
        refresh();
      }
    });
  });

  window.MareeBuilder = {
    submitTo(form) {
      const payload = compute();
      const input = form.querySelector('input[name="payload"]');
      if (input) input.value = JSON.stringify(payload);
      return true;
    },
  };

  // init
  refresh();
})();
