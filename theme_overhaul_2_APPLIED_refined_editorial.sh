python3 << 'PYEOF'
with open('/Users/ming/Downloads/Thesiswebsite/index.html', 'r') as f:
    html = f.read()

# ═══════════════════════════════════════════════════════════════
# PHASE 1: FONTS — revert to DM Sans + DM Mono, drop Syne
# ═══════════════════════════════════════════════════════════════
html = html.replace(
    "https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,700;0,9..40,800;1,9..40,300&family=Space+Mono:wght@400;700&family=Syne:wght@400;500;600;700;800&display=swap",
    "https://fonts.googleapis.com/css2?family=DM+Mono:ital,wght@0,300;0,400;0,500&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,700;0,9..40,800;1,9..40,300&display=swap"
)

# ═══════════════════════════════════════════════════════════════
# PHASE 2: CSS VARIABLES — refined palette
# ═══════════════════════════════════════════════════════════════
html = html.replace(
    ":root{--bg:#f0eee9;--surface:#ffffff;--text:#1a1a2e;--text-heavy:#0a0a1a;--muted:#6b6b80;--accent:#0047ff;--teal:#0d9488;--cyan:#0891b2;--radius:18px;--font-body:'DM Sans',sans-serif;--font-mono:'Space Mono',monospace;--font-display:'Syne',sans-serif}",
    ":root{--bg:#f4f6f9;--surface:#ffffff;--text:#1e293b;--text-heavy:#0f172a;--muted:#64748b;--accent:#0ea5e9;--teal:#0d9488;--cyan:#06b6d4;--radius:16px;--font-body:'DM Sans',sans-serif;--font-mono:'DM Mono',monospace;--grad:linear-gradient(135deg,#38bdf8,#0d9488)}"
)

# ═══════════════════════════════════════════════════════════════
# PHASE 3: FAVICON — blue-teal gradient circle
# ═══════════════════════════════════════════════════════════════
html = html.replace("stroke='%230047ff'", "stroke='%230ea5e9'")

# ═══════════════════════════════════════════════════════════════
# PHASE 4: NAV — clean, refined
# ═══════════════════════════════════════════════════════════════
html = html.replace(
    "nav{position:fixed;top:0;left:0;right:0;z-index:1000;background:rgba(240,238,233,0.85);backdrop-filter:blur(20px);-webkit-backdrop-filter:blur(20px);border-bottom:1px solid rgba(0,0,0,0.06);padding:18px 48px;display:flex;align-items:center;justify-content:space-between;transition:background 0.4s ease}",
    "nav{position:fixed;top:0;left:0;right:0;z-index:1000;background:rgba(244,246,249,0.88);backdrop-filter:blur(18px);-webkit-backdrop-filter:blur(18px);border-bottom:1px solid rgba(0,0,0,0.05);padding:16px 40px;display:flex;align-items:center;justify-content:space-between}"
)
html = html.replace(
    ".nav-logo{font-family:var(--font-display);font-weight:700;font-size:14px;letter-spacing:0.08em;text-transform:uppercase;color:var(--accent);display:flex;align-items:center;gap:10px;text-decoration:none;cursor:default}",
    ".nav-logo{font-family:var(--font-mono);font-weight:500;font-size:12px;letter-spacing:0.14em;text-transform:uppercase;color:var(--teal);display:flex;align-items:center;gap:9px;text-decoration:none;cursor:default}"
)
html = html.replace(
    ".nav-logo svg{width:24px;height:24px;flex-shrink:0;color:var(--accent)}",
    ".nav-logo svg{width:22px;height:22px;flex-shrink:0;color:var(--teal)}"
)
html = html.replace(
    ".nav-links a{font-family:var(--font-mono);font-size:11px;letter-spacing:0.08em;text-transform:uppercase;text-decoration:none;color:var(--muted);transition:color 0.3s,transform 0.2s}",
    ".nav-links a{font-family:var(--font-mono);font-size:11px;letter-spacing:0.06em;text-transform:uppercase;text-decoration:none;color:var(--muted);transition:color 0.3s}"
)
html = html.replace(
    ".nav-links a:hover{color:var(--accent)}",
    ".nav-links a:hover{color:var(--text)}"
)

