# AeroLink Aviación - Prototipo Web de Club de Vuelo y Escuela de Pilotos

> **Asignatura**: Ingeniería Web (IW)  
> **Entrega**: Primera Entrega (E1) - Maqueta y Prototipo HTML5 & CSS3  
> **Alumno / DNI**: `79078777Q`  
> **Archivo comprimido**: `IW-79078777Q-E1.zip`  
> **Tecnologías**: HTML5 puro y CSS3 puro (sin JavaScript ni backend).

---

## 1. Descripción del Proyecto y Temática

**AeroLink Aviación** es un prototipo de portal web para una escuela de pilotos (ATO homologada por AESA) y centro de operaciones de aviación general y deportiva. La plataforma permite a alumnos y pilotos examinar las especificaciones y avionica de la flota de aeronaves, consultar reportes meteorológicos operativos (METAR), revisar las listas de chequeo pre-vuelo (*Pre-Flight Checklist*) y cursar solicitudes de reserva de aeronaves, vuelos de divulgación (*bautismos aéreos*) o matrícula en cursos PPL(A).

La temática ha sido seleccionada en el ámbito de **transporte, aviación y utilidad técnica**, excluyendo expresamente todos los ejemplos citados en el enunciado (gestión de proyectos, incidencias, CRM o stock), proporcionando un marco creíble, técnico y rico para el uso de tablas complejas, listas ordenadas, diagramas vectoriales, recursos multimedia y formularios enriquecidos.

---

## 2. Estructura de Ficheros

```text
aerolink/
│
├── index.html              # Landing page (portada, seguridad aérea, flota destacada, multimedia, METAR)
├── flota.html              # Catálogo de aeronaves, tabla comparativa de rendimiento y glosario
├── detalle.html            # Ficha técnica ampliada (Cessna 172S EC-MRX), Garmin G1000 y checklist
├── formulario.html         # Solicitud de vuelo, perfiles de piloto, datos W&B y consentimiento AESA
├── url_sitio.txt           # Documento de texto con la URI pública de despliegue (Vercel)
├── README.md               # Memoria técnica y documentación de la entrega
├── empaquetar_entrega.ps1  # Script PowerShell para generar automáticamente IW-79078777Q-E1.zip
│
├── css/
│   └── styles.css          # Hoja de estilo global CSS3 (diseño responsive, Flexbox, Grid, variables)
│
├── img/
│   ├── logo.svg            # Logotipo vectorial de AeroLink Aviación
│   ├── hero-banner.svg     # Banner ilustrado de pista 24L y aeronave en ascenso
│   ├── hangar-instalaciones.svg # Diagrama técnico de hangares CAMO y calle de rodaje Alpha
│   ├── cessna172.svg       # Ilustración técnica de Cessna 172S Skyhawk (EC-MRX)
│   ├── piper-pa28.svg      # Ilustración técnica de Piper PA-28 Archer (EC-KLM)
│   ├── diamond-da40.svg    # Ilustración técnica de Diamond DA40 NG (EC-TGO)
│   └── video-poster.svg    # Carátula del reproductor de vídeo
│
└── media/
    ├── latido-refugio.wav  # Pista de audio para el reproductor HTML5
    └── video-muestra.mp4   # Pista de vídeo de muestra
```

---

## 3. Cumplimiento Exhaustivo de Requisitos del Enunciado

| Requisito del Enunciado | Estado | Implementación en el Proyecto |
| :--- | :---: | :--- |
| **Mínimo 4 páginas enlazadas** | Cumplido | `index.html`, `flota.html`, `detalle.html` y `formulario.html`, interconectadas mediante hipervínculos en cabecera, contenido y pie. |
| **Página principal `index.html`** | Cumplido | Portada estructurada con llamadas a la acción, seguridad operacional y presentación. |
| **Formulario funcional como maqueta** | Cumplido | `formulario.html` con validación nativa HTML5, fieldsets, labels y múltiples tipos de entrada. |
| **Layout común** | Cumplido | Todas las páginas comparten la misma cabecera (`<header id="main-header">`), menú de navegación con enlace activo (`.active`) y pie de página común (`<footer id="main-footer">`). |
| **Índice interno navegable por página** | Cumplido | Cada página incluye al inicio un `<nav class="section-index">` con enlaces ancla tipo `#id` que dirigen al usuario a cada apartado de la página. |
| **Uso de todos los elementos HTML5** | Cumplido | Ver catálogo detallado de elementos a continuación. |
| **Selectores CSS convenientes** | Cumplido | Uso equilibrado de selectores generales, clases, identificadores, pseudo-clases (`:hover`, `:focus`, `:nth-child`) y combinadores. |
| **Estándares W3C** | Cumplido | Código 100% válido, etiquetas correctamente cerradas, atributos obligatorios (`alt`, `lang="es"`, `charset="UTF-8"`). |
| **URI de proveedor externo** | Cumplido | Incluido archivo `url_sitio.txt` preparado para el despliegue en Vercel. |
| **Normas de empaquetado** | Cumplido | ZIP generado con el prefijo IW seguido del DNI del alumno: `IW-79078777Q-E1.zip`. |

