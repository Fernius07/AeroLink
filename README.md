# Práctica 1 - Ingeniería Web: AeroLink Aviación Bilbao

- **Alumno**: Iñigo Fernandez
- **Correo**: fernandez.inigo@opendeusto.es
- **DNI**: 79078777Q
- **Asignatura**: Ingeniería Web (Entrega 1)
- **Archivo de entrega**: `IW-79078777Q-E1.zip`

---

## Descripción del proyecto

Para esta primera entrega he desarrollado la maqueta estática de un sitio web sobre un club de aviación y escuela de pilotos llamado **AeroLink**, ubicado en el Aeropuerto de Bilbao (Loiu).

El sitio web está desarrollado exclusivamente con **HTML5 y CSS3**, sin utilizar librerías externas ni JavaScript, siguiendo las pautas de la asignatura.

La web permite consultar la información de la escuela, las rutas de vuelo turístico por la costa vasca y los 4 modelos de avionetas disponibles, con sus especificaciones técnicas reales, fotografías y planos de 3 vistas.

---

## Estructura de páginas

El sitio cuenta con 4 páginas enlazadas entre sí mediante el menú superior y enlaces en el contenido:

1. **`index.html` (Portada)**:
   - Presentación de la escuela y base en el aeropuerto de Bilbao.
   - Resumen de los 4 aviones de la flota con acceso a sus fichas.
   - Rutas turísticas populares (Gaztelugatxe, San Sebastián y Santander).
   - Datos del aeropuerto y formato del parte meteorológico (METAR).

2. **`flota.html` (Catálogo de la flota)**:
   - Presentación de las 4 avionetas organizadas en una cuadrícula de 2x2.
   - Tabla comparativa con los datos de rendimiento, motor, plazas y velocidad.
   - Glosario de términos aeronáuticos (POH, KTAS, MTOW, VFR/IFR).

3. **`detalle.html` (Fichas técnicas detalladas)**:
   - Ficha completa de cada uno de los 4 aviones con sus datos reales del manual de vuelo (POH):
     1. Cessna 172S Skyhawk SP (`EC-MRX`)
     2. Piper PA-28-181 Archer III (`EC-JMC`)
     3. Diamond DA40 NG Star (`EC-LRF`)
     4. Tecnam P2002 Sierra (`EC-LPI`)
   - Cada avión incluye 3 imágenes: foto exterior real, foto de la cabina de mandos y plano técnico acotado de 3 vistas.

4. **`formulario.html` (Formulario de reservas y contacto)**:
   - Formulario estructurado en bloques (`fieldset` y `legend`).
   - Campos de datos personales con validación básica de HTML5 (`required`, tipos `email`, `tel`, `date`).
   - Opciones específicas para la Escuela de Vuelo (cursos de piloto) y para Vuelos Turísticos (rutas costeras).
   - Selección de avión preferido con lista de sugerencias (`datalist`), número de acompañantes, subida de archivo y comentarios.

---

## Organización de archivos

```text
├── index.html
├── flota.html
├── detalle.html
├── formulario.html
├── url_sitio.txt           (Enlace a la web desplegada en Vercel)
├── README.md
├── empaquetar_entrega.ps1  (Script para crear el zip de entrega)
│
├── css/
│   └── styles.css          (Hoja de estilos propia con diseño responsive)
│
└── img/
    ├── logo.svg            (Logotipo)
    ├── hero-bilbao.jpg     (Foto del aeropuerto de Bilbao)
    ├── hangar.jpg          (Foto del hangar)
    ├── cessna172.jpg, cessna172_cabina.jpg, cessna172_plano.jpg
    ├── piper-pa28.jpg, piper_pa28_cabina.jpg, piper_pa28_plano.jpg
    ├── diamond-da40.jpg, diamond_da40_cabina.jpg, diamond_da40_plano.jpg
    └── tecnam_p2002.jpg, tecnam_p2002_cabina.jpg, tecnam_p2002_plano.jpg
```

---

## Cómo generar el archivo comprimido

Para crear el archivo `.zip` con el nombre solicitado para la entrega (`IW-79078777Q-E1.zip`), se puede ejecutar en PowerShell:

```powershell
.\empaquetar_entrega.ps1
```

El script revisa que todos los archivos necesarios existan y genera el archivo comprimido en la raíz del proyecto.
