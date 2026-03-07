// Datos de menú de ejemplo (representativos). Ajusta libremente.
// Basado en el menú proporcionado por Mareé (crepas/waffles, bebidas, extras).
module.exports = {
  categories: [
    {
      id: 'crepas',
      name: 'Crepas / Waffles',
      groups: [
        {
          id: 'arma-tu-crepa',
          name: 'Arma tu crepa / waffle',
          items: [
            { id: 'build-1', name: '1 ingrediente', price: 99, type: 'builder' },
            { id: 'build-2', name: '2 ingredientes', price: 105, type: 'builder' },
            { id: 'build-3', name: '3 ingredientes', price: 109, type: 'builder' }
          ]
        },
        {
          id: 'especiales',
          name: 'Especiales',
          items: [
            { id: 'ferrero', name: 'Ferrero Rocher', price: 155, desc: 'Nutella + fresa o plátano + Ferrero' },
            { id: 'oreo', name: 'Oreo', price: 155, desc: 'Nutella + fresa o plátano + Oreo' },
            { id: 'snickers', name: 'Snickers', price: 155, desc: 'Crema de cacahuate + plátano + Snickers' },
            { id: 'maree', name: 'Maréé Crêpe', price: 160, desc: 'Aderezo de la casa + mezcla 3 quesos + jamón + peperoni + salami' }
          ]
        },
        {
          id: 'saladas',
          name: 'Saladas',
          items: [
            { id: 'poblana', name: 'Poblana', price: 160, desc: 'Pollo en crema de chile poblano + mezcla de 3 quesos' },
            { id: 'rajas', name: 'Rajas', price: 160, desc: 'Rajas de chile poblano con elote + cebolla + mezcla de tres quesos' },
            { id: 'rosendo', name: 'Rosendo Nieblas', price: 170, desc: 'Pesto + mozzarella + arúgula + jamón serrano + parmesano + pistache' }
          ]
        }
      ]
    },
    {
      id: 'bebidas',
      name: 'Bebidas',
      groups: [
        {
          id: 'calientes',
          name: 'Calientes',
          items: [
            { id: 'americano', name: 'Americano', price: 65 },
            { id: 'cappuccino', name: 'Cappuccino', price: 75 },
            { id: 'latte', name: 'Latte', price: 75 },
            { id: 'chai-latte', name: 'Chai Latte', price: 80 },
            { id: 'chocolate', name: 'Chocolate caliente', price: 80 }
          ]
        },
        {
          id: 'frias',
          name: 'Frías',
          items: [
            { id: 'iced-latte', name: 'Iced Latte', price: 85 },
            { id: 'matcha-frio', name: 'Matcha frío', price: 89 },
            { id: 'mocha-frio', name: 'Mocha frío', price: 89 }
          ]
        },
        {
          id: 'frappes',
          name: 'Frappes',
          items: [
            { id: 'frappuccino', name: 'Frappuccino', price: 99 },
            { id: 'oreo-frappe', name: 'Oreo', price: 99 },
            { id: 'nutella-frappe', name: 'Nutella', price: 99 },
            { id: 'matcha-frappe', name: 'Matcha', price: 99 }
          ]
        },
        {
          id: 'infusiones',
          name: 'Infusiones',
          items: [
            { id: 'manzanilla-1', name: 'Manzanilla con moras azules y albahaca', price: 70 },
            { id: 'manzanilla-2', name: 'Manzanilla con zarzamora, frambuesa y jamaica', price: 70 }
          ]
        }
      ]
    }
  ],

  // Para el configurador “Arma tu crepa”
  builder: {
    baseOptions: [
      { id: 'crepa', name: 'Crepa', price: 0 },
      { id: 'waffle', name: 'Waffle', price: 0 }
    ],
    ingredientPacks: [
      { id: 'pack1', name: '1 ingrediente', included: 1, basePrice: 99 },
      { id: 'pack2', name: '2 ingredientes', included: 2, basePrice: 105 },
      { id: 'pack3', name: '3 ingredientes', included: 3, basePrice: 109 }
    ],
    ingredients: {
      fruta: ['Fresa', 'Plátano', 'Manzana verde'],
      untables: ['Nutella', 'Lechera', 'Philadelphia', 'Mermelada de zarzamora', 'Mermelada de fresa', 'Crema de cacahuate', 'Cajeta', 'Miel de maple'],
      toppings: ['Nuez', 'Almendra', 'Arándanos', 'Chispas de chocolate', 'Coco tostado']
    },
    extras: {
      ingredienteExtra: 15,
      agregarNieve: 25,
      huevoSalada: 15
    },
    reglas: {
      // Regla “automática” (solo demostración en UI)
      nutellaAuto: 'Si eliges Nutella, el sistema agrega: rayado Hershey\'s + azúcar glass (excepto si también eliges Philadelphia o mermelada).',
      infusionesNoMod: 'Infusiones no son modificables.',
      huevoSoloSaladas: 'Solo crepas saladas pueden agregar huevo.'
    }
  }
}