---

## 4. Catálogo de Elementos HTML Empleados

- **Estructura y semántica**: `<!DOCTYPE html>`, `<html lang="es">`, `<head>`, `<meta charset="UTF-8">`, `<meta name="viewport">`, `<title>`, `<link>`, `<body>`, `<header>`, `<nav>`, `<main>`, `<section>`, `<article>`, `<aside>`, `<footer>`.
- **Encabezados y texto**: `<h1>` a `<h4>`, `<p>`, `<strong>`, `<em>`, `<small>`, `<mark>`, `<time>`, `<blockquote>`, `<cite>`, `<pre>`, `<code>`, `<hr>`.
- **Listas**:
  - Lista no ordenada (`<ul>`, `<li>`).
  - Lista ordenada secuencial (`<ol>`, `<li>`).
  - Lista de definiciones (`<dl>`, `<dt>`, `<dd>`).
- **Tablas**: `<table>`, `<caption>`, `<thead>`, `<tbody>`, `<tfoot>`, `<tr>`, `<th scope="col">`, `<th scope="row">`, `<td>` (con `colspan`).
- **Multimedia y gráficos**: `<figure>`, `<img>` (con atributos `alt`, `width`, `height`), `<figcaption>`, `<video>` (con `controls`, `poster`, `<source>`), `<audio>` (con `controls`, `<source>`).
- **Formularios**: `<form>`, `<fieldset>`, `<legend>`, `<label for="...">`, `<input>` (`text`, `email`, `tel`, `date`, `number`, `radio`, `checkbox`, `file`), `<select>`, `<optgroup>`, `<option>`, `<datalist>`, `<textarea>`, `<button type="submit">`, `<button type="reset">`.

---

## 5. Selectores CSS Empleados en `styles.css`

1. **Selectores de tipo / generales**: `*`, `html`, `body`, `main`, `h1`, `h2`, `h3`, `p`, `a`, `img`, `table`, `thead`, `tbody`, `figure`, `input`, `textarea`, `button`.
2. **Selectores de clase**: `.header-container`, `.btn`, `.btn-primary`, `.btn-outline`, `.card`, `.badge`, `.table-responsive`, `.grid-cards`, `.section-index`, `.form-group`, `.form-row`.
3. **Selectores de identificador**: `#main-header`, `#primary-nav`, `#hero`, `#mision-seguridad`, `#aeronaves-destacadas`, `#multimedia`, `#operaciones-metar`, `#main-footer`, `#form-vuelo`.
4. **Pseudo-clases**:
   - `:root` (definición de paleta y variables).
   - `:hover` y `:focus` (interactividad accesible en botones, inputs y enlaces).
   - `:nth-child(even)` (filas alternas de tablas).
   - `:first-child` (ajustes tipográficos en listas de definición).
5. **Combinadores**:
   - Descendientes: `header#main-header nav ul li a`.
   - Hijos directos: `.card-body > h3`.
6. **Diseño Adaptable (Responsive)**: `@media (max-width: 768px)` con ajuste de navegación, rejillas y formularios.

---

## 6. Instrucciones para Subir a GitHub y Desplegar en Vercel

### Paso 1: Subir a GitHub
Abre la terminal en la carpeta del proyecto y ejecuta:
```bash
git add .
git commit -m "Entrega 1 IW: Prototipo AeroLink Aviacion (Alumno 79078777Q)"
git branch -M main
git remote add origin https://github.com/TU-USUARIO/aerolink-aviacion.git
git push -u origin main
```

### Paso 2: Desplegar en Vercel
1. Entra en [vercel.com](https://vercel.com/) e inicia sesión con tu cuenta de GitHub.
2. Pulsa en **"Add New..."** > **"Project"**.
3. Selecciona tu repositorio (`aerolink-aviacion`).
4. En **Framework Preset**, déjalo en **"Other"** (es un proyecto estático puro HTML/CSS).
5. Haz clic en **"Deploy"**.
6. En 15 segundos tendrás tu URL pública activa (ejemplo: `https://aerolink-aviacion.vercel.app`).
7. Pega esa URL en el archivo `url_sitio.txt`.

---

## 7. Instrucciones para Generar el Archivo Comprimido de Entrega

Según las normas del enunciado, debes entregar el archivo con tu DNI:
`IW-79078777Q-E1.zip`.

Para generarlo automáticamente en Windows desde PowerShell, simplemente ejecuta:
```powershell
.\empaquetar_entrega.ps1
```
El script generará el archivo `IW-79078777Q-E1.zip` con todo el material necesario (HTML, CSS, imágenes, audio, video, README y url_sitio.txt).
