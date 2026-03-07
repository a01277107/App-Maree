const express = require('express');
const router = express.Router();

const menu = require('../data/menu');

function formatMoney(n) {
  return `$${Number(n || 0).toFixed(2)}`;
}

router.get('/', (req, res) => {
  const stats = {
    pedidosHoy: 18,
    pendientes: 4,
    clientesMes: 126,
    genero: { mujer: 72, hombre: 48 },
    topProducto: 'Crepa Oreo',
    topIngrediente: 'Nutella',
  };

  res.render('admin-dashboard', {
    title: 'Admin',
    path: '/admin',
    stats,
  });
});

router.get('/pedidos', (req, res) => {
  const pedidos = [
    { id: 'P-10342', fecha: 'Hoy 10:24', estado: 'pendiente', total: 214, cliente: 'Ana (QR)' },
    { id: 'P-10355', fecha: 'Hoy 10:41', estado: 'preparando', total: 155, cliente: 'Cliente anónimo' },
    { id: 'P-10377', fecha: 'Hoy 11:02', estado: 'listo', total: 99, cliente: 'Carlos (QR)' },
    { id: 'P-10388', fecha: 'Hoy 11:10', estado: 'entregado', total: 160, cliente: 'Sofía (QR)' },
  ];

  res.render('admin-pedidos', {
    title: 'Pedidos',
    path: '/admin/pedidos',
    pedidos,
    formatMoney,
  });
});

router.get('/menu', (req, res) => {
  res.render('admin-menu', {
    title: 'Menú',
    path: '/admin/menu',
    categories: menu.categories,
    formatMoney,
  });
});

router.get('/promociones', (req, res) => {
  const promos = [
    { name: '2x1 en Frappes', description: 'Aplica en frappes seleccionados (16oz).', code: 'FRAP2X1', range: 'Mar 1–Mar 31', segment: 'Frecuentes' },
    { name: 'Cumpleaños', description: '10% off en crepas dulces.', code: 'BDAY10', range: 'Válido 7 días', segment: 'Cumpleaños' },
    { name: 'Primera visita', description: 'Café americano gratis con compra.', code: 'HOLA-CAFE', range: 'Semana actual', segment: 'Nuevos' },
    { name: 'Saladas', description: 'Ingrediente extra sin costo (1) en crepas saladas.', code: 'SALADA15', range: 'Mar 5–Mar 20', segment: 'Interés saladas' },
  ];

  res.render('admin-promociones', {
    title: 'Promociones',
    path: '/admin/promociones',
    promos,
  });
});

router.get('/reportes', (req, res) => {
  const report = {
    clientesGenero: { mujer: 72, hombre: 48, otro: 6 },
    topProducto: { nombre: 'Crepa Oreo', unidades: 63 },
    topIngredientes: [
      { nombre: 'Nutella', usos: 120 },
      { nombre: 'Fresa', usos: 96 },
      { nombre: 'Oreo', usos: 78 },
      { nombre: 'Lechera', usos: 70 },
    ],
    valoracion: { promedio: 4.6, total: 84 },
  };

  res.render('admin-reportes', {
    title: 'Reportes',
    path: '/admin/reportes',
    report,
  });
});

module.exports = router;
