# AeroLink Aviación - Prototipo Web para Ingeniería Web

> **Asignatura**: Ingeniería Web (IW)  
> **Entrega**: Primera Entrega (E1) - Maqueta y Prototipo HTML5 & CSS3  
> **Alumno / DNI**: `79078777Q`  
> **Archivo de entrega**: `IW-79078777Q-E1.zip`  
> **Tecnologías**: HTML5 y CSS3 puros (sin JavaScript ni servidor backend).

---

## 1. Temática y Descripción

**AeroLink** es la maqueta web de un club de aviación y escuela de pilotos con base en Madrid. El sitio web permite a los usuarios conocer las instalaciones, consultar las avionetas disponibles (con fotos reales y datos técnicos), ver la ficha detallada de una de ellas con su lista de comprobación (*checklist*) y realizar una reserva o pedir información a través de un formulario.

La temática elegida es libre y pertenece al sector del **transporte y la aviación deportiva**, evitando todos los ejemplos del enunciado (proyectos, tickets/incidencias, CRM o inventario).

---

## 2. Estructura de Ficheros

```text
aerolink/
│
├── index.html              # Portada: bienvenida, seguridad, flota destacada, audio/vídeo y meteorología
├── flota.html              # Catálogo con fotos reales, tabla comparativa técnica y glosario
├── detalle.html            # Ficha técnica de la Cessna 172 con foto real, cabina, checklist pre-vuelo y requisitos
├── formulario.html         # Formulario completo con validación HTML5 para solicitar reservas o cursos
├── url_sitio.txt           # Archivo de texto con el enlace de la web desplegada en Vercel
├── README.md               # Esta memoria explicativa del proyecto
├── empaquetar_entrega.ps1  # Script para generar automáticamente el archivo IW-79078777Q-E1.zip
│
├── css/
│   └── styles.css          # Hoja de estilos con variables, diseño responsive (Flexbox) y selectores CSS
│
├── img/
│   ├── logo.svg            # Logotipo de AeroLink
│   ├── hero-avion.jpg      # Foto real de avioneta al atardecer en pista
│   ├── cessna172.jpg       # Foto real de la Cessna 172 en vuelo
│   ├── piper-pa28.jpg      # Foto real de la avioneta Piper PA-28 en plataforma
│   ├── diamond-da40.jpg    # Foto real de la avioneta Diamond DA40
│   ├── cabina.jpg          # Foto real del puesto de pilotaje e instrumentos de cabina
│   ├── hangar.jpg          # Foto real del hangar de mantenimiento
│   └── video-poster.svg    # Carátula del reproductor de vídeo
│
└── media/
    ├── latido-refugio.wav  # Pista de audio para el reproductor HTML5
    └── video-muestra.mp4   # Vídeo de muestra para el reproductor HTML5
```

---

## 3. Cumplimiento de los Requisitos del Enunciado

1. **Mínimo 4 páginas enlazadas entre sí**:
   - `index.html`, `flota.html`, `detalle.html` y `formulario.html`. Desde cualquier página se puede navegar a las demás usando el menú de cabecera o el pie de página.
2. **Página principal llamada `index.html`**:
   - Cumplido.
3. **Página con formulario**:
   - `formulario.html` contiene 4 bloques temáticos (`fieldset`), etiquetas (`label`) para cada campo, campos de texto, email, teléfono, fecha, número, opciones de radio, casillas de verificación, lista desplegable (`select` con `optgroup`), sugerencias con `datalist`, subida de ficheros (`input type="file"`) y área de texto (`textarea`).
4. **Layout común (Cabecera y Pie)**:
   - Todas las páginas comparten la misma cabecera (`<header id="cabecera-principal">`) con el logotipo y el menú de navegación con la página actual destacada (`.activo`), y el mismo pie de página (`<footer id="pie-principal">`).
5. **Índice interno navegable por página**:
   - Cada una de las 4 páginas incluye al principio un menú de navegación por anclas (`<nav class="indice-pagina">`) que permite saltar a las diferentes secciones de esa misma página.
6. **Uso de elementos HTML explicados en clase**:
   - Estructura: `<header>`, `<nav>`, `<main>`, `<section>`, `<article>`, `<aside>`, `<footer>`.
   - Textos: `<h1>`, `<h2>`, `<h3>`, `<p>`, `<strong>`, `<em>`, `<blockquote>`, `<cite>`, `<mark>`, `<small>`, `<time>`, `<hr>`, `<pre>`, `<code>`.
   - Listas: Lista no ordenada (`<ul>`, `<li>`), lista ordenada secuencial (`<ol>`, `<li>`) y lista de definición (`<dl>`, `<dt>`, `<dd>`).
   - Tablas: `<table>`, `<caption>`, `<thead>`, `<tbody>`, `<tfoot>`, `<tr>`, `<th>`, `<td>`.
   - Multimedia: `<figure>`, `<img>` (fotos reales en JPG con atributo `alt`), `<figcaption>`, `<video>`, `<audio>`.
   - Formularios: `<form>`, `<fieldset>`, `<legend>`, `<label>`, `<input>`, `<select>`, `<optgroup>`, `<datalist>`, `<textarea>`, `<button type="submit">`, `<button type="reset">`.
7. **Selectores CSS convenientes**:
   - Selectores de etiqueta (generales): `body`, `h1`, `h2`, `p`, `table`, `a`, `img`, `fieldset`, `button`.
   - Selectores de clase: `.tarjeta`, `.boton`, `.indice-pagina`, `.etiqueta`, `.campo`, `.tabla-contenedor`.
   - Selectores de identificador (ID): `#cabecera-principal`, `#menu-navegacion`, `#pie-principal`, `#formulario-reserva`.
   - Pseudo-clases: `:hover` en enlaces y botones, `:focus` en campos del formulario, `:nth-child(even)` en las filas de la tabla.
8. **Validación W3C**:
   - Código limpio, etiquetas cerradas correctamente y atributos obligatorios presentes (`alt`, `lang="es"`, `charset="UTF-8"`).
9. **URL de proveedor externo y archivo comprimido**:
   - Archivo `url_sitio.txt` preparado con la URL de Vercel y script para generar `IW-79078777Q-E1.zip`.

---

## 4. Instrucciones para Subir a GitHub y Vercel

### Paso 1: Subir a GitHub
```bash
git add .
git commit -m "Entrega 1 IW: Prototipo AeroLink con fotos reales (DNI 79078777Q)"
git branch -M main
git remote add origin https://github.com/TU-USUARIO/aerolink-aviacion.git
git push -u origin main
```

### Paso 2: Desplegar en Vercel
1. Entra en [vercel.com](https://vercel.com/) e inicia sesión con tu usuario de GitHub.
2. Pulsa en **Add New...** > **Project** y selecciona el repositorio `aerolink-aviacion`.
3. Haz clic en **Deploy**. Al ser una web estática en HTML y CSS se publicará en unos 15 segundos.
4. Copia la URL pública que te proporcione Vercel y pégala en el fichero `url_sitio.txt`.

---

## 5. Cómo Generar el Archivo ZIP de Entrega

Para crear el archivo comprimido exigido por la asignatura (`IW-79078777Q-E1.zip`), ejecuta en PowerShell:
```powershell
.\empaquetar_entrega.ps1
```
El archivo se creará en la raíz del proyecto listo para entregar en el campus virtual.
