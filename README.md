# Práctica 1 - Ingeniería Web: AeroLink Aviación Bilbao

- **Alumno**: Iñigo Fernandez
- **Correo institucional**: fernandez.inigo@opendeusto.es
- **DNI**: 79078777Q
- **Asignatura**: Ingeniería Web (Grado en Ingeniería Informática)
- **Convocatoria / Entrega**: Entrega 1 – Maquetación y Diseño Web con HTML5 y CSS3
- **Archivo comprimido de entrega**: `IW-79078777Q-E1.zip`
- **Repositorio oficial en GitHub**: [https://github.com/Fernius07/AeroLink](https://github.com/Fernius07/AeroLink)
- **Despliegue en producción (Vercel)**: [https://aero-link-two.vercel.app/](https://aero-link-two.vercel.app/)

---

## 1. Descripción General del Proyecto

**AeroLink** es el sitio web oficial de un aeroclub y escuela de pilotos de aviación general con base operativa en el **Aeropuerto de Bilbao (LEBB / BIO - Loiu)**. El objetivo del portal es ofrecer a socios, alumnos piloto y entusiastas de la aviación una plataforma informativa completa que cubra:

1. La presentación institucional de la escuela de vuelo y sus instalaciones en el hangar de aviación general de Loiu.
2. El catálogo completo de la flota de avionetas disponibles para instrucción y alquiler.
3. Fichas técnicas pormenorizadas con especificaciones de los manuales de vuelo oficiales (POH), fotografías reales exteriores, vistas de cabina de instrumentos y planos acotados de 3 vistas.
4. Información operativa y meteorológica aeronáutica en tiempo real (METAR de Loiu).
5. Un formulario integral para solicitud de cursos de piloto (PPL/LAPL), reservas de vuelos panorámicos por la costa cantábrica y alquiler de aeronaves.

### Principio Pedagógico y Filosofía de Desarrollo
El proyecto ha sido diseñado y programado siguiendo con máxima rigurosidad las pautas, estándares y buenas prácticas explicados en la asignatura de **Ingeniería Web**:
- **Desarrollo 100% nativo en HTML5 y CSS3 puro**: No se ha empleado ningún tipo de framework externo (ni Bootstrap, ni Tailwind, ni librerías de componentes).
- **Cero dependencias de JavaScript**: Todas las interacciones de interfaz (incluyendo el menú responsive móvil y los saltos de navegación interna) se resuelven exclusivamente mediante características declarativas de HTML5 y CSS3.
- **Separación estricta de capas**: El marcado HTML carece por completo de atributos de estilo en línea (`style="..."`) y de etiquetas `<style>` internas. El 100% de la presentación gráfica está centralizado en la hoja de estilos externa `css/styles.css`.
- **Accesibilidad Web (WAI / WCAG 2.1 nivel AA)**: Código auditado y validado con herramientas profesionales (*axe-core* y *pa11y*), obteniendo **0 errores de accesibilidad**.

---

## 2. Mapa del Sitio y Recorrido Detallado por Páginas

El portal se compone de cuatro páginas HTML completamente vinculadas entre sí mediante el menú superior de navegación, enlaces contextuales en el cuerpo y accesos directos en el pie de página:

```text
[index.html] (Inicio)
   ├── [flota.html] (Catálogo comparativo de avionetas)
   ├── [detalle.html] (Fichas técnicas con anclas #cessna172, #piper-pa28, etc.)
   └── [formulario.html] (Reservas de cursos, vuelos y contacto)
```

### 2.1. `index.html` – Portada Institucional y Operativa
Página de bienvenida diseñada para captar el interés del visitante y estructurar los accesos principales:
- **Cabecera (`<header>`) y Navegación (`<nav>`)**: Logotipo vectorial SVG de AeroLink y menú de navegación accesible con indicador de página activa (`class="activo"`).
- **Banner Principal (*Hero Section*)**: Imagen de fondo optimizada del aeropuerto de Bilbao, lema institucional y botón de llamada a la acción (*Call to Action*) hacia el formulario de reserva.
- **Aeronaves Principales de la Escuela**: Tarjetas individuales que presentan los 4 aviones de la flota (Cessna 172S, Piper Archer III, Diamond DA40 y Tecnam P2002), con sus matrículas aeronáuticas reales, datos resumidos y enlace directo a su ficha técnica en `detalle.html`.
- **Rutas Turísticas Populares**: Sección maquetada con elementos semánticos `<article>`, figuras `<figure>`, imágenes `<img>` y leyendas `<figcaption>` detallando los sobrevuelos de la costa vasca (San Juan de Gaztelugatxe, San Sebastián/Hondarribia y Costa de Cantabria).
- **Datos Aeronáuticos de Base (Aeropuerto de Loiu)**: Ficha técnica del aeródromo con códigos OACI (`LEBB`) e IATA (`BIO`), orientación de pistas (12/30 y 10/28), elevación oficial (138 ft) y un ejemplo real de reporte meteorológico aeronáutico oficial decodificado con la etiqueta semántica `<code>`.
- **Enlaces Oficiales y de Interés**: Enlaces externos a la Agencia Estatal de Seguridad Aérea (**AESA**) y a la Agencia Estatal de Meteorología (**AEMET Aviación**), configurados con apertura en pestaña nueva (`target="_blank"`) y atributos de seguridad y rendimiento obligatorios `rel="noopener noreferrer"`.
- **Pie de Página (`<footer>`)**: Información corporativa, dirección postal física estructurada con `<address>` y `<br>`, horario de operaciones y menú de navegación secundario.

### 2.2. `flota.html` – Catálogo de Aeronaves y Tabla Comparativa
Página enfocada en el análisis comparativo del material de vuelo disponible:
- **Cuadrícula de Aeronaves (2x2)**: Disposición simétrica y equilibrada de las 4 aeronaves de la escuela mediante CSS Grid, facilitando la comparativa visual de modelos de ala alta y ala baja.
- **Tabla Comparativa de Rendimiento (`.tabla-comparativa`)**:
  - Título y descripción accesible mediante la etiqueta `<caption>`.
  - Encabezados de columna estructurados en `<thead>` con etiquetas `<th>` y atributos `scope="col"`.
  - Cuerpo estructurado en `<tbody>` con celdas de datos `<td>` organizadas por potencia, velocidad de crucero (KTAS), techo de servicio, peso máximo al despegue (MTOW) y combustible.
  - **Fusión vertical de celdas (`rowspan="2"`)**: Agrupación del combustible común *AVGAS 100LL* entre la Cessna 172S y la Piper PA-28, demostrando el uso de celdas combinadas de forma justificada.
  - Pie de tabla estructurado en `<tfoot>` con **fusión horizontal (`colspan="4"` y `colspan="5"`)** para notas operativas y aclaraciones de autonomía.
- **Glosario Aeronáutico**: Sección explicativa con lista estructurada que define los conceptos clave de la aviación general: **POH** (*Pilot's Operating Handbook*), **KTAS** (*Knots True Airspeed*), **MTOW** (*Maximum Takeoff Weight*) y reglas de vuelo visual e instrumental (**VFR / IFR**).

### 2.3. `detalle.html` – Fichas Técnicas Exhaustivas
Página documental de alta densidad de información dirigida a pilotos y alumnos:
- **Menú de Salto Rápido por Anclas**: Barra de navegación secundaria interna con enlaces a marcadores (`#cessna172`, `#piper-pa28`, `#diamond-da40`, `#tecnam-p2002`), permitiendo desplazarse instantáneamente a cada aeronave.
- **Fichas Técnicas Completas de los 4 Modelos**:
  1. **Cessna 172S Skyhawk SP** (`EC-MRX`): Monomotor de ala alta, motor Lycoming IO-360-L2A de 180 CV y aviónica Garmin G1000 NXi.
  2. **Piper PA-28-181 Archer III** (`EC-JMC`): Monomotor de ala baja, motor Lycoming O-360-A4M de 180 CV e instrumentación clásica de 6 relojes analógicos para vuelo IFR.
  3. **Diamond DA40 NG Star** (`EC-LRF`): Aeronave moderna de materiales compuestos, motor diésel Austro Engine AE300 de 168 CV que consume Jet-A1 y cabina Garmin G1000.
  4. **Tecnam P2002 Sierra** (`EC-LPI`): Biplaza ligero de entrenamiento básico y vuelo visual, con motor Rotax 912 S2 de 100 CV y bajo consumo de combustible.
- **Galería Gráfica Triple por Aeronave**: Cada ficha incorpora tres imágenes técnicas con relación de aspecto preservada:
  1. Fotografía exterior en plataforma/hangar.
  2. Vista en alta definición del panel de instrumentos y cabina de mandos.
  3. Plano técnico acotado de 3 vistas (alzado frontal, planta superior y perfil lateral con dimensiones en metros).
- **Tablas de Especificaciones Accesibles**: 4 tablas técnicas exhaustivas (13 filas cada una, 52 filas en total) donde cada parámetro está formalizado como cabecera de fila semántica `<th scope="row">` y su valor como `<td>`.
- **Sección Complementaria (`<aside class="caja-dudas">`)**: Bloque lateral informativo con recomendaciones pedagógicas de la escuela para ayudar al alumno a elegir entre instrucción en ala alta o ala baja.

### 2.4. `formulario.html` – Gestión de Reservas, Cursos y Contacto
Formulario interactivo completo estructurado bajo estándares de usabilidad y accesibilidad:
- **Estructura Semántica**: Declarado con `<form action="formulario.html" method="post">` y dividido en 4 bloques temáticos mediante etiquetas `<fieldset>`, cada una identificada con su respectivo `<legend>`.
- **Diversidad Completa de Tipos de Entrada (según temario)**:
  - `type="text"`: Nombre y apellidos del interesado.
  - `type="email"`: Correo electrónico de confirmación con validación de formato.
  - `type="tel"`: Teléfono móvil de contacto para avisos meteorológicos de última hora.
  - `type="date"`: Fecha de nacimiento y fecha deseada para la sesión de vuelo.
  - `type="password"`: Campo `#clave-socio` para acceso privado de alumnos y socios ya registrados en el club.
  - `type="radio"`: Selección excluyente entre las tres modalidades de vuelo ofrecidas (Curso Escuela de Pilotos, Vuelo Turístico Panorámico o Alquiler Privado).
  - `type="number"`: Número de acompañantes con atributos `min="0"`, `max="3"` y `value="0"`.
  - `type="file"`: Subida opcional de documento de identidad o licencia de vuelo (`accept=".pdf,.jpg,.jpeg,.png"`).
  - `type="checkbox"`: Casillas obligatorias de aceptación de condiciones del aeroclub y política de privacidad.
  - `type="submit"` y `type="reset"`: Botones nativos para procesamiento del formulario y restablecimiento de campos.
- **Asociación Estricta de Etiquetas (`<label for="ID">`)**: Cada campo interactivo posee una etiqueta vinculada de forma unívoca a través de su atributo `for` coincidente con el `id` del control, garantizando lectura impecable para tecnologías de asistencia.
- **Componentes Avanzados de Selección**:
  - Elemento `<select>` con opciones agrupadas por categoría mediante `<optgroup label="...">`.
  - Elemento `<datalist id="lista-aviones">` vinculado mediante el atributo `list` al campo de texto de matrícula, ofreciendo sugerencias predictivas sin bloquear la escritura manual.
- **Área Informativa y Legal**: Sección inferior estructurada mediante `<article class="columna-principal">` con una lista ordenada `<ol class="lista-ordenada">` que describe la secuencia legal de 4 pasos obligatorios antes de embarcar, acompañada de un `<aside class="columna-lateral">` con información de atención presencial en la terminal de Loiu.

---

## 3. Arquitectura Técnica y Buenas Prácticas del Código

### 3.1. Estructura y Semántica HTML5
1. **Declaración del Documento**: `<!DOCTYPE html>` estándar en la primera línea de todos los ficheros, con idioma declarado en el elemento raíz (`<html lang="es">`).
2. **Metadatos en `<head>`**:
   - Codificación universal de caracteres: `<meta charset="utf-8">`.
   - Control de escala responsive: `<meta name="viewport" content="width=device-width, initial-scale=1.0">`.
   - Títulos descriptivos únicos por página (`<title>`).
   - Icono de favoritos enlazado: `<link rel="shortcut icon" href="img/logo.svg" type="image/svg+xml">`.
   - Enlace externo a la hoja de estilos: `<link rel="stylesheet" href="css/styles.css">`.
3. **Jerarquía Rigurosa de Encabezados**:
   - Cada página contiene **un único `<h1>`** que define el tema central del documento.
   - La subdivisión se realiza ordenadamente a través de `<h2>`, `<h3>` y `<h4>`, sin saltos de nivel jerárquico.
4. **Semántica Estructural Real**:
   - Sustitución de contenedores `<div>` arbitrarios por elementos con valor semántico: `<header>`, `<nav>`, `<main>`, `<section>`, `<article>`, `<aside>` y `<footer>`.
   - Uso de `<div>` y `<span>` limitado estrictamente a envoltorios de soporte maquetador donde no existe alternativa semántica nativa (por ejemplo, contenedores de cuadrícula o agrupadores de botones).
5. **Formateo Textual y Riqueza de Contenido**:
   - Párrafos estructurados con `<p>`, textos destacados con `<strong>` y énfasis con `<em>`.
   - Marcado de fragmentos de código y reportes técnicos con `<code>`.
   - Formateo de direcciones de contacto mediante `<address>`.
   - Salto de línea controlado con `<br>` únicamente en bloques de dirección postal o versos donde tiene justificación tipográfica.
   - Listas no ordenadas (`<ul>`), listas ordenadas (`<ol>`) y listas de especificaciones con elementos `<li>`.

### 3.2. Accesibilidad Web (WAI-ARIA y WCAG 2.1 AA)
- **Imágenes Accesibles**: Todas las etiquetas `<img>` disponen de un atributo `alt` redactado de manera descriptiva y contextual (p. ej. indicando modelo exacto, matrícula, perspectiva exterior, interior o plano acotado).
- **Tablas de Datos Comprensibles**: Incorporación de `<caption>`, separación en `<thead>`, `<tbody>`, `<tfoot>` y empleo de atributos `scope="col"` para columnas y `scope="row"` para las 52 filas de especificaciones técnicas. Esto permite a los lectores de pantalla sintetizar correctamente la relación entre encabezado y valor al navegar por las celdas.
- **Formularios 100% Accesibles**: Asociación explícita `for`/`id`, mensajes de ayuda claros y validaciones visuales que no dependen exclusivamente del color.
- **Navegación por Teclado**: Todo el flujo interactivo es accesible mediante la tecla `Tab`. Se han definido reglas específicas para `:focus-visible` que dibujan un contorno distintivo de 2px en azul `#0056b3` con desplazamiento (`outline-offset: 3px`).
- **Contraste Cromático**: Cumplimiento del ratio de contraste mínimo de 4.5:1 exigido por WCAG 2.1 AA para texto normal sobre fondo (azul marino `#0f2b48` sobre blanco `#ffffff` ofrece un contraste de 12.8:1; texto blanco sobre azul marino ofrece 12.8:1; texto sobre acento naranja `#d96b00` supera el ratio legal).
- **Resultados de Auditoría**: El sitio ha sido verificado mediante herramientas de auditoría automatizada basadas en **axe-core** y **HTML CodeSniffer** a través de *pa11y*, arrojando **0 incidencias** en las cuatro páginas.

### 3.3. Hojas de Estilo CSS3, Modelo de Caja y Técnicas de Maquetación
Todo el diseño visual se gobierna desde [css/styles.css](css/styles.css), organizado en secciones claramente comentadas:
1. **Reset y Modelo de Caja**:
   - Aplicación universal de `box-sizing: border-box` en todos los elementos (`*`, `*::before`, `*::after`).
   - Normalización de márgenes y rellenos en elementos clave.
2. **Propiedades Abreviadas (*Shorthand*)**:
   - Uso sistemático de propiedades compuestas para optimizar el código y mejorar la legibilidad: `margin: 0 auto;`, `padding: 1.5rem 1rem;`, `background: #0f2b48;`, `border: 1px solid #c9d8e5;`, `font: inherit;`.
3. **Centrado Horizontal y Contención**:
   - El contenedor central `.contenedor` utiliza `margin: 0 auto;` con un `max-width: 1200px;` y espaciado lateral elástico en `rem` para evitar que el contenido toque los bordes de la ventana.
4. **Coexistencia Didáctica de Métodos de Maquetación**:
   - **Maquetación Tradicional con Flotados (Temario de Clase)**: Se han implementado y tipificado reglas utilitarias para el modelo tradicional de maquetación:
     ```css
     .flotante-izquierda { float: left; margin: 0 1.5rem 1rem 0; }
     .flotante-derecha   { float: right; margin: 0 0 1rem 1.5rem; }
     .limpiar-flotados   { clear: both; }
     .clearfix::after    { content: ""; display: table; clear: both; }
     ```
   - **Maquetación Moderna con Flexbox**: Empleado para la cabecera, la barra de navegación horizontal, la distribución de tarjetas de rutas, la botonera de filtros y el pie de página.
   - **Maquetación con CSS Grid**: Empleado para la cuadrícula simétrica de 2x2 en la flota (`grid-template-columns: repeat(2, 1fr)`) y la galería triple de imágenes en las fichas técnicas (`grid-template-columns: repeat(auto-fit, minmax(280px, 1fr))`).
5. **Pseudoclases de Estado e Interacción**:
   - `:hover`: Transiciones de color, sombra y desplazamiento en botones y tarjetas de la flota.
   - `:focus` y `:focus-visible`: Resaltado de campos de formulario y enlaces durante la navegación por teclado.
   - `:active`: Retroalimentación táctil de hundimiento (`transform: translateY(1px)`) al presionar botones y enlaces.
   - `:checked`: Estilización de controles de selección activos y activación del menú desplegable móvil.
   - `:disabled`: Atenuación visual del 60% y cursor de bloqueo (`cursor: not-allowed`) para controles inactivos.
6. **El Patrón "Checkbox Hack" para Menú Móvil sin JavaScript**:
   - En dispositivos móviles, el botón hamburguesa se vincula a un `<input type="checkbox" id="menu-toggle">` oculto. Al pulsar sobre el `<label for="menu-toggle">`, la pseudoclase `:checked` activa la visualización de la lista de navegación mediante el selector adyacente `#menu-toggle:checked ~ nav .menu-principal { display: flex; }`.

### 3.4. Diseño Responsivo (*Responsive Web Design*) y *Mobile First*
- **Etiqueta Viewport**: `<meta name="viewport" content="width=device-width, initial-scale=1.0">` presente en todos los documentos.
- **Regla Universal Adaptable de Medios**:
  ```css
  img, object, embed, video {
    max-width: 100%;
    height: auto;
    display: block;
  }
  ```
  Garantiza que ninguna imagen ni recurso multimedia desborde su contenedor o genere barras de desplazamiento horizontal indeseadas.
- **Puntos de Ruptura (*Breakpoints*) mediante `@media`**:
  - **Pantallas de escritorio (`> 768px`)**: Disposición en cuadrícula multicolumna, menú de navegación horizontal desplegado y tablas técnicas a ancho completo.
  - **Tablets y móviles grandes (`@media only screen and (max-width: 768px)`)**:
    - Reorganización de la cabecera con despliegue vertical de la navegación.
    - Las tarjetas de la flota pasan de 2 columnas a 1 columna completa.
    - Las tablas comparativas activan desplazamiento horizontal seguro (`overflow-x: auto;`) con indicador visual para no romper el layout.
    - Reestructuración de la columna de dudas y el formulario en una única columna fluida.
  - **Móviles pequeños (`@media only screen and (max-width: 480px)`)**:
    - Ajuste de márgenes y tamaños tipográficos mediante unidades relativas (`rem`).
    - Botones de acción y enlaces adaptados al 100% del ancho del dispositivo para facilitar el toque táctil.

### 3.5. Tecnologías XML
- El logotipo institucional ubicado en [img/logo.svg](img/logo.svg) está construido como un archivo vectorial **SVG**, el cual es una aplicación directa de XML.
- Incluye el prólogo formal estándar:
  ```xml
  <?xml version="1.0" encoding="UTF-8"?>
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 460 70" role="img" aria-labelledby="logo-title logo-desc">
  ...
  ```
  Esto asegura su validez estricta como documento XML bien formado conforme a las especificaciones del W3C.

### 3.6. Rendimiento y Optimización de Recursos (*Assets*)
- Las fotografías originales de alta resolución han sido procesadas y convertidas a formatos optimizados para la web (**WebP** y JPG ligero).
- Se ha logrado una **reducción del peso total superior al 95%** (de más de 40 MB iniciales a aproximadamente **840 KB** para todo el sitio comprimido), permitiendo tiempos de carga instantáneos en la plataforma de alojamiento en la nube (Vercel).
- Todas las etiquetas de imagen incorporan atributos explícitos `width` y `height`, lo que permite al motor de renderizado del navegador reservar el espacio exacto antes de que descargue la imagen, eliminando el parpadeo de contenido (*Cumulative Layout Shift - CLS = 0*).

---

## 4. Estructura de Archivos del Proyecto

La raíz del proyecto presenta una jerarquía limpia, ordenada y modular:

```text
AeroLink/
│
├── index.html                  # Página de inicio / portada
├── flota.html                  # Catálogo de aeronaves y tabla comparativa
├── detalle.html                # Fichas técnicas detalladas de las 4 avionetas
├── formulario.html             # Formulario de reservas, cursos y contacto
│
├── README.md                   # Documentación técnica completa para el profesor
├── url_sitio.txt               # Enlaces al despliegue en Vercel y repositorio GitHub
├── empaquetar_entrega.ps1      # Script PowerShell para generar el ZIP oficial
├── IW-79078777Q-E1.zip         # Archivo comprimido final para entrega académica
│
├── css/
│   └── styles.css              # Hoja de estilos única (CSS3 puro, sin frameworks)
│
└── img/
    ├── logo.svg                # Logotipo en formato vectorial XML (SVG)
    ├── hero-bilbao.webp        # Fotografía panorámica del Aeropuerto de Bilbao
    ├── hangar.webp             # Instalaciones y hangar de AeroLink en Loiu
    │
    ├── cessna172.webp          # Cessna 172S EC-MRX (Exterior en plataforma)
    ├── cessna172_cabina.webp   # Cessna 172S (Cabina de cristal Garmin G1000)
    ├── cessna172_plano.webp    # Cessna 172S (Plano técnico de 3 vistas con cotas)
    │
    ├── piper-pa28.webp         # Piper PA-28-181 EC-JMC (Exterior)
    ├── piper_pa28_cabina.webp  # Piper PA-28-181 (Cabina analógica IFR)
    ├── piper_pa28_plano.webp   # Piper PA-28-181 (Plano técnico de 3 vistas)
    │
    ├── diamond-da40.webp       # Diamond DA40 NG EC-LRF (Exterior)
    ├── diamond_da40_cabina.webp# Diamond DA40 NG (Cabina digital moderna)
    ├── diamond_da40_plano.webp # Diamond DA40 NG (Plano técnico de 3 vistas)
    │
    ├── tecnam_p2002.webp       # Tecnam P2002 Sierra EC-LPI (Exterior en Bilbao)
    ├── tecnam_p2002_cabina.webp# Tecnam P2002 Sierra (Cabina biplaza)
    └── tecnam_p2002_plano.webp # Tecnam P2002 Sierra (Plano técnico de 3 vistas)
```

---

## 5. Instrucciones de Comprobación y Evaluación

El profesor puede verificar y evaluar el proyecto mediante cualquiera de las siguientes tres modalidades:

### Opción A: Despliegue en la Nube (Vercel)
Acceder directamente a través de un navegador web moderno a la URL de producción:
- **Enlace de producción**: [https://aero-link-two.vercel.app/](https://aero-link-two.vercel.app/)
- La plataforma compila y sirve los archivos estáticos de forma automática sincronizados con la rama `main` del repositorio de GitHub.

### Opción B: Inspección en Local (Navegador Directo o Servidor Local)
1. Descomprimir el archivo `IW-79078777Q-E1.zip`.
2. **Método directo**: Abrir el archivo `index.html` con cualquier navegador web (Google Chrome, Mozilla Firefox, Microsoft Edge o Safari). Todas las rutas de imágenes, estilos y enlaces son relativas y funcionarán sin configuración adicional.
3. **Método servidor local** (recomendado para emular entorno real de producción):
   - Con Python:
     ```bash
     python -m http.server 8000
     ```
     Abrir en el navegador: `http://localhost:8000`
   - O bien utilizando extensiones como *Live Server* en Visual Studio Code.

### Opción C: Comprobación del Script de Empaquetado
El proyecto incluye un script en PowerShell para verificar la integridad de los archivos y empaquetar automáticamente la entrega conforme a la nomenclatura exigida (`IW-[DNI]-E1.zip`):
```powershell
.\empaquetar_entrega.ps1
```
El script verifica la presencia obligatoria de los archivos HTML, CSS, imágenes, archivo `url_sitio.txt` y `README.md`, y genera el fichero `IW-79078777Q-E1.zip` en la raíz del proyecto.

---

## 6. Cuadro Resumen de Cumplimiento de Requisitos de la Asignatura

| Criterio Evaluado | Estado | Dónde se localiza en el código |
| :--- | :---: | :--- |
| **Doctype y lenguaje** | Cumplido | `<!DOCTYPE html>` y `<html lang="es">` en los 4 ficheros HTML. |
| **Cabecera `<head>` completa** | Cumplido | `<meta charset="utf-8">`, viewport, `<title>`, CSS y favicon en los 4 HTML. |
| **Jerarquía de títulos** | Cumplido | Un único `<h1>` por página, seguido de `<h2>`, `<h3>` y `<h4>` sin saltos. |
| **Estructura semántica HTML5** | Cumplido | `<header>`, `<nav>`, `<main>`, `<section>`, `<article>`, `<aside>`, `<footer>`. |
| **Tablas estructuradas** | Cumplido | `<table>`, `<caption>`, `<thead>`, `<tbody>`, `<tfoot>`, `<th>` y `<td>`. |
| **Celdas combinadas** | Cumplido | `rowspan="2"` en `flota.html` y `colspan="4"` / `colspan="5"` en pies de tabla. |
| **Cabeceras de tabla accesibles**| Cumplido | `<th scope="col">` y `<th scope="row">` en las 52 filas de `detalle.html`. |
| **Formulario semántico** | Cumplido | `<form method="post">`, agrupaciones `<fieldset>` y leyendas `<legend>`. |
| **Asociación `<label>` e `<input>`**| Cumplido | Atributos `id` y `for` unívocos en el 100% de los campos y selectores. |
| **Tipos de entrada HTML5** | Cumplido | `text`, `email`, `tel`, `date`, `number`, `password`, `radio`, `checkbox`, `file`. |
| **Componentes de formulario** | Cumplido | `<optgroup>` en selectores y `<datalist>` para autocompletado de aeronaves. |
| **Separación de capas CSS** | Cumplido | 0% estilos inline, 0% `<style>`, 100% en hoja externa `css/styles.css`. |
| **Modelo de caja y centrado** | Cumplido | `box-sizing: border-box`, `margin: 0 auto` y contención a `max-width: 1200px`. |
| **Técnicas de maquetación** | Cumplido | Flexbox, CSS Grid y clases tradicionales con `float`, `clear` y `.clearfix`. |
| **Pseudoclases CSS** | Cumplido | `:hover`, `:focus`, `:focus-visible`, `:active`, `:checked`, `:disabled`. |
| **Responsive Web Design** | Cumplido | Meta viewport, regla `max-width: 100%` en medios y media queries adaptadas. |
| **Accesibilidad WAI / WCAG** | Cumplido | 0 errores en auditoría con *axe-core* y *pa11y*; textos `alt` descriptivos. |
| **Tecnologías XML** | Cumplido | Documento `img/logo.svg` con declaración `<?xml version="1.0" encoding="UTF-8"?>`. |
