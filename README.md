# AeroLink Aviación Bilbao - Prototipo Web para Ingeniería Web

> **Asignatura**: Ingeniería Web (IW)  
> **Entrega**: Primera Entrega (E1) - Maqueta y Prototipo HTML5 & CSS3  
> **Alumno**: Iñigo Fernandez  
> **Correo**: fernandez.inigo@opendeusto.es  
> **DNI**: `79078777Q`  
> **Archivo comprimido**: `IW-79078777Q-E1.zip`  
> **Base de operaciones**: Aeropuerto de Bilbao (LEBB / BIO / Loiu, Bizkaia)  
> **Tecnologías**: HTML5 y CSS3 puros (sin JavaScript ni servidor backend).

---

## 1. Temática y Descripción

**AeroLink Bilbao** es el prototipo web de un club de aviación deportiva y escuela de pilotos autorizada (ATO-248) con base en la terminal de aviación general del **Aeropuerto de Bilbao (Loiu, Bizkaia)**. El portal permite a alumnos y pilotos conocer las instalaciones, informarse sobre la meteorología oficial del aeropuerto (reporte METAR de Bilbao), consultar las 4 aeronaves de la flota, examinar las **fichas técnicas oficiales completas con fotografías reales de exterior, cabina y planos técnicos de tres vistas**, y cumplimentar una solicitud de reserva o curso.

La temática seleccionada pertenece al ámbito del **transporte y la aviación general**, excluyendo expresamente todos los ejemplos citados en el enunciado (gestión de proyectos, incidencias/tickets, CRM o inventario de stock).

---

## 2. Estructura de Ficheros

```text
aerolink/
│
├── index.html              # Portada: bienvenida, seguridad, 4 aeronaves, rutas de la Costa Vasca y METAR Bilbao
├── flota.html              # Catálogo con las 4 avionetas, tabla comparativa de rendimiento POH y glosario
├── detalle.html            # 4 Fichas Técnicas Oficiales (Exterior, Cabina y Plano de cada uno de los 4 aviones)
├── formulario.html         # Formulario de solicitud de vuelo y cursos en Bilbao con validación HTML5
├── url_sitio.txt           # Archivo con la dirección web pública de despliegue en Vercel
├── README.md               # Memoria explicativa del proyecto
├── empaquetar_entrega.ps1  # Script para generar automáticamente el archivo IW-79078777Q-E1.zip
│
├── css/
│   └── styles.css          # Hoja de estilos con variables, diseño responsive (Flexbox/Grid) y selectores CSS
│
└── img/
    ├── logo.svg            # Logotipo de AeroLink
    ├── hero-bilbao.jpg     # Fotografía real del Aeropuerto de Bilbao (Loiu)
    ├── hangar.jpg          # Fotografía real de hangar con avionetas
    │
    ├── cessna172.jpg           # [Cessna 172S EC-MRX] Foto exterior real en hangar de Bilbao
    ├── cessna172_cabina.jpg    # [Cessna 172S] Foto real de cabina de pilotaje e instrumental
    ├── cessna172_plano.jpg     # [Cessna 172S] Plano oficial de tres vistas con cotas y dimensiones
    │
    ├── piper-pa28.jpg          # [Piper PA-28 EC-JMC] Foto exterior real en aeródromo
    ├── piper_pa28_cabina.jpg   # [Piper PA-28] Foto real de cabina de pilotaje e instrumental
    ├── piper_pa28_plano.jpg    # [Piper PA-28] Plano oficial de tres vistas con cotas
    │
    ├── diamond-da40.jpg        # [Diamond DA40 EC-LRF] Foto exterior real en plataforma
    ├── diamond_da40_cabina.jpg # [Diamond DA40] Foto real de cabina Garmin G1000
    ├── diamond_da40_plano.jpg  # [Diamond DA40] Plano oficial de tres vistas con cotas
    │
    ├── tecnam_p2002.jpg        # [Tecnam P2002] Foto exterior real en tierra
    ├── tecnam_p2002_cabina.jpg # [Tecnam P2002] Foto real de cabina biplaza
    └── tecnam_p2002_plano.svg  # [Tecnam P2002] Plano oficial de tres vistas con cotas
```