# ═══════════════════════════════════════════════════════════════
# PHASE 5: HERO — light background, gradient mesh
# ═══════════════════════════════════════════════════════════════
html = html.replace(
    ".hero{min-height:100vh;display:flex;flex-direction:column;align-items:center;justify-content:center;text-align:center;padding:120px 24px 80px;position:relative;overflow:hidden;background:#0a0a1a}",
    ".hero{min-height:100vh;display:flex;flex-direction:column;align-items:center;justify-content:center;text-align:center;padding:120px 24px 80px;position:relative;overflow:hidden;background:var(--bg)}"
)
html = html.replace(
    ".hero::before{content:'';position:absolute;inset:0;background:radial-gradient(ellipse 120% 80% at 50% 45%,rgba(0,71,255,0.12),transparent 55%),radial-gradient(ellipse 80% 60% at 20% 80%,rgba(13,148,136,0.08),transparent 50%);z-index:1;pointer-events:none}",
    ".hero::before{content:'';position:absolute;inset:0;background:none;z-index:1;pointer-events:none}"
)
html = html.replace(
    ".hero>*{position:relative;z-index:2}",
    ".hero>*{position:relative;z-index:2}\n#heroCanvas{pointer-events:none}"
)
html = html.replace(
    ".hero-eyebrow{font-family:var(--font-mono);font-size:12px;letter-spacing:0.40em;text-transform:uppercase;color:rgba(0,71,255,0.8);margin-bottom:40px;font-weight:400;animation:subtlePulse 4s ease-in-out infinite}",
    ".hero-eyebrow{font-family:var(--font-mono);font-size:13px;letter-spacing:0.30em;text-transform:uppercase;color:var(--teal);margin-bottom:36px;font-weight:500;animation:subtlePulse 4s ease-in-out infinite}"
)
html = html.replace(
    "@keyframes subtlePulse{0%,100%{opacity:0.5;transform:translateY(0)}50%{opacity:1;transform:translateY(-4px)}}",
    "@keyframes subtlePulse{0%,100%{opacity:0.5;transform:translateY(0)}50%{opacity:1;transform:translateY(-5px)}}"
)
html = html.replace(
    ".hero h1{font-family:var(--font-display);font-weight:800;font-size:clamp(52px,9vw,120px);line-height:1.0;letter-spacing:-0.04em;color:#ffffff;max-width:1000px;animation:heroTextFloat 6s ease-in-out infinite;text-shadow:0 0 80px rgba(0,71,255,0.2)}",
    ".hero h1{font-weight:800;font-size:clamp(48px,8vw,100px);line-height:1.05;letter-spacing:-0.035em;color:var(--text-heavy);max-width:960px;animation:heroTextFloat 6s ease-in-out infinite}"
)
html = html.replace(
    "@keyframes heroTextFloat{0%,100%{transform:translateY(0) scale(1);letter-spacing:-0.04em}50%{transform:translateY(-10px) scale(1.008);letter-spacing:-0.032em}}",
    "@keyframes heroTextFloat{0%,100%{transform:translateY(0) scale(1);letter-spacing:-0.035em}50%{transform:translateY(-12px) scale(1.008);letter-spacing:-0.028em}}"
)
html = html.replace(
    ".hero h1 em{font-style:italic;font-weight:400;color:rgba(0,180,220,0.85)}",
    ".hero h1 em{font-style:italic;font-weight:300;color:var(--muted)}"
)
html = html.replace(
    ".hero-sub{font-weight:300;font-size:clamp(17px,2vw,21px);color:rgba(255,255,255,0.55);max-width:560px;margin-top:44px;margin-bottom:60px;line-height:1.8;animation:heroSubDrift 9s ease-in-out infinite 1.5s}",
    ".hero-sub{font-weight:300;font-size:clamp(17px,2vw,22px);color:var(--muted);max-width:560px;margin-top:40px;margin-bottom:56px;line-height:1.75;animation:heroSubDrift 9s ease-in-out infinite 1.5s}"
)
html = html.replace(
    "@keyframes heroSubDrift{0%,100%{transform:translateY(0);opacity:0.55}50%{transform:translateY(-6px);opacity:0.85}}",
    "@keyframes heroSubDrift{0%,100%{transform:translateY(0);opacity:0.75}50%{transform:translateY(-8px);opacity:1}}"
)

# ═══════════════════════════════════════════════════════════════
# PHASE 6: BUTTONS — soft gradient pills
# ═══════════════════════════════════════════════════════════════
html = html.replace(
    ".btn-primary{position:relative;display:inline-block;background:var(--accent);color:#fff;border:2px solid rgba(255,255,255,0.15);padding:24px 68px;border-radius:0;font-family:var(--font-display);font-size:13px;font-weight:700;letter-spacing:0.32em;text-transform:uppercase;text-shadow:none;cursor:pointer;overflow:hidden;transition:all 0.35s cubic-bezier(0.22,0.61,0.36,1);box-shadow:0 0 0 0 var(--accent);text-decoration:none}",
    ".btn-primary{position:relative;display:inline-block;background:var(--grad);color:#fff;border:none;padding:24px 68px;border-radius:120px;font-family:var(--font-mono);font-size:14px;font-weight:500;letter-spacing:0.28em;text-transform:uppercase;text-shadow:0 1px 3px rgba(0,0,0,0.15);cursor:pointer;overflow:hidden;transition:all 0.4s cubic-bezier(0.22,0.61,0.36,1);box-shadow:0 4px 24px rgba(14,165,233,0.3),0 1px 3px rgba(0,0,0,0.08);text-decoration:none}"
)
html = html.replace(
    ".btn-primary:hover{background:#fff;color:var(--accent);border-color:var(--accent);box-shadow:0 0 0 3px var(--accent);transform:none}",
    ".btn-primary:hover{box-shadow:0 8px 36px rgba(14,165,233,0.4),0 2px 6px rgba(0,0,0,0.1);transform:translateY(-2px)}"
)

