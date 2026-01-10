# CAMMRA AI Documentation Project State

## Overview
Docusaurus 3.9.2 documentation site for FF Group's CAMMRA AI product - an AI-based license plate and vehicle recognition application for Axis cameras.

## Repository
- **Location:** `/home/exedev/manual`
- **Remote:** `github.com:ffgroup-usa/manual.git`
- **Branch:** `main`
- **Latest commit:** `9f5c254` - Add license plate example images to mounting recommendations table

## Tech Stack
- Docusaurus 3.9.2
- Node.js with npm
- Markdown (not MDX)
- Deployed via exe.dev on port 8000

## Documentation Structure

```
docs/
├── index.md                    # Welcome page
├── CAMMRA-AI/                  # Legacy folder (mostly redirects)
├── cammra-ai-1.3/              # CAMMRA AI 1.3 Manual (from DOCX)
│   ├── index.md
│   ├── getting-started/
│   ├── camera-setup/
│   ├── app-setup/
│   └── integration/
└── cammra-ai-2.0-kb/           # CAMMRA AI 2.0 Knowledge Base (from customerhub.ff-group.ai)
    ├── _category_.json
    ├── general-info/           # 3 articles
    │   ├── product-description.md
    │   ├── power-handling-recommendations.md
    │   └── supported-cameras.md
    ├── camera-settings/        # 3 articles + plate images
    │   ├── camera-mounting-recommendations.md  # Has license plate size table with images
    │   ├── storage-sd-card-recommendations.md
    │   ├── adjusting-camera-settings.md
    │   └── img/plates/         # 8 license plate example images
    ├── app-setup/              # 8 articles
    │   ├── installing-cammra-ai.md
    │   ├── region-of-interest-setup.md
    │   ├── location-setup.md
    │   ├── image-settings.md
    │   ├── recognition-parameters.md
    │   ├── backup-restore-configuration.md
    │   ├── settings-stored-events.md
    │   ├── security-configuration.md
    │   └── img/
    ├── integration/            # 7 articles
    │   ├── barrier-control-scenario.md
    │   ├── vapix.md
    │   ├── ftp-integration.md
    │   ├── push-events-configuration.md
    │   ├── direct-integration.md
    │   ├── keepalive.md
    │   ├── sample-json-data.md
    │   └── img/
    ├── list-management/        # 1 article
    │   ├── managing-license-plate-lists.md
    │   └── img/
    └── latest-release/         # 1 article
        └── cammra-ai-links.md
```

## Content Stats
- **Total articles:** 39 markdown files
- **Total images:** 126 (PNG/JPG)
- **KB 2.0 articles:** 23 (imported from customerhub.ff-group.ai)

## Source KB
Content imported from: `https://customerhub.ff-group.ai/portal/en/kb/cammra-ai`

Sections mapped:
- General Info → general-info/
- Camera mounting\settings → camera-settings/
- Application install\setup → app-setup/
- Integration → integration/
- List Management → list-management/
- Latest release → latest-release/

## Key Files
- `docusaurus.config.js` - Site configuration
- `sidebars.js` - Sidebar configuration (auto-generated)
- `src/css/custom.css` - Axis-inspired theme styling
- `static/img/logo.svg` - FF Group logo

## Build & Run
```bash
cd /home/exedev/manual
npm run build              # Build static site
npm run serve -- --port 8000 --host 0.0.0.0  # Serve locally
```

## Live URL
- Development: `https://alpha-doc.exe.xyz:8000/`

## Recent Changes
1. Imported full KB content from customerhub.ff-group.ai (23 articles)
2. Added license plate example images to "Recommended License Plate Size" table
3. All screenshots and interface images downloaded and stored locally

## Pending/Future Work
- Marketing materials section (CAMMRA AI video) - was empty on source
- Datasheet article - is just an infographic image, not text content
- Some KB images may reference older interface versions
- URL configuration in docusaurus.config.js still has placeholder values

## Notes
- Images are stored in `img/` subdirectories relative to each section
- Tables with images use markdown image syntax: `![alt](./img/path.png)`
- KB source uses Zoho Desk platform (customerhub.ff-group.ai)
