# 0AD Field Manual

Pure static magazine-style shell for the 0 A.D. manuals.

## Structure

- `index.html` is the publication front door.
- `public/assets/site.css` styles the outer website shell.
- `public/manuals/` contains the individual manual volumes and the PDF.

## Cloudflare Workers

This site can deploy as a Worker with Static Assets:

```bash
just cf-dev
just cf-deploy
```