# Sim button
html = html.replace(
    ".btn-sim{position:relative;display:inline-flex;align-items:center;gap:14px;background:var(--accent);color:#fff;border:2px solid var(--accent);padding:20px 52px;border-radius:0;font-family:var(--font-display);font-size:13px;font-weight:700;letter-spacing:0.25em;text-transform:uppercase;text-shadow:none;cursor:pointer;overflow:hidden;transition:all 0.35s cubic-bezier(0.22,0.61,0.36,1);box-shadow:none;text-decoration:none;animation:none}",
    ".btn-sim{position:relative;display:inline-flex;align-items:center;gap:14px;background:var(--grad);color:#fff;border:none;padding:22px 56px;border-radius:120px;font-family:var(--font-mono);font-size:14px;font-weight:500;letter-spacing:0.22em;text-transform:uppercase;text-shadow:0 1px 3px rgba(0,0,0,0.15);cursor:pointer;overflow:hidden;transition:all 0.35s cubic-bezier(0.22,0.61,0.36,1);box-shadow:0 4px 24px rgba(14,165,233,0.35);text-decoration:none;animation:simGlow 3s ease-in-out infinite}"
)
# Restore simGlow
html = html.replace(
    ".btn-sim::before{",
    "@keyframes simGlow{0%,100%{box-shadow:0 4px 24px rgba(14,165,233,0.35)}50%{box-shadow:0 6px 40px rgba(14,165,233,0.55)}}\n.btn-sim::before{"
)
html = html.replace(
    ".btn-sim:hover{background:#fff;color:var(--accent);border-color:var(--accent);box-shadow:0 0 0 3px var(--accent);transform:none;animation:none}",
    ".btn-sim:hover{box-shadow:0 10px 48px rgba(14,165,233,0.5);transform:translateY(-2px) scale(1.02);animation:none}"
)
html = html.replace(
    ".btn-sim:active{transform:scale(0.97);transition:all 0.1s ease}",
    ".btn-sim:active{transform:translateY(1px) scale(0.98);box-shadow:0 2px 12px rgba(14,165,233,0.3);transition:all 0.1s ease}"
)
html = html.replace(
    ".btn-sim .btn-ripple{background:radial-gradient(circle,rgba(0,71,255,0.3),transparent 70%)}",
    ".btn-sim .btn-ripple{background:radial-gradient(circle,rgba(200,245,255,0.55),transparent 70%)}"
)

# ═══════════════════════════════════════════════════════════════
# PHASE 7: SECTIONS — clean editorial typography
# ═══════════════════════════════════════════════════════════════
html = html.replace(
    ".sec-eyebrow{font-family:var(--font-mono);font-size:12px;letter-spacing:0.30em;text-transform:uppercase;color:var(--accent);margin-bottom:16px;font-weight:400}",
    ".sec-eyebrow{font-family:var(--font-mono);font-size:13px;letter-spacing:0.22em;text-transform:uppercase;color:var(--teal);margin-bottom:16px;font-weight:500}"
)
html = html.replace(
    ".sec-title{font-family:var(--font-display);font-weight:800;font-size:clamp(30px,5vw,56px);line-height:1.08;letter-spacing:-0.03em;color:var(--text-heavy)}",
    ".sec-title{font-weight:800;font-size:clamp(28px,4.5vw,52px);line-height:1.1;letter-spacing:-0.025em;color:var(--text-heavy)}"
)
html = html.replace(
    ".sec-rule{width:56px;height:3px;background:var(--accent);border:none;border-radius:0;margin:24px 0 0 0}",
    ".sec-rule{width:48px;height:3px;border:none;border-radius:2px;margin:20px 0 0 0}"
)
html = html.replace(
    ".sec-rule{background:var(--accent)}",
    ".sec-rule{background:var(--grad)}"
)

