const express = require('express');
const router = express.Router();

const menu = require('../data/menu');

function formatMoney(n) {
  return `$${Number(n || 0).toFixed(2)}`;
}

function cartTotal(cart) {
  return cart.reduce((sum, item) => sum + Number(item.total || 0), 0);
}

router.get('/', (req, res) => {
  res.render('home', {
    title: 'Inicio',
    customer: req.session.customer,
  });
});

router.get('/menu', (req, res) => {
  res.render('menu', {
    title: 'Menú',
    categories: menu.categories,
    formatMoney,
    customer: req.session.customer,
  });
});

router.get('/producto/:id', (req, res) => {
  const id = req.params.id;

  // Buscar producto por id en todo el menú
  let found = null;
  for (const cat of menu.categories) {
    for (const group of cat.groups) {
      for (const item of group.items) {
        if (item.id === id) {
          found = { ...item, category: cat.name, group: group.name };
          break;
        }
      }
      if (found) break;
    }
    if (found) break;
  }

  if (!found) {
    return res.status(404).render('not-found', {
      title: 'No encontrado',
      message: 'No se encontró el producto.',
      customer: req.session.customer,
    });
  }

  res.render('producto', {
    title: found.name,
    product: found,
    formatMoney,
    customer: req.session.customer,
  });
});

router.post('/carrito/agregar', (req, res) => {
  const { id, name, unitPrice, qty, note } = req.body;
  const quantity = Math.max(1, parseInt(qty || '1', 10));
  const price = Number(unitPrice || 0);

  req.session.cart.push({
    id,
    name,
    qty: quantity,
    unitPrice: price,
    note: note || '',
    total: price * quantity,
  });

  res.redirect('/carrito');
});

router.get('/armar-crepa', (req, res) => {
  res.render('armar-crepa', {
    title: 'Arma tu crepa',
    builder: menu.builder,
    customer: req.session.customer,
  });
});

router.post('/armar-crepa/agregar-carrito', (req, res) => {
  const payload = req.body.payload ? JSON.parse(req.body.payload) : null;
  if (!payload) return res.redirect('/armar-crepa');

  req.session.cart.push({
    id: `custom-${Date.now()}`,
    name: payload.displayName,
    qty: 1,
    unitPrice: payload.total,
    note: payload.note || '',
    total: payload.total,
    meta: payload,
  });

  res.redirect('/carrito');
});

router.post('/armar-crepa/guardar', (req, res) => {
  const payload = req.body.payload ? JSON.parse(req.body.payload) : null;
  if (!payload) return res.redirect('/armar-crepa');

  req.session.savedCrepes.push({
    id: `saved-${Date.now()}`,
    name: payload.savedName || payload.displayName,
    meta: payload,
  });

  res.redirect('/mi-crepa');
});

router.get('/mi-crepa', (req, res) => {
  res.render('mi-crepa', {
    title: 'Mis crepas',
    saved: req.session.savedCrepes,
    formatMoney,
    customer: req.session.customer,
  });
});

router.post('/mi-crepa/agregar-carrito', (req, res) => {
  const { savedId } = req.body;
  const found = (req.session.savedCrepes || []).find((x) => x.id === savedId);
  if (!found) return res.redirect('/mi-crepa');

  const total = Number(found.meta?.total || 0);
  req.session.cart.push({
    id: `from-saved-${Date.now()}`,
    name: found.name,
    qty: 1,
    unitPrice: total,
    note: found.meta?.note || '',
    total,
    meta: found.meta,
  });

  res.redirect('/carrito');
});

router.get('/carrito', (req, res) => {
  res.render('carrito', {
    title: 'Carrito',
    cart: req.session.cart,
    total: cartTotal(req.session.cart),
    formatMoney,
    customer: req.session.customer,
  });
});

router.post('/carrito/eliminar', (req, res) => {
  const { index } = req.body;
  const idx = parseInt(index, 10);
  if (!Number.isNaN(idx) && idx >= 0 && idx < req.session.cart.length) {
    req.session.cart.splice(idx, 1);
  }
  res.redirect('/carrito');
});

router.post('/carrito/limpiar', (req, res) => {
  req.session.cart = [];
  res.redirect('/carrito');
});

router.get('/checkout', (req, res) => {
  res.render('checkout', {
    title: 'Checkout',
    cart: req.session.cart,
    total: cartTotal(req.session.cart),
    formatMoney,
    customer: req.session.customer,
  });
});

router.post('/checkout/confirmar', (req, res) => {
  // Prototipo: “crea” pedido y vacía carrito.
  const orderId = `P-${Math.floor(Math.random() * 90000) + 10000}`;
  const total = cartTotal(req.session.cart);

  req.session.lastOrder = {
    id: orderId,
    createdAt: new Date().toISOString(),
    status: 'pendiente',
    total,
    items: req.session.cart,
  };

  req.session.cart = [];
  res.redirect(`/pedido/${orderId}`);
});

router.get('/pedido/:id', (req, res) => {
  const id = req.params.id;
  const order = req.session.lastOrder;
  if (!order || order.id !== id) {
    return res.status(404).render('not-found', {
      title: 'Pedido no encontrado',
      message: 'No encontramos ese pedido en esta sesión (prototipo).',
      customer: req.session.customer,
    });
  }

  res.render('pedido', {
    title: `Pedido ${id}`,
    order,
    formatMoney,
    customer: req.session.customer,
  });
});

router.get('/fidelidad', (req, res) => {
  // Prototipo: datos mock (en real vendría de BD y visitas/puntos)
  const mock = {
    puntos: 120,
    visitas: 5,
    nivel: 'Bronce',
    recompensas: [
      { name: 'Café gratis', requirement: '8 visitas', status: 'bloqueada' },
      { name: 'Crepa clásica', requirement: '12 visitas', status: 'bloqueada' },
      { name: 'Upgrade de leche', requirement: '150 puntos', status: 'disponible' },
    ],
  };

  res.render('fidelidad', {
    title: 'Fidelidad',
    loyalty: mock,
    customer: req.session.customer,
  });
});

router.get('/perfil', (req, res) => {
  res.render('perfil', {
    title: 'Perfil',
    customer: req.session.customer,
  });
});

router.post('/perfil', (req, res) => {
  const { name, phone } = req.body;
  req.session.customer = {
    name: (name || 'Invitado').trim() || 'Invitado',
    phone: (phone || '').trim() || null,
  };
  res.redirect('/perfil');
});

module.exports = router;
