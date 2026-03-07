# Mareé – Prototipo navegable (Cliente)

Prototipo **sin React** usando **Node + Express + EJS**.

## Requisitos
- Node.js 18+ (recomendado)

## Instalar
```bash
npm install
```

## Correr
```bash
npm run dev
# o
npm start
```

Abre: http://localhost:3000

## Rutas principales (cliente)
- `/` Inicio
- `/menu` Menú
- `/producto/:id` Detalle de producto
- `/armar-crepa` Configurador “Arma tu crepa” (cálculo de extras + guardar “Mi crepa”)
- `/mi-crepa` Mis crepas guardadas
- `/carrito` Carrito
- `/checkout` Confirmación de pedido (demo)
- `/pedido/:id` Vista pedido (demo)
- `/fidelidad` Fidelidad (demo)
- `/perfil` Perfil (demo)

## Notas
- Datos de menú de ejemplo en `data/menu.js`.
- Carrito y “Mis crepas” se guardan en **sesión** (no BD).
- Animaciones conservadas en CSS (`public/css/app.css`) + transiciones Tailwind.