# Step numbers
html = html.replace(
    ".step-number{font-family:var(--font-display);font-size:64px;font-weight:800;color:rgba(0,71,255,0.15);line-height:1;margin-bottom:10px}",
    ".step-number{font-family:var(--font-mono);font-size:56px;font-weight:300;color:rgba(14,165,233,0.25);line-height:1;margin-bottom:8px}"
)
html = html.replace(
    ".step-label{font-family:var(--font-display);font-weight:700;font-size:18px;color:var(--text-heavy);margin-bottom:6px}",
    ".step-label{font-weight:700;font-size:17px;color:var(--text-heavy);margin-bottom:6px}"
)

# ═══════════════════════════════════════════════════════════════
# PHASE 8: CARDS — soft shadows, rounded
# ═══════════════════════════════════════════════════════════════
html = html.replace(
    ".concept-card{background:var(--surface);border-radius:2px;padding:36px 32px;position:relative;overflow:hidden;box-shadow:none;border:1px solid rgba(0,0,0,0.08);transition:box-shadow 0.3s,border-color 0.3s;display:flex;flex-direction:column}",
    ".concept-card{background:var(--surface);border-radius:16px;padding:36px 32px;position:relative;overflow:hidden;box-shadow:0 1px 3px rgba(0,0,0,0.04);transition:box-shadow 0.3s;display:flex;flex-direction:column}"
)
html = html.replace(
    ".concept-card:hover{border-color:var(--accent);box-shadow:0 8px 32px rgba(0,71,255,0.08)}",
    ".concept-card:hover{box-shadow:0 8px 30px rgba(14,165,233,0.10),0 2px 8px rgba(0,0,0,0.04)}"
)
html = html.replace(
    ".card-title{font-family:var(--font-display);font-weight:700;font-size:19px;color:var(--text-heavy);margin-bottom:12px}",
    ".card-title{font-weight:700;font-size:19px;color:var(--text-heavy);margin-bottom:12px}"
)
html = html.replace(
    ".card-icon{width:44px;height:44px;border-radius:2px;background:var(--bg);display:flex;align-items:center;justify-content:center;margin-bottom:20px}",
    ".card-icon{width:44px;height:44px;border-radius:10px;background:var(--bg);display:flex;align-items:center;justify-content:center;margin-bottom:20px}"
)
# Card expand
html = html.replace(
    ".card-expand{display:inline-flex;align-items:center;gap:8px;margin-top:auto;padding-top:18px;cursor:pointer;border:1px solid rgba(0,71,255,0.25);background:rgba(0,71,255,0.04);padding:8px 16px;border-radius:0;font-family:var(--font-mono);font-size:11px;letter-spacing:0.06em;color:var(--accent);font-weight:400;transition:all 0.3s cubic-bezier(0.4,0,0.2,1)}",
    ".card-expand{display:inline-flex;align-items:center;gap:8px;margin-top:auto;padding-top:18px;cursor:pointer;border:1px solid rgba(14,165,233,0.25);background:rgba(14,165,233,0.05);padding:8px 16px;border-radius:24px;font-family:var(--font-mono);font-size:11px;letter-spacing:0.04em;color:var(--accent);font-weight:500;transition:all 0.3s cubic-bezier(0.4,0,0.2,1)}"
)
html = html.replace(
    ".card-expand:hover{background:rgba(0,71,255,0.08);border-color:rgba(0,71,255,0.5);transform:none;box-shadow:none}",
    ".card-expand:hover{background:rgba(14,165,233,0.10);border-color:rgba(14,165,233,0.4);transform:translateY(-1px);box-shadow:0 4px 12px rgba(14,165,233,0.10)}"
)
html = html.replace(
    ".card-expand.open{background:var(--accent);color:#fff;border-color:var(--accent)}",
    ".card-expand.open{background:var(--teal);color:#fff;border-color:var(--teal)}"
)
html = html.replace(
    ".card-expand.open:hover{background:#0038cc}",
    ".card-expand.open:hover{background:#0b8377}"
)
# Card detail
html = html.replace(
    ".card-detail{max-height:0;overflow:hidden;transition:max-height 0.45s cubic-bezier(0.4,0,0.2,1),opacity 0.35s ease;opacity:0;background:var(--surface);border-radius:0;border:1px solid rgba(0,0,0,0.08);border-top:none;margin-top:-1px}",
    ".card-detail{max-height:0;overflow:hidden;transition:max-height 0.45s cubic-bezier(0.4,0,0.2,1),opacity 0.35s ease;opacity:0;background:var(--surface);border-radius:0 0 16px 16px;margin-top:-8px}"
)
# Detail tags
html = html.replace(
    ".detail-tag{display:inline-block;font-family:var(--font-mono);font-size:10px;letter-spacing:0.04em;padding:4px 10px;border-radius:0;background:rgba(0,71,255,0.06);color:var(--accent);margin-right:6px;margin-bottom:6px;border:1px solid rgba(0,71,255,0.12)}",
    ".detail-tag{display:inline-block;font-family:var(--font-mono);font-size:11px;letter-spacing:0.04em;padding:3px 10px;border-radius:6px;background:rgba(14,165,233,0.08);color:var(--teal);margin-right:6px;margin-bottom:6px}"
)

