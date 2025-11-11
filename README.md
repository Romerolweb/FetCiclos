# FetCiclos

Sistema de Gestión de Ciclos Propedéuticos

## Descripción

FetCiclos es una aplicación web desarrollada con Node.js que utiliza el patrón de arquitectura MVC (Model-View-Controller) para gestionar ciclos propedéuticos educativos. La aplicación permite crear, leer, actualizar y eliminar información sobre ciclos educativos.

## Tecnologías

- **Node.js 24**: Entorno de ejecución de JavaScript
- **Express.js 5**: Framework web para Node.js
- **EJS**: Motor de plantillas para vistas
- **MySQL2**: Cliente MySQL para Node.js
- **dotenv**: Gestión de variables de entorno
- **Nodemon**: Herramienta de desarrollo para reinicio automático

## Estructura del Proyecto (MVC)

```
FetCiclos/
├── src/
│   ├── models/          # Modelos de datos
│   │   └── Cycle.js     # Modelo de Ciclo
│   ├── views/           # Vistas EJS
│   │   ├── cycles/      # Vistas de ciclos
│   │   ├── partials/    # Componentes reutilizables
│   │   ├── index.ejs    # Página principal
│   │   ├── 404.ejs      # Página de error 404
│   │   └── error.ejs    # Página de error general
│   ├── controllers/     # Controladores
│   │   └── CycleController.js
│   ├── routes/          # Definición de rutas
│   │   ├── index.js     # Rutas principales
│   │   └── cycles.js    # Rutas de ciclos
│   └── config/          # Configuración
│       └── database.js  # Configuración de base de datos
├── public/              # Archivos estáticos
│   ├── css/            # Hojas de estilo
│   ├── js/             # JavaScript del cliente
│   └── images/         # Imágenes
├── db/                  # Archivos de base de datos
├── server.js            # Archivo principal del servidor
├── .env                 # Variables de entorno (no en git)
├── .env.example         # Ejemplo de variables de entorno
└── package.json         # Dependencias del proyecto
```

## Requisitos Previos

- Node.js 24 o superior
- MySQL Server 5.7 o superior
- npm o yarn

## Instalación

1. Clonar el repositorio:
```bash
git clone https://github.com/Romerolweb/FetCiclos.git
cd FetCiclos
```

2. Instalar dependencias:
```bash
npm install
```

3. Configurar variables de entorno:
```bash
cp .env.example .env
```

Editar el archivo `.env` con tus credenciales de base de datos:
```
PORT=3000
NODE_ENV=development
DB_HOST=localhost
DB_USER=tu_usuario
DB_PASSWORD=tu_contraseña
DB_NAME=ciclos_propedeuticos_fet
```

4. Crear la base de datos:
```sql
CREATE DATABASE ciclos_propedeuticos_fet;
USE ciclos_propedeuticos_fet;

CREATE TABLE cycles (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  duration INT NOT NULL,
  start_date DATE NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

## Uso

### Modo Desarrollo

Para iniciar el servidor en modo desarrollo con reinicio automático:

```bash
npm run dev
```

El servidor estará disponible en `http://localhost:3000`

### Modo Producción

Para iniciar el servidor en modo producción:

```bash
npm start
```

## Características

- ✅ CRUD completo de ciclos propedéuticos
- ✅ Arquitectura MVC clara y organizada
- ✅ Interfaz de usuario responsiva
- ✅ Validación de formularios
- ✅ Gestión de errores
- ✅ Variables de entorno para configuración
- ✅ Estilos CSS modernos

## Scripts Disponibles

- `npm start`: Inicia el servidor en modo producción
- `npm run dev`: Inicia el servidor en modo desarrollo con nodemon

## Rutas de la Aplicación

- `GET /`: Página de inicio
- `GET /cycles`: Lista todos los ciclos
- `GET /cycles/create`: Formulario para crear un ciclo
- `POST /cycles`: Crear un nuevo ciclo
- `GET /cycles/:id`: Ver detalles de un ciclo
- `GET /cycles/:id/edit`: Formulario para editar un ciclo
- `PUT /cycles/:id`: Actualizar un ciclo
- `DELETE /cycles/:id`: Eliminar un ciclo

## Contribuir

Las contribuciones son bienvenidas. Por favor:

1. Fork el proyecto
2. Crea una rama para tu característica (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## Licencia

Este proyecto está bajo la Licencia GPL v3. Ver el archivo `LICENSE` para más detalles.

## Autor

Sebastian Romero

## Soporte

Para reportar problemas o solicitar características, por favor abre un issue en el repositorio de GitHub.