---
description: Cómo usar Google Stitch MCP en cualquier proyecto con Antigravity
---

# Google Stitch MCP — Guía de Uso

Google Stitch MCP ya está configurado globalmente en Antigravity. Puedes usarlo en **cualquier proyecto** sin configuración adicional.

## ¿Qué puede hacer Stitch?

- **Listar proyectos** de diseño en tu cuenta de Google Stitch
- **Explorar pantallas** de un proyecto y sus metadatos
- **Descargar HTML/CSS** de pantallas diseñadas con IA
- **Generar nuevas pantallas** desde un prompt de texto
- **Extraer Design DNA** (colores, fuentes, layouts) de tus diseños

---

## Comandos útiles en terminal

```bash
# Verificar que todo está bien configurado
npx @_davideast/stitch-mcp doctor

# Ver todos tus proyectos de Stitch
npx @_davideast/stitch-mcp view --projects

# Ver pantallas de un proyecto específico
npx @_davideast/stitch-mcp view --project <project-id>

# Servir diseños en servidor local (previsualizarlos)
npx @_davideast/stitch-mcp serve -p <project-id>

# Si necesitas re-autenticarte
npx @_davideast/stitch-mcp logout
npx @_davideast/stitch-mcp init
```

---

## Uso en Antigravity (vía chat)

Una vez autenticado, puedes pedir directamente en el chat:

- *"Lista mis proyectos de Google Stitch"*
- *"Descarga el HTML de la pantalla 'Home' del proyecto <project-id>"*
- *"Genera una pantalla de login con fondo oscuro para mi proyecto <project-id>"*
- *"Extrae los colores y tipografía del proyecto <project-id>"*

---

## Primer uso / Autenticación

// turbo
1. Ejecutar el wizard de autenticación:
```bash
npx @_davideast/stitch-mcp init
```

Este wizard:
1. Instala gcloud CLI si no está instalado
2. Abre el navegador para autenticarte con Google
3. Configura las credenciales automáticamente
4. Escribe la configuración en Antigravity

---

## Verificación

// turbo
2. Verificar que todo funciona:
```bash
npx @_davideast/stitch-mcp doctor
```

---

## Configuración guardada

La config MCP está en: `C:\Users\soluc\.gemini\antigravity\mcp_config.json`

```json
{
  "mcpServers": {
    "stitch": {
      "command": "npx",
      "args": ["@_davideast/stitch-mcp", "proxy"]
    }
  }
}
```

> **Nota**: Si prefieres usar una API Key en lugar de gcloud OAuth, añade `"env": { "STITCH_API_KEY": "tu-key" }` al JSON anterior. La API Key se obtiene en [stitch.google.com](https://stitch.google.com) → Settings.