# ═══════════════════════════════════════════════════════════════
# PHASE 9: SIMULATOR — soft, editorial
# ═══════════════════════════════════════════════════════════════
html = html.replace(
    ".display-card{background:var(--surface);border-radius:2px;padding:24px;box-shadow:none;border:1px solid rgba(0,0,0,0.08);margin-bottom:20px}",
    ".display-card{background:var(--surface);border-radius:16px;padding:24px;box-shadow:0 1px 4px rgba(0,0,0,0.05);margin-bottom:20px}"
)
html = html.replace(
    ".display-card-label{font-family:var(--font-mono);font-size:11px;letter-spacing:0.14em;text-transform:uppercase;color:var(--accent);margin-bottom:16px;font-weight:400}",
    ".display-card-label{font-family:var(--font-mono);font-size:11px;letter-spacing:0.12em;text-transform:uppercase;color:var(--teal);margin-bottom:16px;font-weight:500}"
)
html = html.replace(
    ".photo-card{background:var(--surface);border-radius:2px;overflow:hidden;border:1px solid rgba(0,0,0,0.08)}",
    ".photo-card{background:var(--surface);border-radius:16px;overflow:hidden;box-shadow:0 1px 4px rgba(0,0,0,0.05)}"
)
html = html.replace(
    ".photo-label{font-family:var(--font-mono);font-size:11px;letter-spacing:0.14em;text-transform:uppercase;color:var(--accent);margin-bottom:12px;font-weight:400}",
    ".photo-label{font-family:var(--font-mono);font-size:11px;letter-spacing:0.12em;text-transform:uppercase;color:var(--teal);margin-bottom:12px;font-weight:500}"
)
html = html.replace(
    ".quick-title{font-family:var(--font-display);font-weight:700;font-size:20px;color:var(--text-heavy);margin-bottom:6px}",
    ".quick-title{font-weight:700;font-size:20px;color:var(--text-heavy);margin-bottom:6px}"
)
html = html.replace(
    ".param-title{font-family:var(--font-display);font-weight:700;font-size:18px;color:var(--text-heavy);display:flex;align-items:center;gap:10px}",
    ".param-title{font-weight:700;font-size:18px;color:var(--text-heavy);display:flex;align-items:center;gap:10px}"
)
html = html.replace(
    ".param-badge{font-family:var(--font-mono);font-size:11px;letter-spacing:0.06em;text-transform:uppercase;font-weight:400;padding:3px 10px;border-radius:0;background:rgba(0,71,255,0.06);color:var(--accent);border:1px solid rgba(0,71,255,0.12)}",
    ".param-badge{font-family:var(--font-mono);font-size:11px;letter-spacing:0.06em;text-transform:uppercase;font-weight:500;padding:3px 10px;border-radius:6px;background:rgba(14,165,233,0.08);color:var(--teal)}"
)
html = html.replace(
    ".param-value{font-family:var(--font-mono);font-size:15px;font-weight:700;color:var(--accent);background:rgba(0,71,255,0.05);padding:4px 12px;border-radius:0;border:1px solid rgba(0,71,255,0.1)}",
    ".param-value{font-family:var(--font-mono);font-size:15px;font-weight:500;color:var(--teal);background:rgba(14,165,233,0.05);padding:4px 12px;border-radius:8px}"
)
# Sliders
html = html.replace(
    ".slider-wrap input[type=\"range\"]{-webkit-appearance:none;appearance:none;width:100%;height:2px;background:rgba(0,71,255,0.18);border-radius:0;outline:none;cursor:pointer}",
    ".slider-wrap input[type=\"range\"]{-webkit-appearance:none;appearance:none;width:100%;height:3px;background:rgba(14,165,233,0.20);border-radius:2px;outline:none;cursor:pointer}"
)
html = html.replace(
    ".slider-wrap input[type=\"range\"]::-webkit-slider-thumb{-webkit-appearance:none;width:16px;height:16px;background:var(--accent);border:2px solid var(--surface);border-radius:0;cursor:pointer;box-shadow:0 2px 8px rgba(0,71,255,0.3)}",
    ".slider-wrap input[type=\"range\"]::-webkit-slider-thumb{-webkit-appearance:none;width:16px;height:16px;background:var(--teal);border:2.5px solid var(--surface);border-radius:50%;cursor:pointer;box-shadow:0 1px 4px rgba(13,148,136,0.35)}"
)
html = html.replace(
    ".slider-wrap input[type=\"range\"]::-moz-range-thumb{width:16px;height:16px;background:var(--accent);border:2px solid var(--surface);border-radius:0;cursor:pointer;box-shadow:0 2px 8px rgba(0,71,255,0.3)}",
    ".slider-wrap input[type=\"range\"]::-moz-range-thumb{width:16px;height:16px;background:var(--teal);border:2.5px solid var(--surface);border-radius:50%;cursor:pointer;box-shadow:0 1px 4px rgba(13,148,136,0.35)}"
)
# FPS buttons
html = html.replace(
    ".fps-num{font-family:var(--font-mono);font-size:15px;font-weight:700;padding:10px 0;border:1px solid rgba(0,0,0,0.10);border-radius:0;",
    ".fps-num{font-family:var(--font-mono);font-size:15px;font-weight:500;padding:10px 0;border:1px solid rgba(0,0,0,0.10);border-radius:10px;"
)
html = html.replace(
    ".fps-num:hover{border-color:rgba(0,71,255,0.35);background:rgba(0,71,255,0.04)}",
    ".fps-num:hover{border-color:rgba(14,165,233,0.35);background:rgba(14,165,233,0.04)}"
)
html = html.replace(
    ".preset-pill:hover{border-color:rgba(0,71,255,0.3);background:rgba(0,71,255,0.04)}",
    ".preset-pill:hover{border-color:rgba(14,165,233,0.3);background:rgba(14,165,233,0.04)}"
)
html = html.replace(
    "border:1px solid rgba(0,0,0,0.10);border-radius:0;padding:8px 18px;cursor:pointer;transition:all 0.25s;display:inline-flex;align-items:center;gap:6px}",
    "border:1px solid rgba(0,0,0,0.10);border-radius:24px;padding:8px 18px;cursor:pointer;transition:all 0.25s;display:inline-flex;align-items:center;gap:6px}"
)

