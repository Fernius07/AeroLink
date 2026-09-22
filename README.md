# EcoHuella - Prototipo Web de Centro de Adopción Animal

> **Asignatura**: Ingeniería Web (IW)  
> **Entrega**: Primera Entrega (E1) - Maqueta y Prototipo HTML5 & CSS3  
> **Tecnologías**: HTML5 puro y CSS3 puro (sin JavaScript ni backend).

---

## 1. Descripción del Proyecto y Temática

**EcoHuella** es una plataforma web prototipo para una asociación protectora y centro de rescate animal. El sitio web permite a los usuarios conocer la filosofía del centro, examinar las fichas médicas y de compatibilidad de los animales disponibles, consultar los requisitos del proceso de adopción responsable y cumplimentar una solicitud formal mediante un cuestionario detallado.

La temática ha sido seleccionada de forma libre y original, apartándose expresamente de los ejemplos del enunciado (gestión de proyectos, incidencias, CRM o stock), ofreciendo un contexto óptimo para justificar elementos visuales, tablas comparativas, listas secuenciales, recursos multimedia y formularios enriquecidos.

---

## 2. Estructura de Ficheros

```text
ecohuella/
│
├── index.html              # Landing page (portada, misión, casos destacados, multimedia, artículos)
├── animales.html           # Catálogo general, tabla comparativa de registros y glosario
├── detalle.html            # Ficha técnica individualizada de mascota (Toby), historia y requisitos
├── formulario.html         # Cuestionario completo de solicitud de adopción y consentimiento RGPD
├── url_sitio.txt           # Documento de texto con la URI pública de despliegue (Vercel)
├── README.md               # Memoria técnica y documentación de la entrega
│
├── css/
│   └── styles.css          # Hoja de estilo global CSS3 (diseño responsive, Flexbox, Grid, variables)
│
├── img/
│   ├── logo.svg            # Logotipo vectorial de la marca
│   ├── hero-banner.svg     # Banner ilustrado de portada
│   ├── instalaciones.svg   # Diagrama funcional de las instalaciones
│   ├── toby.svg            # Imagen ilustrada de Toby
│   ├── luna.svg            # Imagen ilustrada de Luna
│   ├── rocky.svg           # Imagen ilustrada de Rocky
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
| **Mínimo 4 páginas enlazadas** | Cumplido | `index.html`, `animales.html`, `detalle.html` y `formulario.html`, interconectadas mediante hipervínculos en cabecera, contenido y pie. |
| **Página principal `index.html`** | Cumplido | Portada estructurada con llamadas a la acción, noticias y presentación. |
| **Formulario funcional como maqueta** | Cumplido | `formulario.html` con validación nativa HTML5, fieldsets, labels y múltiples tipos de entrada. |
| **Layout común** | Cumplido | Todas las páginas comparten la misma cabecera (`<header id="main-header">`), menú de navegación con enlace activo (`.active`) y pie de página común (`<footer id="main-footer">`). |
| **Índice interno navegable por página** | Cumplido | Cada página incluye al inicio un `<nav class="section-index">` con enlaces ancla tipo `#id` que dirigen al usuario a cada apartado de la página. |
| **Uso de todos los elementos HTML5** | Cumplido | Ver tabla detallada de elementos a continuación. |
| **Selectores CSS convenientes** | Cumplido | Uso equilibrado de selectores generales, clases, identificadores, pseudo-clases (`:hover`, `:focus`, `:nth-child`) y combinadores. |
| **Estándares W3C** | Cumplido | Código 100% válido, etiquetas correctamente cerradas, atributos requeridos (`alt`, `lang="es"`, `charset="UTF-8"`). |
| **URI de proveedor externo** | Cumplido | Incluido archivo `url_sitio.txt` preparado para el despliegue en Vercel. |

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
3. **Selectores de identificador**: `#main-header`, `#primary-nav`, `#hero`, `#mision`, `#destacados`, `#multimedia`, `#noticias`, `#main-footer`, `#form-solicitud`.
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
git commit -m "Entrega 1 IW: Maqueta EcoHuella HTML5 y CSS3"
git branch -M main
git remote add origin https://github.com/TU-USUARIO/ecohuella-adopciones.git
git push -u origin main
```

### Paso 2: Desplegar en Vercel
1. Entra en [vercel.com](https://vercel.com/) e inicia sesión con tu cuenta de GitHub.
2. Pulsa en **"Add New..."** > **"Project"**.
3. Selecciona tu repositorio recién subido (`ecohuella-adopciones`).
4. En **Framework Preset**, déjalo en **"Other"** (es un proyecto estático puro HTML/CSS).
5. Haz clic en **"Deploy"**.
6. En 15 segundos tendrás tu URL pública activa (ejemplo: `https://ecohuella-adopciones.vercel.app`).
7. Pega esa URL en el archivo `url_sitio.txt`.

---

## 7. Instrucciones para Generar el Archivo Comprimido de Entrega

Según las normas del enunciado, debes entregar un archivo con el formato:
`IW-[DNI]-E1.zip` (por ejemplo: `IW-12345678Z-E1.zip`).

Para generarlo rápidamente en Windows desde PowerShell, ejecuta:
```powershell
# Sustituye 12345678Z por tu DNI real
$DNI = "12345678Z"
Compress-Archive -Path "index.html", "animales.html", "detalle.html", "formulario.html", "css", "img", "media", "url_sitio.txt", "README.md" -DestinationPath "IW-$DNI-E1.zip" -Force
```
El archivo ZIP resultante contendrá todos los ficheros necesarios para que el profesor pueda descomprimirlo y evaluarlo directamente en local, junto con el enlace al despliegue externo.
