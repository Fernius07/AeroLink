# ✈️ AeroLink V2 - Sistema de Gestión y Operaciones de Aeroclub

- **Alumno**: Iñigo Fernandez
- **Correo institucional**: fernandez.inigo@opendeusto.es
- **DNI**: 79078777Q
- **Asignatura**: Ingeniería Web (Grado en Ingeniería Informática)
- **Convocatoria / Entrega**: Entrega 1 (E1) – Maquetación y Diseño de Aplicación Web con HTML5 y CSS3
- **Archivo comprimido de entrega**: `IW-79078777Q-E1.zip`
- **Despliegue oficial en proveedor externo (Netlify)**: [https://aeroops-bilbao.netlify.app/](https://aeroops-bilbao.netlify.app/)
- **Despliegue alternativo (Vercel)**: [https://aeroops-aeroclub.vercel.app/](https://aeroops-aeroclub.vercel.app/)
- **Repositorio oficial en GitHub**: [https://github.com/Fernius07/AeroLink](https://github.com/Fernius07/AeroLink)

---

## 1. Descripción General del Proyecto: De Página Web a Aplicación Web

**AeroLink V2** es la maqueta funcional y estructurada de una **aplicación web de gestión interna** (SaaS / Backoffice Operativo) diseñada específicamente para la administración de un aeroclub y escuela de pilotos de aviación general con base de operaciones en el **Aeropuerto de Bilbao (LEBB / BIO - Loiu)**.

### Evolución Conceptual respecto a un Sitio Web Tradicional
A diferencia de un portal web comercial o informativo de carácter estático (cuyo objetivo es captar clientes o presentar precios al público general), **AeroLink V2** implementa la arquitectura y los patrones de interfaz propios de una **aplicación web de trabajo diario**:
1. **Centro de Control Operativo (Dashboard)**: Monitorización en tiempo real de cuadrantes de vuelos del día, control de calzos (*chocks on / off*), aeronaves en vuelo y telemetría de pista.
2. **Control Técnico de Flota y Mantenimiento**: Seguimiento de horómetros totales de célula (<abbr title="Total Time Airframe">TTAF</abbr>), control de inspecciones obligatorias de 50h y 100h bajo normativa europea EASA Parte-ML y gestión de organizaciones de gestión continuada de la aeronavegabilidad (<abbr title="Continuing Airworthiness Management Organisation">CAMO</abbr>).
3. **Expedientes Pormenorizados de Recursos**: Fichas técnicas de cada aeronave con cálculos de envolventes de peso y centrado (<abbr title="Weight and Balance">W&amp;B</abbr>), especificaciones oficiales del manual de vuelo (<abbr title="Pilot's Operating Handbook">POH</abbr>), libro de a bordo (*logbook*) e histórico de averías o anomalías reportadas (*squawks*).
4. **Despacho Oficial de Vuelo (*Flight Dispatch*)**: Formulario integral y riguroso de alta de vuelo, asignación de misiones, cálculo de depósitos de combustible, pasajeros, equipaje, comprobaciones pre-vuelo (*walkaround*) y firma digital autorizada.
5. **Manual de Procedimientos Normalizados (<abbr title="Standard Operating Procedures">SOP</abbr>) y Base de Conocimiento**: Protocolos de salida y llegada en Bilbao, tabla de frecuencias aeronáuticas oficiales ENAIRE, demostración multimedia de comunicaciones de cabina y acordeón de preguntas frecuentes (<abbr title="Frequently Asked Questions">FAQ</abbr>).

---

## 2. Layout Común e Índice Interno Navegable (Requisitos Obligatorios)

Conforme a las especificaciones del enunciado de la asignatura, el sistema implementa una **estructura visual y funcional común en el 100% de sus pantallas**, asegurando que el usuario nunca pierda la orientación espacial ni operativa al navegar:

```text
+---------------------------------------------------------------------------------+
| CABECERA SUPERIOR COMÚN: Barra en vivo LEBB | METAR | Pista 30                  |
| Logotipo SVG AeroLink V2 | Menú Principal (5 Páginas) | Perfil del Operador     |
+---------------------------------------------------------------------------------+
| SUB-BARRA COMÚN: Índice Interno Navegable de Apartados (#ancla-1, #ancla-2...) |
+---------------------------------------------------------------------------------+
|                                                                                 |
| CONTENIDO PRINCIPAL ESPECÍFICO DE CADA PANTALLA (<main class="contenedor-app">) |
|                                                                                 |
+---------------------------------------------------------------------------------+
| FOOTER COMÚN: Metadatos v2.4-PRO | Enlaces Rápidos | <address> Oficial Hangar   |
+---------------------------------------------------------------------------------+
```

### 2.1. Cabecera Común (`<header class="app-header">`)
- **Barra de telemetría superior**: Muestra en tiempo real la base operativa (LEBB), frecuencia de torre (118.500 MHz), reporte meteorológico METAR vivo y pista en servicio.
- **Identidad corporativa**: Logotipo vectorial generado en estándar XML/SVG (`img/logo.svg`) y denominación del sistema.
- **Navegación principal accesible**: Menú con hipervínculos cruzados entre las 5 páginas, marcando en cada una la página activa mediante la clase `.activo` y el atributo semántico `aria-current="page"`.
- **Ficha del usuario de la aplicación**: Avatar identificativo y rol activo (*"Cap. I. Fernandez - Jefe de Operaciones"*).

### 2.2. Sub-Barra de Índice Interno Navegable (`<nav class="indice-interno">`)
Cada una de las páginas incorpora en su parte superior un sub-menú navegable de apartados compuesto por botones con hipervínculos ancla (`href="#seccion"`). Al hacer clic en cualquiera de ellos, el navegador realiza un desplazamiento suave (*smooth scrolling*) adaptado mediante `scroll-padding-top: 80px` para no solapar los encabezados con la cabecera fija:
- En `index.html`: `#kpis-operativos`, `#tabla-operaciones`, `#estado-flota-resumen`, `#meteo-operacional`, `#notams-alertas`.
- En `flota.html`: `#inventario-aeronaves`, `#matriz-mantenimiento`, `#comparativa-costes`, `#glosario-aero`.
- En `detalle.html`: `#resumen-registro`, `#galeria-tecnica`, `#pesos-rendimiento`, `#historial-vuelos`, `#registro-squawks`, `#selector-otros`.
- En `formulario.html`: `#bloque-tripulacion`, `#bloque-mision`, `#bloque-pesos`, `#bloque-checklist`.
- En `protocolos.html`: `#procedimientos-lebb`, `#comunicaciones-frecuencias`, `#faq-operativa`, `#normativa-seguridad`.

### 2.3. Pie de Página Común (`<footer class="app-footer">`)
- Identificación de versión del software y cumplimiento normativo (EASA Parte-ML / ATO-284).
- Mapa de módulos y accesos directos de navegación secundaria.
- Información de contacto institucional del aeroclub estructurada semánticamente con la etiqueta `<address>`, teléfono con protocolo `tel:` y correo con `mailto:`.
- Datos de conexión con el servidor local de Loiu.

---

## 3. Recorrido Detallado por las 5 Pantallas de la Aplicación Web

### 3.1. `index.html` – Panel de Mando Operativo y Cuadrante de Vuelos
- **Tarjetas de KPIs**: Indicadores métricos en vivo (aeronaves en vuelo, horas acumuladas en la jornada con etiqueta `<data>`, misiones programadas y reservas de combustible).
- **Cuadrante Diario de Operaciones**: Gran tabla administrativa de despegues y tomas de contacto con `<caption>`, `<colgroup>`, cabeceras `<thead>`, cuerpo `<tbody>` y totales `<tfoot>`. Cada fila dispone de píldoras de estado (`.badge-exito`, `.badge-info`, `.badge-aviso`, `.badge-peligro`) y un enlace directo para abrir el expediente del avión en `detalle.html`.
- **Resumen en Rampa**: Cuadrícula de las 4 aeronaves del aeroclub con fotografías reales en plataforma de Loiu y estado inmediato.
- **Meteorología Oficial Decodificada**: Reporte METAR oficial marcado con `<code>`, `<pre>`, citas `<blockquote cite="...">`, `<samp>`, `<var>` y advertencia resaltada con `<mark>`.
- **Alertas y NOTAMs**: Avisos a navegantes con acordeones desplegables nativos de HTML5 `<details>` y `<summary>`, jerarquía de títulos hasta `<h6>` y diálogo modal nativo `<dialog id="modal-notam">`.

### 3.2. `flota.html` – Control de Flota, Horómetros y Matriz de Mantenimiento
- **Inventario Técnico**: Fichas comparativas de las 4 aeronaves del club (Cessna 172S ala alta, Piper Archer III ala baja, Diamond DA40 NG diésel y Tecnam P2002 biplaza ligero).
- **Matriz de Mantenimiento y Horómetros**: Tabla técnica completa con **fusión vertical de celdas (`rowspan="2"`)** para agrupar el combustible AVGAS 100LL compartido, y **fusión horizontal (`colspan="3"`)** en el pie de tabla. Incorpora medidores nativos `<meter>` para visualizar gráficamente el desgaste de horas hacia la próxima inspección periódica de 100 horas.
- **Cuadro de Tarifas y Costes Horarios**: Tabla con tarifas secas (*dry*), tarifas con combustible (*wet*), suplementos de instrucción y tasas de aterrizaje en Loiu.
- **Términos Clave de Mantenimiento**: Lista compacta de definiciones estructuradas con `<dl>`, `<dt>` y `<dd>` con términos clave de aeronavegabilidad (TTAF y ARC bajo norma EASA Parte-ML).

### 3.3. `detalle.html` – Expedientes Técnicos de Flota Completa
- **Expedientes de los 4 aviones**: Fichas técnicas individuales e independientes para cada aeronave del club:
  1. Cessna 172S Skyhawk SP (`EC-MRX`)
  2. Piper PA-28-181 Archer III (`EC-JMC`)
  3. Diamond DA40 NG Star (`EC-LRF`)
  4. Tecnam P2002 Sierra (`EC-LPI`)
- **Inspección Visual Triple por Aeronave**: Cada ficha incorpora una galería técnica con 3 imágenes (`<figure>`, `<img>`, `<figcaption>`): exterior en plataforma/rodaje, cabina de mandos y plano técnico de 3 vistas acotado con cotas métricas (12 imágenes técnicas en total).
- **Envolventes y Especificaciones POH**: Tablas de especificaciones detalladas por aeronave con cotas, planta motriz, consumos y velocidades características (<var>V<sub>SO</sub></var>, <var>V<sub>S1</sub></var>, <var>V<sub>X</sub></var>, <var>V<sub>Y</sub></var>, <var>V<sub>A</sub></var>, <var>V<sub>NE</sub></var>).
- **Libro Compartido de Averías y Discrepancias (Squawks)**: Trazabilidad cruzada de incidencias mecánicas reportadas, estados de taller y acciones correctoras.

### 3.4. `formulario.html` – Despacho de Vuelo, Alta de Operación y Hoja de Carga
Pantalla de formulario obligatoria para la entrega, simplificada y diseñada bajo estrictos estándares de usabilidad, validación y accesibilidad:
- Declarado con `<form action="formulario.html" method="post" enctype="multipart/form-data">`.
- Barra de estado del despacho visualizada mediante `<progress id="progreso-formulario" value="75" max="100">`.
- Agrupación temática rigurosa en 4 bloques mediante `<fieldset>` y `<legend>`.
- **Diversidad exhaustiva de controles de entrada (`<input>`)**:
  - `type="hidden"`: Token criptográfico de sesión del servidor.
  - `type="text"`: Nombre completo del piloto al mando y número de licencia con expresión regular `pattern`.
  - `type="email"`: Correo electrónico de notificación para el plan de vuelo.
  - `type="tel"`: Teléfono móvil para avisos de emergencia en plataforma.
  - `type="password"`: PIN de socio o clave autorizada de 6 dígitos.
  - `type="date"`: Fecha de la misión aérea.
  - `type="time"`: Hora estimada de despegue y calzos (EOBT).
  - `type="number"`: Tiempo estimado en minutos, número de pasajeros y peso de equipaje en kg (`min`, `max`, `step`).
  - `type="range"`: Control deslizante de combustible en depósitos (40 a 212 L) vinculado en tiempo real a su elemento `<output>`.
  - `type="radio"`: Selección de modalidad de vuelo (Instrucción dual, Solo o Alquiler privado).
  - `type="checkbox"`: Tres declaraciones obligatorias de seguridad prevuelo (inspección exterior, meteorología y documentación a bordo).
  - `type="file"`: Subida del archivo de plan de vuelo o licencia (`accept=".pdf,.png,.jpg,.jpeg"`).
  - `type="color"`: Selector cromático para asignación de color en el radar de pista.
  - `type="search"`: Búsqueda de aeródromos y rutas.
  - `type="url"`: Enlace opcional a telemetría en vivo o seguimiento ENAIRE.
  - `type="submit"` y `type="reset"`: Botones nativos de tramitación y restablecimiento de campos.
- **Componentes avanzados de formulario**:
  - `<select>` con opciones organizadas semánticamente mediante `<optgroup label="...">`.
  - `<datalist id="aerodromos-sugeridos">` asociado al campo de búsqueda con el atributo `list`.
  - `<textarea>` multilínea para observaciones técnicas o ruta solicitada.
- **Accesibilidad total**: El 100% de los controles interactivos cuenta con su respectiva etiqueta `<label>` emparejada mediante el atributo `for` coincidente con el `id` del campo.

### 3.5. `protocolos.html` – Manual SOP, Frecuencias ENAIRE y FAQ
- **Procedimiento de Despegue en Loiu**: Secuencia obligatoria de 5 fases explicada mediante una lista ordenada semántica `<ol>` y elementos `<li>`.
- **Cuadro de Frecuencias Oficiales**: Tabla con canales VHF aire-tierra de Bilbao (ATIS 126.625 MHz, Rodadura 121.700 MHz, Torre 118.500 MHz, Aproximación 120.700 MHz y Emergencia 121.500 MHz).
- **Diseño Ligero y Despejado**: Eliminación de bloques gráficos superfluos en el manual SOP para priorizar la rapidez de consulta y claridad de lectura.
- **Acordeón Interactivo de FAQ**: Cuatro preguntas frecuentes resueltas con elementos declarativos `<details>` y `<summary>` (sin una sola línea de JavaScript).
- **Protocolos de Emergencia**: Instrucciones de contingencia con códigos de transpondedor marcados mediante `<kbd>` (`7700`, `7600`, `7500`).

---

## 4. Matriz de Cumplimiento de Elementos HTML5 de Clase

Para dar cumplimiento exhaustivo a la directriz *"Debes utilizar al menos una vez todos los elementos HTML presentados en clase. Los elementos deben utilizarse de forma correcta"*, se ha integrado un total de **74 elementos HTML diferentes**, todos ellos con justificación semántica real dentro de la aplicación:

| Categoría | Elementos HTML Empleados | Dónde se localizan en el código |
| :--- | :--- | :--- |
| **Documento y Meta** | `html`, `head`, `meta`, `title`, `link`, `body` | Presentes en la cabecera técnica de los 5 archivos HTML. |
| **Estructura y Landmarks**| `header`, `nav`, `main`, `section`, `article`, `aside`, `footer`, `address` | Layout común, secciones de contenido y pie con dirección física. |
| **Jerarquía de Encabezados**| `h1`, `h2`, `h3`, `h4`, `h5`, `h6` | Jerarquía estricta sin saltos de nivel (`h1` principal a `h6` en avisos). |
| **Texto y Semántica** | `p`, `span`, `strong`, `em`, `small`, `mark`, `time`, `data`, `abbr`, `cite`, `q`, `dfn` | Párrafos, fechas ISO, métricas, siglas aeronáuticas y citas. |
| **Código y Edición** | `code`, `pre`, `kbd`, `samp`, `var`, `sub`, `sup`, `del`, `ins` | METAR en tiempo real, teclas de cabina, variables $V_A$, $V_{SO}$, $m^2$, correcciones. |
| **Separación y Citas** | `blockquote`, `hr`, `br`, `div` | Citas de meteorología y fabricante, separadores temáticos y layouts. |
| **Listas** | `ul`, `ol`, `li`, `dl`, `dt`, `dd` | Menús, secuencia SOP de 5 pasos y glosario de términos CAMO. |
| **Tablas Completas** | `table`, `caption`, `colgroup`, `col`, `thead`, `tbody`, `tfoot`, `tr`, `th`, `td` | Tablas en `index.html`, `flota.html`, `detalle.html` y `protocolos.html`. |
| **Celdas Combinadas** | `rowspan="2"`, `colspan="3"`, `colspan="4"`, `colspan="5"` | Matriz de mantenimiento en `flota.html` y resúmenes de tablas. |
| **Formularios Completos** | `form`, `fieldset`, `legend`, `label`, `input`, `select`, `optgroup`, `option`, `textarea`, `button`, `datalist`, `output` | Pantalla completa de despacho en `formulario.html`. |
| **Tipos de Entrada (15)** | `text`, `email`, `tel`, `password`, `date`, `time`, `number`, `range`, `radio`, `checkbox`, `file`, `color`, `search`, `url`, `hidden` | 15 tipos de input distintos en `formulario.html`. |
| **Medición e Interactivos**| `progress`, `meter`, `details`, `summary`, `dialog` | Barras de progreso, nivel de horas, acordeones FAQ y ventana modal. |
| **Multimedia y Gráficos** | `figure`, `figcaption`, `img`, `svg` | Fotografías de flota, cabinas, planos técnicos de 3 vistas y logotipo vectorial SVG. |
| **Hipervínculos** | `a` (rutas relativas, enlaces ancla `#id`, `tel:`, `mailto:`, externos) | Navegación entre páginas, índice interno y enlaces de contacto. |

---

## 5. Arquitectura CSS3 y Selectores Utilizados (`css/styles.css`)

Todo el diseño visual está centralizado en una única hoja de estilos nativa, **desarrollada al 100% desde cero sin ningún framework externo** (0% Bootstrap, 0% Tailwind, 0% dependencias de JavaScript):

### 5.1. Selectores Empleados Conforme al Temario
- **Selectores Universales**: `*`, `*::before`, `*::after` para asignación universal de `box-sizing: border-box`.
- **Selectores Generales de Tipo**: `body`, `h1`, `h2`, `h3`, `p`, `table`, `th`, `td`, `input`, `select`, `textarea`, `address`, `pre`, `blockquote`.
- **Selectores de Clase**: `.app-header`, `.contenedor-app`, `.tarjeta-kpi`, `.badge-exito`, `.tabla-app`, `.formulario-app`, `.cuadricula-flota`, etc.
- **Selectores de Identificador**: `#kpis-operativos`, `#tabla-operaciones`, `#campo-combustible`, `#ec-mrx`, `#bloque-tripulacion`, `#modal-notam`.
- **Selectores de Atributo**:
  - `input[type="text"]`, `input[type="email"]`, `input[type="range"]`, etc.
  - `a[aria-current="page"]` para el marcado accesible del enlace activo.
  - `abbr[title]` para añadir cursor de ayuda y subrayado discontinuo.
  - `th[scope="row"]` y `th[scope="col"]`.
  - `details[open]`.
- **Combinadores**:
  - Descendientes: `main section`, `.tarjeta-avion figure img`.
  - Hijos directos: `.indice-interno > ul`, `fieldset > legend`.
  - Hermanos adyacentes: `h1 + p`.
- **Pseudoclases de Estado e Interacción**:
  - `:root` para centralización de variables corporativas.
  - `:hover` para retroalimentación táctil y visual en botones, filas de tablas y tarjetas.
  - `:focus` y `:focus-visible` con contorno de accesibilidad de 3px en azul acento (`--color-acento`).
  - `:active` para efecto de pulsación física.
  - `:checked` para personalización de botones de radio y casillas.
  - `:disabled` para controles inactivos con cursor de bloqueo.
  - `:nth-child(even)` para coloreado en cebra de filas de tablas de datos.
  - `:first-child`, `:last-child`.
- **Pseudoelementos**: `::before`, `::after`, `::placeholder`, `::-webkit-progress-bar`, `::-webkit-meter-bar`.

### 5.2. Coexistencia Didáctica de Métodos de Maquetación
1. **Flexbox**: Empleado para la distribución de la cabecera superior, navegación principal, tarjetas métricas de cabecera y el pie de página.
2. **CSS Grid**: Empleado para la cuadrícula simétrica de la flota (`repeat(auto-fit, minmax(320px, 1fr))`), los KPIs de control y la galería técnica de 3 vistas.
3. **Maquetación Tradicional con Flotados (Temario Universitario)**:
   ```css
   .flotante-izq     { float: left; margin: 0 1.5rem 1rem 0; max-width: 320px; }
   .flotante-der     { float: right; margin: 0 0 1rem 1.5rem; max-width: 320px; }
   .limpiar-flotados { clear: both; }
   .clearfix::after  { content: ""; display: table; clear: both; }
   ```

---

## 6. Auditoría y Validación Oficial W3C (HTML5 y CSS3)

Siguiendo la directriz obligatoria del enunciado, el código ha sido verificado conectándose directamente a los motores oficiales de validación del Consorcio World Wide Web (W3C):

### 6.1. Validación HTML (W3C Nu HTML Checker - validator.w3.org)
Comprobación ejecutada vía API oficial:
- `index.html`: **0 Errores | 0 Advertencias** (`{"messages": []}`)
- `flota.html`: **0 Errores | 0 Advertencias** (`{"messages": []}`)
- `detalle.html`: **0 Errores | 0 Advertencias** (`{"messages": []}`)
- `formulario.html`: **0 Errores | 0 Advertencias** (`{"messages": []}`)
- `protocolos.html`: **0 Errores | 0 Advertencias** (`{"messages": []}`)

### 6.2. Validación CSS (W3C Jigsaw CSS Validator - jigsaw.w3.org)
Comprobación de `css/styles.css` ejecutada vía API oficial:
- **Resultado oficial W3C**: `validity: true`, **`errorcount: 0`**.

---

## 7. Estructura de Ficheros del Proyecto

```text
AeroLink/
│
├── index.html                  # Panel de Mando Operativo y Cuadrante de Vuelos
├── flota.html                  # Control de Flota, Horómetros y Matriz de Mantenimiento
├── detalle.html                # Expediente Técnico de Aeronave (Cessna 172S EC-MRX)
├── formulario.html             # Despacho de Vuelo, Hoja de Carga y Firma Digital
├── protocolos.html             # Manual SOP, Frecuencias de Radio, Multimedia y FAQ
│
├── README.md                   # Memoria técnica completa para evaluación docente
├── url_sitio.txt               # Documento con URIs de Netlify, Vercel y GitHub
├── conversacion_ia.txt         # Registro de conversaciones con la IA exigido
├── netlify.toml                # Configuración de cabeceras y despliegue en Netlify
├── empaquetar_entrega.ps1      # Script de verificación y compresión de entrega
│
├── css/
│   └── styles.css              # Hoja de estilos única (CSS3 puro, sin frameworks)
│
├── img/
│   ├── logo.svg                # Logotipo en formato vectorial XML (SVG nativo)
│   ├── hero-bilbao.jpg         # Vista aérea del Aeropuerto de Bilbao (Loiu)
│   ├── hangar.jpg              # Hangar de aviación general de AeroLink V2
│   ├── cessna172.jpg           # Cessna 172S EC-MRX (Vista exterior)
│   ├── cessna172_cabina.jpg    # Cessna 172S (Cabina de cristal Garmin G1000)
│   ├── cessna172_plano.jpg     # Cessna 172S (Plano técnico de 3 vistas con cotas)
│   ├── piper-pa28.jpg          # Piper PA-28 Archer III EC-JMC (Exterior)
│   ├── piper_pa28_cabina.jpg   # Piper PA-28 (Cabina analógica de 6 relojes)
│   ├── piper_pa28_plano.jpg    # Piper PA-28 (Plano técnico con cotas)
│   ├── diamond-da40.jpg        # Diamond DA40 NG Star EC-LRF (Exterior)
│   ├── diamond_da40_cabina.jpg # Diamond DA40 NG (Cabina digital FADEC)
│   ├── diamond_da40_plano.jpg  # Diamond DA40 NG (Plano técnico)
│   ├── tecnam_p2002.jpg        # Tecnam P2002 Sierra EC-LPI (Exterior)
│   ├── tecnam_p2002_cabina.jpg # Tecnam P2002 (Cabina biplaza)
│   └── tecnam_p2002_plano.jpg  # Tecnam P2002 (Plano técnico)
```

---

## 8. Instrucciones de Comprobación y Evaluación

El profesor puede comprobar y evaluar el proyecto a través de cualquiera de los siguientes métodos:

### Opción A: Despliegue en la Nube (Netlify)
Acceder directamente a la URL pública:
- **Enlace de Netlify**: [https://aeroops-bilbao.netlify.app/](https://aeroops-bilbao.netlify.app/)
- **Enlace de Vercel**: [https://aeroops-aeroclub.vercel.app/](https://aeroops-aeroclub.vercel.app/)

### Opción B: Inspección en Local (Navegador Directo)
1. Descomprimir el archivo oficial `IW-79078777Q-E1.zip`.
2. Abrir el archivo `index.html` con cualquier navegador web moderno (Google Chrome, Mozilla Firefox, Microsoft Edge o Safari). Todas las rutas de imágenes, estilos y recursos multimedia son relativas y funcionarán de inmediato sin servidor web.

### Opción C: Comprobación con Servidor Local
Para emular un entorno real de producción:
```bash
npx serve .
# O bien con Node:
node -e "const http=require('http'), fs=require('fs'), path=require('path'); http.createServer((req,res)=>{ let f=req.url==='/'?'index.html':req.url.slice(1); fs.readFile(f,(e,d)=>{ if(e){res.writeHead(404);res.end();}else{res.writeHead(200);res.end(d);} }); }).listen(8080,()=>console.log('http://localhost:8080'));"
```

### Opción D: Generación del Paquete Comprimido
El proyecto incluye el script oficial en PowerShell:
```powershell
.\empaquetar_entrega.ps1
```
El script verifica la presencia obligatoria de todos los archivos y genera `IW-79078777Q-E1.zip` conforme a las normas de entrega de la asignatura.