# ═══════════════════════════════════════════════════════════════
# PHASE 10: FLIP CARDS — refined
# ═══════════════════════════════════════════════════════════════
html = html.replace(
    ".flip-cat-title{font-family:var(--font-display);font-weight:700;font-size:24px;color:var(--text-heavy);letter-spacing:-0.01em}",
    ".flip-cat-title{font-weight:700;font-size:24px;color:var(--text-heavy);letter-spacing:-0.01em}"
)
html = html.replace(
    ".flip-front-value{font-family:var(--font-display);font-size:44px;font-weight:800;color:var(--text-heavy);letter-spacing:-0.02em;display:inline-block;transition:transform 0.4s cubic-bezier(0.34,1.56,0.64,1)}",
    ".flip-front-value{font-family:var(--font-mono);font-size:42px;font-weight:500;color:var(--text-heavy);letter-spacing:-0.02em;display:inline-block;transition:transform 0.4s cubic-bezier(0.34,1.56,0.64,1)}"
)
html = html.replace(
    ".flip-front{background:var(--surface);box-shadow:none;border:1px solid rgba(0,0,0,0.08);display:flex;flex-direction:column;justify-content:space-between;overflow:hidden;transition:box-shadow 0.35s ease,border-color 0.35s ease}",
    ".flip-front{background:var(--surface);box-shadow:0 1px 4px rgba(0,0,0,0.05);display:flex;flex-direction:column;justify-content:space-between;overflow:hidden;transition:box-shadow 0.35s ease}"
)
html = html.replace(
    ".flip-card:not(.flipped):hover .flip-front{box-shadow:0 20px 52px rgba(0,71,255,0.1);border-color:var(--accent)}",
    ".flip-card:not(.flipped):hover .flip-front{box-shadow:0 20px 52px rgba(14,165,233,0.12),0 4px 12px rgba(0,0,0,0.06)}"
)
html = html.replace(
    ".flip-front,.flip-back{position:absolute;top:0;left:0;width:100%;height:100%;backface-visibility:hidden;border-radius:2px;padding:28px 24px;overflow:hidden}",
    ".flip-front,.flip-back{position:absolute;top:0;left:0;width:100%;height:100%;backface-visibility:hidden;border-radius:14px;padding:28px 24px;overflow:hidden}"
)

