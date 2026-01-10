# CAMMRA AI Documentation Project State

## Overview
Docusaurus 3.9.2 documentation site for FF Group's CAMMRA AI product - an AI-based license plate and vehicle recognition application for Axis cameras.

## Repository
- **Location:** `/home/exedev/manual`
- **Remote:** `github.com:ffgroup-usa/manual.git`
- **Branch:** `main`
- **Latest commit:** `989a92c` - KB + manual v0.93

## Tech Stack
- Docusaurus 3.9.2
- Node.js with npm
- Markdown + MDX (format: 'detect' in config)
- Deployed via exe.dev on port 8000

## Documentation Structure

```
docs/
├── index.md                    # Welcome page
├── CAMMRA-AI/                  # Legacy folder (redirects)
├── cammra-ai-1.3/              # CAMMRA AI 1.3 Manual (from DOCX)
│   ├── index.md
│   ├── getting-started/
│   ├── camera-setup/
│   ├── app-setup/
│   └── integration/
├── cammra-ai-2.0-kb/           # CAMMRA AI 2.0 Knowledge Base (SOURCE OF TRUTH)
│   ├── _category_.json
│   ├── general-info/           # 3 articles
│   │   ├── product-description.md
│   │   ├── power-handling-recommendations.md
│   │   └── supported-cameras.md
│   ├── camera-settings/        # 3 articles + plate images
│   │   ├── camera-mounting-recommendations.md
│   │   ├── storage-sd-card-recommendations.md
│   │   ├── adjusting-camera-settings.md
│   │   └── img/
│   ├── app-setup/              # 8 articles
│   │   ├── installing-cammra-ai.md
│   │   ├── region-of-interest-setup.md
│   │   ├── location-setup.md
│   │   ├── image-settings.md
│   │   ├── recognition-parameters.md
│   │   ├── backup-restore-configuration.md
│   │   ├── settings-stored-events.md
│   │   ├── security-configuration.md
│   │   └── img/
│   ├── integration/            # 7 articles
│   │   ├── barrier-control-scenario.md
│   │   ├── vapix.md
│   │   ├── ftp-integration.md
│   │   ├── push-events-configuration.md
│   │   ├── direct-integration.md
│   │   ├── keepalive.md
│   │   ├── sample-json-data.md
│   │   └── img/
│   ├── list-management/        # 1 article
│   │   ├── managing-license-plate-lists.md
│   │   └── img/
│   └── latest-release/         # 1 article
│       ├── cammra-ai-links.md
│       └── img/
└── cammra-ai-2.0-manual/       # Full Manual (imports from KB)
    ├── _category_.json
    └── index.mdx               # MDX imports all KB articles
```

## Key Architecture: KB + Manual

**KB articles = Single Source of Truth**

The Full Manual (`cammra-ai-2.0-manual/index.mdx`) uses MDX imports to include KB articles:

```jsx
import ProductDescription from '../cammra-ai-2.0-kb/general-info/product-description.md';
import SupportedCameras from '../cammra-ai-2.0-kb/general-info/supported-cameras.md';
// ... more imports

# CAMMRA AI 2.0 Full Manual

## Part 1: General Information
<ProductDescription />
<SupportedCameras />

## Part 2: Camera Setup
<MountingRecommendations />
// ... etc
```

This means:
- Edit KB article → Manual automatically updated
- No content duplication
- Manual adds "glue" text between sections

## Content Stats
- **Total articles:** 40 markdown/mdx files
- **Total images:** 134 (PNG/JPG)
- **KB 2.0 articles:** 23 (imported from customerhub.ff-group.ai)

## Source KB
Content imported from: `https://customerhub.ff-group.ai/portal/en/kb/cammra-ai`

## Key Configuration

**docusaurus.config.js:**
```js
markdown: {
  format: 'detect',  // Supports both .md and .mdx
},
```

## Build & Run
```bash
cd /home/exedev/manual
npm run build              # Build static site
npm run serve -- --port 8000 --host 0.0.0.0  # Serve locally
```

## Live URL
- Development: `https://alpha-doc.exe.xyz:8000/`
- Full Manual: `https://alpha-doc.exe.xyz:8000/docs/cammra-ai-2.0-manual`
- KB: `https://alpha-doc.exe.xyz:8000/docs/cammra-ai-2.0-kb/general-info/product-description`

## Recent Changes (Latest Session)
1. Reimported Storage (SD-card) Recommendations with full content
2. Restored "Why Use an SD Card?" section
3. Added "Recommendations on Mounting and Adjusting" to camera settings
4. Completed Direct Integration with 2N IP Base section
5. Fixed broken link in product-description
6. Fixed JSX syntax in cammra-ai-links
7. Created Full Manual using MDX imports from KB (single source of truth)

## PDF Generation Options (Not Yet Implemented)
- **Browser Print** - Simplest, open page → Print → Save as PDF
- **docs-to-pdf** - `npx docs-to-pdf --initialDocURLs="URL" --contentSelector="article"`
- **docusaurus-prince-pdf** - High quality but requires license

## Notes
- Images stored in `img/` subdirectories relative to each section
- KB source uses Zoho Desk platform (customerhub.ff-group.ai)
- Markdown format set to 'detect' to support MDX imports
