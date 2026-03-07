const express = require('express');
const path = require('path');
const session = require('express-session');

const app = express();

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

app.use(express.static(path.join(__dirname, 'public')));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use(
  session({
    secret: 'maree-prototype-secret',
    resave: false,
    saveUninitialized: true,
  })
);

// Middleware: valores por defecto de sesión
app.use((req, res, next) => {
  res.locals.path = req.path;
  if (!req.session.cart) req.session.cart = [];
  if (!req.session.savedCrepes) req.session.savedCrepes = [];
  if (!req.session.customer) req.session.customer = { name: 'Invitado', phone: null };
  next();
});

const clienteRoutes = require('./routes/cliente');
app.use('/', clienteRoutes);

const adminRoutes = require('./routes/admin');
app.use('/admin', adminRoutes);

const PORT = process.env.PORT || 3002;
app.listen(PORT, '0.0.0.0', () => {
  console.log(`Mareé prototipo corriendo en http://localhost:${PORT}`);
});