# ═══════════════════════════════════════════════════════════════
# PHASE 11: TAKEAWAY + SECTIONS
# ═══════════════════════════════════════════════════════════════
html = html.replace(
    ".takeaway{background:var(--surface);border-radius:2px;padding:48px 56px;text-align:center;margin-top:72px;box-shadow:none;border:2px solid var(--accent)}",
    ".takeaway{background:var(--surface);border-radius:16px;padding:40px 48px;text-align:center;margin-top:64px;box-shadow:0 1px 4px rgba(0,0,0,0.04);border:1px solid rgba(14,165,233,0.15)}"
)
html = html.replace(
    ".takeaway h3{font-family:var(--font-display);font-weight:800;font-size:28px;color:var(--text-heavy);margin-bottom:12px}",
    ".takeaway h3{font-weight:800;font-size:26px;color:var(--text-heavy);margin-bottom:10px}"
)
html = html.replace(
    ".takeaway-emblem{width:44px;height:44px;margin:0 auto 22px;color:var(--accent);opacity:0.45}",
    ".takeaway-emblem{width:44px;height:44px;margin:0 auto 22px;color:var(--teal);opacity:0.55}"
)
# Section backgrounds
html = html.replace(
    ".exhibit-prompt{background:var(--bg);padding:100px 40px 100px;text-align:center}",
    ".exhibit-prompt{background:linear-gradient(180deg,var(--bg) 0%,#edf2f8 100%);padding:100px 40px 100px;text-align:center}"
)
html = html.replace(
    ".exhibit-prompt{background:var(--bg);position:relative}",
    ".exhibit-prompt{background:linear-gradient(180deg,var(--bg) 0%,#edf2f8 100%);position:relative}"
)
html = html.replace(
    ".exhibit-prompt::before{content:'';position:absolute;top:0;left:10%;right:10%;height:1px;background:linear-gradient(90deg,transparent,rgba(0,71,255,0.15),transparent)}",
    ".exhibit-prompt::before{content:'';position:absolute;top:0;left:10%;right:10%;height:1px;background:linear-gradient(90deg,transparent,rgba(14,165,233,0.18),rgba(13,148,136,0.12),transparent)}"
)
html = html.replace(
    "#matters{padding:100px 40px 100px;background:var(--bg);position:relative}",
    "#matters{padding:100px 40px 100px;background:linear-gradient(180deg,var(--bg) 0%,#edf2f8 25%,#eef3f7 50%,#edf2f8 75%,var(--bg) 100%);position:relative}"
)
html = html.replace(
    "#matters::before{content:'';position:absolute;top:0;left:10%;right:10%;height:1px;background:linear-gradient(90deg,transparent,rgba(0,71,255,0.15),transparent)}",
    "#matters::before{content:'';position:absolute;top:0;left:10%;right:10%;height:1px;background:linear-gradient(90deg,transparent,rgba(14,165,233,0.18),rgba(13,148,136,0.12),transparent)}"
)

# Hero watermark
html = html.replace(
    ".hero-watermark{position:absolute;bottom:-60px;right:-60px;width:540px;height:540px;opacity:0.06;color:rgba(0,71,255,0.5);pointer-events:none;z-index:1}",
    ".hero-watermark{position:absolute;bottom:-60px;right:-60px;width:540px;height:540px;opacity:0.04;color:var(--teal);pointer-events:none;z-index:1}"
)
# Fade-up
html = html.replace(
    ".fade-up{opacity:0;transform:translateY(40px);transition:opacity 0.8s cubic-bezier(0.22,0.61,0.36,1),transform 0.8s cubic-bezier(0.22,0.61,0.36,1)}",
    ".fade-up{opacity:0;transform:translateY(28px);transition:opacity 0.7s ease,transform 0.7s ease}"
)

# ═══════════════════════════════════════════════════════════════
# PHASE 12: HERO CANVAS — flowing gradient mesh
# ═══════════════════════════════════════════════════════════════
# Replace the old particle field JS with a flowing gradient mesh
old_hero_js_start = "/* HERO PARTICLE FIELD */"
old_hero_js_end = "resize();draw()\n})();"