---

## 3. Cumplimiento de los Requisitos del Enunciado

1. **Mínimo 4 páginas enlazadas entre sí**:
   - `index.html`, `flota.html`, `detalle.html` y `formulario.html`, todas interconectadas con enlaces en cabecera, botones de contenido y pie de página.
2. **Página principal llamada `index.html`**:
   - Cumplido con fotografía real del Aeropuerto de Bilbao y reporte METAR real.
3. **Página con formulario completo**:
   - `formulario.html` organizado en 6 bloques temáticos (`fieldset`), etiquetas accesibles (`label`), selector para cursos de **Escuela de Vuelo** (PPL, NVFR, transición G1000) y selector para **Vuelo Turístico** con 6 rutas panorámicas (Gaztelugatxe, Cabo Matxitxako, Ría de Bilbao, Donostia, Santander y personalizada), `datalist` para aeronaves de Bilbao, inputs variados (`text`, `email`, `tel`, `date`, `number`, `radio`, `checkbox`, `file`) y `textarea`.
4. **Layout común (Cabecera y Pie)**:
   - Todas las páginas comparten la misma cabecera (`<header id="cabecera-principal">`) con el logotipo y menú con la página activa (`.activo`), y el mismo pie de página (`<footer id="pie-principal">`) con la dirección en Loiu (Bizkaia).
5. **Índice interno navegable por apartados**:
   - Cada una de las 4 páginas incluye al inicio un menú de anclas (`<nav class="indice-pagina">`) que permite saltar a las diferentes secciones. En `detalle.html` permite saltar directamente a la ficha de cualquiera de los 4 aviones.
6. **Las 4 Fichas Técnicas con 3 imágenes cada una y datos reales de POH**:
   - Cada avión cuenta con:
     1. Foto exterior real.
     2. Foto real de cabina de pilotaje.
     3. Plano ortogonal oficial de 3 vistas con cotas en metros.
     4. Tabla de especificaciones con datos certificados de los manuales de vuelo del fabricante (motor, potencia, consumo, velocidades KTAS/KIAS, techo de servicio, carreras de despegue y pesos).
7. **Selectores CSS variados y estructurados**:
   - Selectores de etiqueta (generales), selectores de clase, selectores de identificador (ID), combinadores y pseudo-clases (`:hover`, `:focus`, `:nth-child(even)`).
8. **Validación W3C**:
   - Código limpio, semántico, etiquetas cerradas y atributos obligatorios (`alt`, `lang="es"`, `charset="UTF-8"`).
9. **Normas de entrega del archivo ZIP**:
   - Formato exigido: `IW-79078777Q-E1.zip`, conteniendo los archivos necesarios y `url_sitio.txt`.

---

## 4. Instrucciones para Subir a GitHub y Desplegar en Vercel

### Paso 1: Subir a GitHub
```bash
git add .
git commit -m "Entrega 1 IW: Prototipo AeroLink Bilbao con 4 fichas completas (DNI 79078777Q)"
git branch -M main
git remote add origin https://github.com/TU-USUARIO/aerolink-bilbao.git
git push -u origin main
```

### Paso 2: Desplegar en Vercel
1. Inicia sesión en [vercel.com](https://vercel.com/) con tu cuenta de GitHub.
2. Pulsa en **Add New...** > **Project** e importa el repositorio de AeroLink.
3. Haz clic en **Deploy**. Al ser un sitio web estático puro (HTML y CSS), el despliegue tarda apenas unos segundos.
4. Pega la URL pública en el archivo `url_sitio.txt`.

---

## 5. Cómo Generar el Archivo ZIP de Entrega

Para generar el archivo comprimido oficial exigido por la asignatura (`IW-79078777Q-E1.zip`), ejecuta en PowerShell:
```powershell
.\empaquetar_entrega.ps1
```
El archivo se creará en la raíz del proyecto listo para entregar en el campus virtual.
