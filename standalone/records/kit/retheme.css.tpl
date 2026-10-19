<style data-retheme="ink-violet-green">
@font-face{font-family:"IBM Plex Sans";font-style:normal;font-weight:400;font-display:swap;src:url(data:font/woff2;base64,@@font:ibm-plex-sans-400-normal.woff2@@) format("woff2");}
@font-face{font-family:"IBM Plex Sans";font-style:italic;font-weight:400;font-display:swap;src:url(data:font/woff2;base64,@@font:ibm-plex-sans-400-italic.woff2@@) format("woff2");}
@font-face{font-family:"IBM Plex Sans";font-style:normal;font-weight:500;font-display:swap;src:url(data:font/woff2;base64,@@font:ibm-plex-sans-500-normal.woff2@@) format("woff2");}
@font-face{font-family:"IBM Plex Sans";font-style:normal;font-weight:600;font-display:swap;src:url(data:font/woff2;base64,@@font:ibm-plex-sans-600-normal.woff2@@) format("woff2");}
@font-face{font-family:"IBM Plex Serif";font-style:normal;font-weight:400;font-display:swap;src:url(data:font/woff2;base64,@@font:ibm-plex-serif-400-normal.woff2@@) format("woff2");}
@font-face{font-family:"IBM Plex Serif";font-style:italic;font-weight:400;font-display:swap;src:url(data:font/woff2;base64,@@font:ibm-plex-serif-400-italic.woff2@@) format("woff2");}
@font-face{font-family:"IBM Plex Mono";font-style:normal;font-weight:400;font-display:swap;src:url(data:font/woff2;base64,@@font:ibm-plex-mono-400-normal.woff2@@) format("woff2");}
@font-face{font-family:"IBM Plex Mono";font-style:normal;font-weight:500;font-display:swap;src:url(data:font/woff2;base64,@@font:ibm-plex-mono-500-normal.woff2@@) format("woff2");}

:root, html, body {
  --font: "IBM Plex Sans", system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif;
  --font-mono: "IBM Plex Mono", ui-monospace, "Cascadia Code", "SF Mono", Menlo, Consolas, "Liberation Mono", monospace;
  --bg-inverse: #f9fbfb;
  --text-inverse: #f9fbfb;
  --accent: #714574;
  --accent-hover: color-mix(in srgb, #714574 88%, black);
  --accent-text: #714574;
  --accent-fg: #F6C4F8;
  --accent-soft: color-mix(in srgb, #F6C4F8 14%, #f9fbfb);
  --accent-soft-2: #F6C4F8;
  --danger: #bf5656;
  --danger-hover: color-mix(in srgb, #bf5656 88%, black);
  --danger-soft: color-mix(in srgb, color-mix(in srgb, #bf5656 14%, #f9fbfb) 14%, #f9fbfb);
  --success: #40632E;
  --success-soft: color-mix(in srgb, #BEE5AC 14%, #f9fbfb);
  --bg-subtle: #f9fbfb;
  --bg-muted: #f9fbfb;
  --grid-line: #e9ecef;
  --border: #e9ecef;
  --elev-border: #cfd6dc;
  --border-strong: #cfd6dc;
  --placeholder: #627889;
  --text-3: #627889;
  --text-2: #627889;
  --text: #0c161e;
  color-scheme: light;
}

:root[data-theme-resolved=dark] {
  --bg-inverse: #f9fbfb;
  --text-inverse: #f9fbfb;
  --accent: #AE6DB2;
  --accent-hover: color-mix(in srgb, #AE6DB2 88%, black);
  --accent-text: #AE6DB2;
  --accent-fg: #714574;
  --accent-soft: color-mix(in srgb, #714574 14%, #f9fbfb);
  --accent-soft-2: #714574;
  --danger: #bf5656;
  --danger-hover: color-mix(in srgb, color-mix(in srgb, #bf5656 14%, #f9fbfb) 88%, black);
  --danger-soft: color-mix(in srgb, #bf5656 14%, #f9fbfb);
  --success: #BEE5AC;
  --success-soft: color-mix(in srgb, #40632E 14%, #f9fbfb);
  --text: #e9ecef;
  --text-2: #b0bbc4;
  --text-3: #b0bbc4;
  --placeholder: #b0bbc4;
  --border-strong: #405769;
  --elev-border: #405769;
  --border: #253846;
  --grid-line: #253846;
  --bg-muted: #253846;
  --bg-subtle: #0c161e;
}

.btn.danger {
  color: #F6C4F8;
}

:root[data-theme-resolved=dark] .btn.danger {
  color: #bf5656;
}

.switch:after {
  background: #F6C4F8;
}

.avatar {
  color: #F6C4F8;
}

.base-icon {
  color: #F6C4F8;
}

.view-type-icon.vt-grid {
  color: #714574;
}

.view-type-icon.vt-kanban {
  color: #40632E;
}

.view-type-icon.vt-gallery {
  color: #714574;
}

:root[data-theme-resolved=dark] .view-type-icon.vt-grid {
  color: #AE6DB2;
}

:root[data-theme-resolved=dark] .view-type-icon.vt-kanban {
  color: #BEE5AC;
}

:root[data-theme-resolved=dark] .view-type-icon.vt-gallery {
  color: #AE6DB2;
}

.quick-icon {
  color: #F6C4F8;
}

.card-check {
  color: #F6C4F8;
}

.tl-bar {
  color: var(--bar-fg,#F6C4F8);
}

body { font-family: "IBM Plex Sans", system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif; }
</style>