start_i = html.find(old_hero_js_start)
end_i = html.find(old_hero_js_end)
if start_i >= 0 and end_i >= 0:
    end_i += len(old_hero_js_end)
    new_hero_js = """/* HERO GRADIENT MESH */
(function(){
const c=document.getElementById('heroCanvas');if(!c)return;
const ctx=c.getContext('2d');
let W,H;
// Simplex noise
const F2=0.5*(Math.sqrt(3)-1),G2=(3-Math.sqrt(3))/6;
const perm=new Uint8Array(512);const grad=[[1,1],[-1,1],[1,-1],[-1,-1],[1,0],[-1,0],[0,1],[0,-1]];
(function(){const p=new Uint8Array(256);for(let i=0;i<256;i++)p[i]=i;for(let i=255;i>0;i--){const j=Math.floor(Math.random()*(i+1));[p[i],p[j]]=[p[j],p[i]]}for(let i=0;i<512;i++)perm[i]=p[i&255]})();
function dot2(g,x,y){return g[0]*x+g[1]*y}
function noise(x,y){const s=(x+y)*F2;const i=Math.floor(x+s),j=Math.floor(y+s);const t=(i+j)*G2;const x0=x-(i-t),y0=y-(j-t);let i1,j1;if(x0>y0){i1=1;j1=0}else{i1=0;j1=1}const x1=x0-i1+G2,y1=y0-j1+G2,x2=x0-1+2*G2,y2=y0-1+2*G2;const ii=i&255,jj=j&255;let n0=0,n1=0,n2=0;let t0=0.5-x0*x0-y0*y0;if(t0>0){t0*=t0;n0=t0*t0*dot2(grad[perm[ii+perm[jj]]%8],x0,y0)}let t1=0.5-x1*x1-y1*y1;if(t1>0){t1*=t1;n1=t1*t1*dot2(grad[perm[ii+i1+perm[jj+j1]]%8],x1,y1)}let t2=0.5-x2*x2-y2*y2;if(t2>0){t2*=t2;n2=t2*t2*dot2(grad[perm[ii+1+perm[jj+1]]%8],x2,y2)}return 70*(n0+n1+n2)}
function resize(){const dpr=Math.min(devicePixelRatio,2);W=c.offsetWidth;H=c.offsetHeight;c.width=W*dpr;c.height=H*dpr;ctx.scale(dpr,dpr)}
let time=0;
// Color palette: light blues, teals, soft cyans
const palette=[
  [200,230,255],  // pale blue
  [180,220,248],  // sky
  [170,235,230],  // pale teal
  [210,240,250],  // ice
  [190,245,235],  // mint
  [220,235,255],  // lavender blue
];
function draw(){
time+=0.0015;
ctx.clearRect(0,0,W,H);
// Draw large soft gradient blobs
const blobs=[
  {x:0.25,y:0.35,r:0.55,speed:0.7,phase:0},
  {x:0.7,y:0.6,r:0.5,speed:0.5,phase:2},
  {x:0.5,y:0.2,r:0.45,speed:0.8,phase:4},
  {x:0.15,y:0.7,r:0.4,speed:0.6,phase:1},
  {x:0.85,y:0.3,r:0.35,speed:0.9,phase:3},
  {x:0.4,y:0.8,r:0.42,speed:0.55,phase:5},
];
for(let i=0;i<blobs.length;i++){
  const b=blobs[i];
  const nx=noise(b.x*2+time*b.speed,b.y*2+b.phase)*0.12;
  const ny=noise(b.y*2+b.phase,b.x*2+time*b.speed)*0.12;
  const cx=(b.x+nx)*W;
  const cy=(b.y+ny)*H;
  const r=b.r*Math.max(W,H);
  const col=palette[i%palette.length];
  const grd=ctx.createRadialGradient(cx,cy,0,cx,cy,r);
  grd.addColorStop(0,'rgba('+col[0]+','+col[1]+','+col[2]+',0.45)');
  grd.addColorStop(0.5,'rgba('+col[0]+','+col[1]+','+col[2]+',0.15)');
  grd.addColorStop(1,'rgba('+col[0]+','+col[1]+','+col[2]+',0)');
  ctx.fillStyle=grd;
  ctx.fillRect(0,0,W,H);
}
// Subtle accent blobs (blue + teal)
const n1=noise(time*0.6,0.5)*0.2;
const n2=noise(0.5,time*0.5)*0.2;
const grd1=ctx.createRadialGradient((0.3+n1)*W,0.4*H,0,(0.3+n1)*W,0.4*H,W*0.4);
grd1.addColorStop(0,'rgba(56,189,248,0.18)');
grd1.addColorStop(0.6,'rgba(56,189,248,0.04)');
grd1.addColorStop(1,'transparent');
ctx.fillStyle=grd1;ctx.fillRect(0,0,W,H);
const grd2=ctx.createRadialGradient((0.7+n2)*W,0.65*H,0,(0.7+n2)*W,0.65*H,W*0.35);
grd2.addColorStop(0,'rgba(13,148,136,0.14)');
grd2.addColorStop(0.6,'rgba(13,148,136,0.03)');
grd2.addColorStop(1,'transparent');
ctx.fillStyle=grd2;ctx.fillRect(0,0,W,H);
requestAnimationFrame(draw)}
window.addEventListener('resize',resize);
resize();draw()
})();"""
    html = html[:start_i] + new_hero_js + html[end_i:]

with open('/Users/ming/Downloads/Thesiswebsite/index.html', 'w') as f:
    f.write(html)

print("SUCCESS - Refined editorial theme applied")
PYEOF