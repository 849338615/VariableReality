python3 << 'PYEOF'
import re

with open('/Users/ming/Downloads/Thesiswebsite/index.html', 'r') as f:
    html = f.read()

# ═══════════════════════════════════════════════════════════════════
# 1. TYPOGRAPHY: Add Syne + Space Mono fonts
# ═══════════════════════════════════════════════════════════════════
html = html.replace(
    "https://fonts.googleapis.com/css2?family=DM+Mono:ital,wght@0,300;0,400;0,500&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,700;0,9..40,800;1,9..40,300&display=swap",
    "https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,700;0,9..40,800;1,9..40,300&family=Space+Mono:wght@400;700&family=Syne:wght@400;500;600;700;800&display=swap"
)

# ═══════════════════════════════════════════════════════════════════
# 2. CSS VARIABLES: New color system + fonts
# ═══════════════════════════════════════════════════════════════════
html = html.replace(
    ":root{--bg:#edf1f5;--surface:#fff;--text:#141c2e;--text-heavy:#0d1520;--muted:#5d6b82;--accent:#2563eb;--teal:#0d9488;--cyan:#0891b2;--radius:18px;--font-body:'DM Sans',sans-serif;--font-mono:'DM Mono',monospace}",
    ":root{--bg:#f0eee9;--surface:#ffffff;--text:#1a1a2e;--text-heavy:#0a0a1a;--muted:#6b6b80;--accent:#0047ff;--teal:#0d9488;--cyan:#0891b2;--radius:18px;--font-body:'DM Sans',sans-serif;--font-mono:'Space Mono',monospace;--font-display:'Syne',sans-serif}"
)

# ═══════════════════════════════════════════════════════════════════
# 3. FAVICON: Update teal to blue in favicon
# ═══════════════════════════════════════════════════════════════════
html = html.replace("stroke='%230d9488'", "stroke='%230047ff'")

# ═══════════════════════════════════════════════════════════════════
# 4. NAV: Bold experimental treatment
# ═══════════════════════════════════════════════════════════════════
html = html.replace(
    "nav{position:fixed;top:0;left:0;right:0;z-index:1000;background:rgba(237,241,245,0.82);backdrop-filter:blur(16px);-webkit-backdrop-filter:blur(16px);border-bottom:1px solid rgba(0,0,0,0.05);padding:16px 40px;display:flex;align-items:center;justify-content:space-between}",
    "nav{position:fixed;top:0;left:0;right:0;z-index:1000;background:rgba(240,238,233,0.85);backdrop-filter:blur(20px);-webkit-backdrop-filter:blur(20px);border-bottom:1px solid rgba(0,0,0,0.06);padding:18px 48px;display:flex;align-items:center;justify-content:space-between;transition:background 0.4s ease}"
)
html = html.replace(
    ".nav-logo{font-family:var(--font-mono);font-weight:500;font-size:12px;letter-spacing:0.14em;text-transform:uppercase;color:var(--teal);display:flex;align-items:center;gap:9px;text-decoration:none;cursor:default}",
    ".nav-logo{font-family:var(--font-display);font-weight:700;font-size:14px;letter-spacing:0.08em;text-transform:uppercase;color:var(--accent);display:flex;align-items:center;gap:10px;text-decoration:none;cursor:default}"
)
html = html.replace(
    ".nav-logo svg{width:22px;height:22px;flex-shrink:0;color:var(--teal)}",
    ".nav-logo svg{width:24px;height:24px;flex-shrink:0;color:var(--accent)}"
)
html = html.replace(
    ".nav-links a{font-family:var(--font-mono);font-size:11px;letter-spacing:0.06em;text-transform:uppercase;text-decoration:none;color:var(--muted);transition:color 0.3s}",
    ".nav-links a{font-family:var(--font-mono);font-size:11px;letter-spacing:0.08em;text-transform:uppercase;text-decoration:none;color:var(--muted);transition:color 0.3s,transform 0.2s}"
)
html = html.replace(
    ".nav-links a:hover{color:var(--text)}",
    ".nav-links a:hover{color:var(--accent)}"
)

# ═══════════════════════════════════════════════════════════════════
# 5. HERO: Dramatic redesign
# ═══════════════════════════════════════════════════════════════════
html = html.replace(
    ".hero{min-height:100vh;display:flex;flex-direction:column;align-items:center;justify-content:center;text-align:center;padding:120px 24px 80px;position:relative;overflow:hidden;background:#edf1f5}",
    ".hero{min-height:100vh;display:flex;flex-direction:column;align-items:center;justify-content:center;text-align:center;padding:120px 24px 80px;position:relative;overflow:hidden;background:#0a0a1a}"
)
# Replace hero gradient background
html = html.replace(
    ".hero::before{content:'';position:absolute;inset:0;background:linear-gradient(135deg,#c8daf0 0%,#b8d4e8 15%,#d0e0f5 30%,#bce8e0 45%,#d5dff5 60%,#c0d8f0 75%,#d8e8f0 90%,#edf1f5 100%);background-size:400% 400%;animation:heroGradient 10s ease infinite;z-index:0}",
    ".hero::before{content:'';position:absolute;inset:0;background:radial-gradient(ellipse 120% 80% at 50% 45%,rgba(0,71,255,0.12),transparent 55%),radial-gradient(ellipse 80% 60% at 20% 80%,rgba(13,148,136,0.08),transparent 50%);z-index:1;pointer-events:none}"
)
html = html.replace(
    ".hero::after{content:'';position:absolute;inset:0;background:radial-gradient(ellipse 70% 60% at 50% 40%,rgba(13,148,136,0.10),rgba(37,99,235,0.04) 50%,transparent 80%);z-index:0}",
    ".hero::after{content:'';position:absolute;inset:0;background:none;z-index:0}\n#heroCanvas{position:absolute;inset:0;z-index:0;width:100%;height:100%}"
)
# Hero gradient keyframes - repurpose
html = html.replace(
    "@keyframes heroGradient{0%{background-position:0% 50%}50%{background-position:100% 50%}100%{background-position:0% 50%}}",
    ""
)
html = html.replace(
    ".hero>*{position:relative;z-index:1}",
    ".hero>*{position:relative;z-index:2}"
)
# Hero eyebrow
html = html.replace(
    ".hero-eyebrow{font-family:var(--font-mono);font-size:13px;letter-spacing:0.30em;text-transform:uppercase;color:var(--teal);margin-bottom:36px;font-weight:500;animation:subtlePulse 4s ease-in-out infinite}",
    ".hero-eyebrow{font-family:var(--font-mono);font-size:12px;letter-spacing:0.40em;text-transform:uppercase;color:rgba(0,71,255,0.8);margin-bottom:40px;font-weight:400;animation:subtlePulse 4s ease-in-out infinite}"
)
html = html.replace(
    "@keyframes subtlePulse{0%,100%{opacity:0.45;transform:translateY(0)}50%{opacity:1;transform:translateY(-5px)}}",
    "@keyframes subtlePulse{0%,100%{opacity:0.5;transform:translateY(0)}50%{opacity:1;transform:translateY(-4px)}}"
)
# Hero h1
html = html.replace(
    ".hero h1{font-weight:800;font-size:clamp(48px,8vw,100px);line-height:1.05;letter-spacing:-0.035em;color:var(--text-heavy);max-width:960px;animation:heroTextFloat 6s ease-in-out infinite}",
    ".hero h1{font-family:var(--font-display);font-weight:800;font-size:clamp(52px,9vw,120px);line-height:1.0;letter-spacing:-0.04em;color:#ffffff;max-width:1000px;animation:heroTextFloat 6s ease-in-out infinite;text-shadow:0 0 80px rgba(0,71,255,0.2)}"
)
html = html.replace(
    "@keyframes heroTextFloat{0%,100%{transform:translateY(0) scale(1);letter-spacing:-0.035em}50%{transform:translateY(-14px) scale(1.010);letter-spacing:-0.026em}}",
    "@keyframes heroTextFloat{0%,100%{transform:translateY(0) scale(1);letter-spacing:-0.04em}50%{transform:translateY(-10px) scale(1.008);letter-spacing:-0.032em}}"
)
html = html.replace(
    ".hero h1 em{font-style:italic;font-weight:300;color:var(--muted)}",
    ".hero h1 em{font-style:italic;font-weight:400;color:rgba(0,180,220,0.85)}"
)
# Hero sub
html = html.replace(
    ".hero-sub{font-weight:300;font-size:clamp(17px,2vw,22px);color:var(--muted);max-width:560px;margin-top:40px;margin-bottom:56px;line-height:1.75;animation:heroSubDrift 9s ease-in-out infinite 1.5s}",
    ".hero-sub{font-weight:300;font-size:clamp(17px,2vw,21px);color:rgba(255,255,255,0.55);max-width:560px;margin-top:44px;margin-bottom:60px;line-height:1.8;animation:heroSubDrift 9s ease-in-out infinite 1.5s}"
)
html = html.replace(
    "@keyframes heroSubDrift{0%,100%{transform:translateY(0);opacity:0.75}50%{transform:translateY(-8px);opacity:1}}",
    "@keyframes heroSubDrift{0%,100%{transform:translateY(0);opacity:0.55}50%{transform:translateY(-6px);opacity:0.85}}"
)

# ═══════════════════════════════════════════════════════════════════
# 6. BUTTONS: New experimental style
# ═══════════════════════════════════════════════════════════════════
html = html.replace(
    ".btn-primary{position:relative;display:inline-block;background:linear-gradient(160deg,rgba(30,50,120,0.90),rgba(10,30,90,0.96));color:#fff;border:1px solid rgba(120,170,255,0.45);padding:26px 72px;border-radius:120px;font-family:var(--font-mono);font-size:14px;font-weight:600;letter-spacing:0.28em;text-transform:uppercase;text-shadow:0 0 16px rgba(140,190,255,0.7),0 1px 4px rgba(0,0,40,0.9);backdrop-filter:blur(20px);cursor:pointer;overflow:hidden;transition:all 0.4s cubic-bezier(0.22,0.61,0.36,1);box-shadow:0 4px 30px rgba(10,20,80,0.25),0 1px 3px rgba(0,0,40,0.15),inset 0 1px 0 rgba(120,170,255,0.15);text-decoration:none}",
    ".btn-primary{position:relative;display:inline-block;background:var(--accent);color:#fff;border:2px solid rgba(255,255,255,0.15);padding:24px 68px;border-radius:0;font-family:var(--font-display);font-size:13px;font-weight:700;letter-spacing:0.32em;text-transform:uppercase;text-shadow:none;cursor:pointer;overflow:hidden;transition:all 0.35s cubic-bezier(0.22,0.61,0.36,1);box-shadow:0 0 0 0 var(--accent);text-decoration:none}"
)
html = html.replace(
    ".btn-primary:hover{background:linear-gradient(160deg,rgba(40,65,160,0.95),rgba(15,40,120,0.99));box-shadow:0 8px 40px rgba(10,20,80,0.35);transform:translateY(-1px)}",
    ".btn-primary:hover{background:#fff;color:var(--accent);border-color:var(--accent);box-shadow:0 0 0 3px var(--accent);transform:none}"
)

# Sim button
html = html.replace(
    ".btn-sim{position:relative;display:inline-flex;align-items:center;gap:14px;background:linear-gradient(135deg,#0d9488 0%,#0891b2 100%);color:#fff;border:1px solid rgba(255,255,255,0.22);padding:22px 56px;border-radius:120px;font-family:var(--font-mono);font-size:14px;font-weight:600;letter-spacing:0.22em;text-transform:uppercase;text-shadow:0 1px 4px rgba(0,50,40,0.45);cursor:pointer;overflow:hidden;transition:all 0.35s cubic-bezier(0.22,0.61,0.36,1);box-shadow:0 4px 28px rgba(13,148,136,0.45),0 1px 4px rgba(0,60,50,0.20),inset 0 1px 0 rgba(255,255,255,0.20);text-decoration:none;animation:simGlow 3s ease-in-out infinite}",
    ".btn-sim{position:relative;display:inline-flex;align-items:center;gap:14px;background:var(--accent);color:#fff;border:2px solid var(--accent);padding:20px 52px;border-radius:0;font-family:var(--font-display);font-size:13px;font-weight:700;letter-spacing:0.25em;text-transform:uppercase;text-shadow:none;cursor:pointer;overflow:hidden;transition:all 0.35s cubic-bezier(0.22,0.61,0.36,1);box-shadow:none;text-decoration:none;animation:none}"
)
html = html.replace(
    "@keyframes simGlow{0%,100%{box-shadow:0 4px 28px rgba(13,148,136,0.45),0 1px 4px rgba(0,60,50,0.20),inset 0 1px 0 rgba(255,255,255,0.20)}50%{box-shadow:0 6px 52px rgba(13,148,136,0.72),0 2px 10px rgba(0,60,50,0.25),inset 0 1px 0 rgba(255,255,255,0.26)}}",
    ""
)
html = html.replace(
    ".btn-sim::before{content:'';position:absolute;top:0;left:-60%;width:60%;height:100%;background:linear-gradient(90deg,transparent,rgba(255,255,255,0.22),transparent);transform:skewX(-20deg);animation:shimmer 3s infinite 0.5s}",
    ".btn-sim::before{content:'';position:absolute;top:0;left:-60%;width:60%;height:100%;background:linear-gradient(90deg,transparent,rgba(255,255,255,0.15),transparent);transform:skewX(-20deg);animation:shimmer 3s infinite 0.5s}"
)
html = html.replace(
    ".btn-sim:hover{background:linear-gradient(135deg,#0faa9c 0%,#09b0d4 100%);box-shadow:0 10px 56px rgba(13,148,136,0.78),0 2px 8px rgba(0,60,50,0.25),inset 0 1px 0 rgba(255,255,255,0.28);transform:translateY(-2px) scale(1.025);animation:none}",
    ".btn-sim:hover{background:#fff;color:var(--accent);border-color:var(--accent);box-shadow:0 0 0 3px var(--accent);transform:none;animation:none}"
)
html = html.replace(
    ".btn-sim:active{transform:translateY(1px) scale(0.982);box-shadow:0 2px 14px rgba(13,148,136,0.35),inset 0 1px 0 rgba(255,255,255,0.10);transition:all 0.1s ease}",
    ".btn-sim:active{transform:scale(0.97);transition:all 0.1s ease}"
)
html = html.replace(
    ".btn-sim .btn-ripple{background:radial-gradient(circle,rgba(200,255,245,0.55),transparent 70%)}",
    ".btn-sim .btn-ripple{background:radial-gradient(circle,rgba(0,71,255,0.3),transparent 70%)}"
)

# ═══════════════════════════════════════════════════════════════════
# 7. SECTION TYPOGRAPHY: Use Syne for headings
# ═══════════════════════════════════════════════════════════════════
html = html.replace(
    ".sec-eyebrow{font-family:var(--font-mono);font-size:13px;letter-spacing:0.22em;text-transform:uppercase;color:var(--teal);margin-bottom:16px;font-weight:500}",
    ".sec-eyebrow{font-family:var(--font-mono);font-size:12px;letter-spacing:0.30em;text-transform:uppercase;color:var(--accent);margin-bottom:16px;font-weight:400}"
)
html = html.replace(
    ".sec-title{font-weight:800;font-size:clamp(28px,4.5vw,52px);line-height:1.1;letter-spacing:-0.025em;color:var(--text-heavy)}",
    ".sec-title{font-family:var(--font-display);font-weight:800;font-size:clamp(30px,5vw,56px);line-height:1.08;letter-spacing:-0.03em;color:var(--text-heavy)}"
)
html = html.replace(
    ".sec-rule{width:48px;height:3px;background:var(--teal);border:none;border-radius:2px;margin:20px 0 0 0}",
    ".sec-rule{width:56px;height:3px;background:var(--accent);border:none;border-radius:0;margin:24px 0 0 0}"
)
# Override the gradient sec-rule
html = html.replace(
    ".sec-rule{background:linear-gradient(90deg,var(--teal),var(--cyan))}",
    ".sec-rule{background:var(--accent)}"
)

# ═══════════════════════════════════════════════════════════════════
# 8. STEP NUMBERS: Blue accent
# ═══════════════════════════════════════════════════════════════════
html = html.replace(
    ".step-number{font-family:var(--font-mono);font-size:56px;font-weight:300;color:rgba(13,148,136,0.38);line-height:1;margin-bottom:8px}",
    ".step-number{font-family:var(--font-display);font-size:64px;font-weight:800;color:rgba(0,71,255,0.15);line-height:1;margin-bottom:10px}"
)
html = html.replace(
    ".step-label{font-weight:700;font-size:17px;color:var(--text-heavy);margin-bottom:6px}",
    ".step-label{font-family:var(--font-display);font-weight:700;font-size:18px;color:var(--text-heavy);margin-bottom:6px}"
)

# ═══════════════════════════════════════════════════════════════════
# 9. CONCEPT CARDS: Bold treatment
# ═══════════════════════════════════════════════════════════════════
html = html.replace(
    ".concept-card{background:var(--surface);border-radius:16px;padding:36px 32px;position:relative;overflow:hidden;box-shadow:0 1px 3px rgba(0,0,0,0.04);transition:box-shadow 0.3s;display:flex;flex-direction:column}",
    ".concept-card{background:var(--surface);border-radius:2px;padding:36px 32px;position:relative;overflow:hidden;box-shadow:none;border:1px solid rgba(0,0,0,0.08);transition:box-shadow 0.3s,border-color 0.3s;display:flex;flex-direction:column}"
)
html = html.replace(
    ".concept-card:hover{box-shadow:0 8px 24px rgba(0,0,0,0.07)}",
    ".concept-card:hover{border-color:var(--accent);box-shadow:0 8px 32px rgba(0,71,255,0.08)}"
)
html = html.replace(
    ".card-title{font-weight:700;font-size:19px;color:var(--text-heavy);margin-bottom:12px}",
    ".card-title{font-family:var(--font-display);font-weight:700;font-size:19px;color:var(--text-heavy);margin-bottom:12px}"
)
# Card icon backgrounds
html = html.replace(
    ".card-icon{width:44px;height:44px;border-radius:10px;background:var(--bg);display:flex;align-items:center;justify-content:center;margin-bottom:20px}",
    ".card-icon{width:44px;height:44px;border-radius:2px;background:var(--bg);display:flex;align-items:center;justify-content:center;margin-bottom:20px}"
)
# Card expand button
html = html.replace(
    ".card-expand{display:inline-flex;align-items:center;gap:8px;margin-top:auto;padding-top:18px;cursor:pointer;border:1px solid rgba(13,148,136,0.25);background:rgba(13,148,136,0.06);padding:8px 16px;border-radius:24px;font-family:var(--font-mono);font-size:11px;letter-spacing:0.04em;color:var(--teal);font-weight:500;transition:all 0.3s cubic-bezier(0.4,0,0.2,1)}",
    ".card-expand{display:inline-flex;align-items:center;gap:8px;margin-top:auto;padding-top:18px;cursor:pointer;border:1px solid rgba(0,71,255,0.25);background:rgba(0,71,255,0.04);padding:8px 16px;border-radius:0;font-family:var(--font-mono);font-size:11px;letter-spacing:0.06em;color:var(--accent);font-weight:400;transition:all 0.3s cubic-bezier(0.4,0,0.2,1)}"
)
html = html.replace(
    ".card-expand:hover{background:rgba(13,148,136,0.12);border-color:rgba(13,148,136,0.4);transform:translateY(-1px);box-shadow:0 4px 12px rgba(13,148,136,0.12)}",
    ".card-expand:hover{background:rgba(0,71,255,0.08);border-color:rgba(0,71,255,0.5);transform:none;box-shadow:none}"
)
html = html.replace(
    ".card-expand.open{background:var(--teal);color:#fff;border-color:var(--teal)}",
    ".card-expand.open{background:var(--accent);color:#fff;border-color:var(--accent)}"
)
html = html.replace(
    ".card-expand.open:hover{background:#0b8377}",
    ".card-expand.open:hover{background:#0038cc}"
)
# Card detail
html = html.replace(
    ".card-detail{max-height:0;overflow:hidden;transition:max-height 0.45s cubic-bezier(0.4,0,0.2,1),opacity 0.35s ease;opacity:0;background:var(--surface);border-radius:0 0 16px 16px;margin-top:-8px}",
    ".card-detail{max-height:0;overflow:hidden;transition:max-height 0.45s cubic-bezier(0.4,0,0.2,1),opacity 0.35s ease;opacity:0;background:var(--surface);border-radius:0;border:1px solid rgba(0,0,0,0.08);border-top:none;margin-top:-1px}"
)
# Detail tags
html = html.replace(
    ".detail-tag{display:inline-block;font-family:var(--font-mono);font-size:11px;letter-spacing:0.04em;padding:3px 10px;border-radius:6px;background:rgba(13,148,136,0.08);color:var(--teal);margin-right:6px;margin-bottom:6px}",
    ".detail-tag{display:inline-block;font-family:var(--font-mono);font-size:10px;letter-spacing:0.04em;padding:4px 10px;border-radius:0;background:rgba(0,71,255,0.06);color:var(--accent);margin-right:6px;margin-bottom:6px;border:1px solid rgba(0,71,255,0.12)}"
)

# ═══════════════════════════════════════════════════════════════════
# 10. SIMULATOR SECTION: Blue accent updates
# ═══════════════════════════════════════════════════════════════════
html = html.replace(
    ".display-card{background:var(--surface);border-radius:16px;padding:24px;box-shadow:0 1px 4px rgba(0,0,0,0.05);margin-bottom:20px}",
    ".display-card{background:var(--surface);border-radius:2px;padding:24px;box-shadow:none;border:1px solid rgba(0,0,0,0.08);margin-bottom:20px}"
)
html = html.replace(
    ".display-card-label{font-family:var(--font-mono);font-size:11px;letter-spacing:0.12em;text-transform:uppercase;color:var(--teal);margin-bottom:16px;font-weight:500}",
    ".display-card-label{font-family:var(--font-mono);font-size:11px;letter-spacing:0.14em;text-transform:uppercase;color:var(--accent);margin-bottom:16px;font-weight:400}"
)
html = html.replace(
    ".photo-card{background:var(--surface);border-radius:16px;overflow:hidden;box-shadow:0 1px 4px rgba(0,0,0,0.05)}",
    ".photo-card{background:var(--surface);border-radius:2px;overflow:hidden;border:1px solid rgba(0,0,0,0.08)}"
)
html = html.replace(
    ".photo-label{font-family:var(--font-mono);font-size:11px;letter-spacing:0.12em;text-transform:uppercase;color:var(--teal);margin-bottom:12px;font-weight:500}",
    ".photo-label{font-family:var(--font-mono);font-size:11px;letter-spacing:0.14em;text-transform:uppercase;color:var(--accent);margin-bottom:12px;font-weight:400}"
)
html = html.replace(
    ".quick-title{font-weight:700;font-size:20px;color:var(--text-heavy);margin-bottom:6px}",
    ".quick-title{font-family:var(--font-display);font-weight:700;font-size:20px;color:var(--text-heavy);margin-bottom:6px}"
)
html = html.replace(
    ".param-title{font-weight:700;font-size:18px;color:var(--text-heavy);display:flex;align-items:center;gap:10px}",
    ".param-title{font-family:var(--font-display);font-weight:700;font-size:18px;color:var(--text-heavy);display:flex;align-items:center;gap:10px}"
)
html = html.replace(
    ".param-badge{font-family:var(--font-mono);font-size:11px;letter-spacing:0.06em;text-transform:uppercase;font-weight:500;padding:3px 10px;border-radius:6px;background:rgba(13,148,136,0.1);color:var(--teal)}",
    ".param-badge{font-family:var(--font-mono);font-size:11px;letter-spacing:0.06em;text-transform:uppercase;font-weight:400;padding:3px 10px;border-radius:0;background:rgba(0,71,255,0.06);color:var(--accent);border:1px solid rgba(0,71,255,0.12)}"
)
html = html.replace(
    ".param-value{font-family:var(--font-mono);font-size:15px;font-weight:500;color:var(--teal);background:rgba(13,148,136,0.06);padding:4px 12px;border-radius:8px}",
    ".param-value{font-family:var(--font-mono);font-size:15px;font-weight:700;color:var(--accent);background:rgba(0,71,255,0.05);padding:4px 12px;border-radius:0;border:1px solid rgba(0,71,255,0.1)}"
)
# Slider styling
html = html.replace(
    ".slider-wrap input[type=\"range\"]{-webkit-appearance:none;appearance:none;width:100%;height:3px;background:rgba(13,148,136,0.20);border-radius:2px;outline:none;cursor:pointer}",
    ".slider-wrap input[type=\"range\"]{-webkit-appearance:none;appearance:none;width:100%;height:2px;background:rgba(0,71,255,0.18);border-radius:0;outline:none;cursor:pointer}"
)
html = html.replace(
    ".slider-wrap input[type=\"range\"]::-webkit-slider-thumb{-webkit-appearance:none;width:16px;height:16px;background:var(--teal);border:2.5px solid var(--surface);border-radius:50%;cursor:pointer;box-shadow:0 1px 4px rgba(13,148,136,0.35)}",
    ".slider-wrap input[type=\"range\"]::-webkit-slider-thumb{-webkit-appearance:none;width:16px;height:16px;background:var(--accent);border:2px solid var(--surface);border-radius:0;cursor:pointer;box-shadow:0 2px 8px rgba(0,71,255,0.3)}"
)
html = html.replace(
    ".slider-wrap input[type=\"range\"]::-moz-range-thumb{width:16px;height:16px;background:var(--teal);border:2.5px solid var(--surface);border-radius:50%;cursor:pointer;box-shadow:0 1px 4px rgba(13,148,136,0.35)}",
    ".slider-wrap input[type=\"range\"]::-moz-range-thumb{width:16px;height:16px;background:var(--accent);border:2px solid var(--surface);border-radius:0;cursor:pointer;box-shadow:0 2px 8px rgba(0,71,255,0.3)}"
)
# FPS buttons
html = html.replace(
    ".fps-num{font-family:var(--font-mono);font-size:15px;font-weight:500;padding:10px 0;border:1px solid rgba(0,0,0,0.10);border-radius:10px;cursor:pointer;transition:all 0.2s;background:var(--surface);color:var(--text);display:block;width:100%}",
    ".fps-num{font-family:var(--font-mono);font-size:15px;font-weight:700;padding:10px 0;border:1px solid rgba(0,0,0,0.10);border-radius:0;cursor:pointer;transition:all 0.2s;background:var(--surface);color:var(--text);display:block;width:100%}"
)
html = html.replace(
    ".fps-num:hover{border-color:rgba(13,148,136,0.35);background:rgba(13,148,136,0.04)}",
    ".fps-num:hover{border-color:rgba(0,71,255,0.35);background:rgba(0,71,255,0.04)}"
)
html = html.replace(
    ".preset-pill:hover{border-color:rgba(13,148,136,0.3);background:rgba(13,148,136,0.04)}",
    ".preset-pill:hover{border-color:rgba(0,71,255,0.3);background:rgba(0,71,255,0.04)}"
)
# Preset pill
html = html.replace(
    ".preset-pill{font-family:var(--font-body);font-size:13.5px;font-weight:400;background:var(--surface);color:var(--text);border:1px solid rgba(0,0,0,0.10);border-radius:24px;padding:8px 18px;cursor:pointer;transition:all 0.25s;display:inline-flex;align-items:center;gap:6px}",
    ".preset-pill{font-family:var(--font-body);font-size:13.5px;font-weight:400;background:var(--surface);color:var(--text);border:1px solid rgba(0,0,0,0.10);border-radius:0;padding:8px 18px;cursor:pointer;transition:all 0.25s;display:inline-flex;align-items:center;gap:6px}"
)

# ═══════════════════════════════════════════════════════════════════
# 11. WHY IT MATTERS: Section + flip cards
# ═══════════════════════════════════════════════════════════════════
html = html.replace(
    ".flip-cat-title{font-weight:700;font-size:24px;color:var(--text-heavy);letter-spacing:-0.01em}",
    ".flip-cat-title{font-family:var(--font-display);font-weight:700;font-size:24px;color:var(--text-heavy);letter-spacing:-0.01em}"
)
# Flip front value
html = html.replace(
    ".flip-front-value{font-family:var(--font-mono);font-size:42px;font-weight:500;color:var(--text-heavy);letter-spacing:-0.02em;display:inline-block;transition:transform 0.4s cubic-bezier(0.34,1.56,0.64,1)}",
    ".flip-front-value{font-family:var(--font-display);font-size:44px;font-weight:800;color:var(--text-heavy);letter-spacing:-0.02em;display:inline-block;transition:transform 0.4s cubic-bezier(0.34,1.56,0.64,1)}"
)
# Flip front
html = html.replace(
    ".flip-front{background:var(--surface);box-shadow:0 1px 4px rgba(0,0,0,0.05);display:flex;flex-direction:column;justify-content:space-between;overflow:hidden;transition:box-shadow 0.35s ease}",
    ".flip-front{background:var(--surface);box-shadow:none;border:1px solid rgba(0,0,0,0.08);display:flex;flex-direction:column;justify-content:space-between;overflow:hidden;transition:box-shadow 0.35s ease,border-color 0.35s ease}"
)
html = html.replace(
    ".flip-card:not(.flipped):hover .flip-front{box-shadow:0 20px 52px rgba(0,0,0,0.13),0 4px 12px rgba(0,0,0,0.06)}",
    ".flip-card:not(.flipped):hover .flip-front{box-shadow:0 20px 52px rgba(0,71,255,0.1);border-color:var(--accent)}"
)
# Flip card border radius
html = html.replace(
    ".flip-front,.flip-back{position:absolute;top:0;left:0;width:100%;height:100%;backface-visibility:hidden;border-radius:14px;padding:28px 24px;overflow:hidden}",
    ".flip-front,.flip-back{position:absolute;top:0;left:0;width:100%;height:100%;backface-visibility:hidden;border-radius:2px;padding:28px 24px;overflow:hidden}"
)

# ═══════════════════════════════════════════════════════════════════
# 12. TAKEAWAY + FOOTER
# ═══════════════════════════════════════════════════════════════════
html = html.replace(
    ".takeaway{background:var(--surface);border-radius:16px;padding:40px 48px;text-align:center;margin-top:64px;box-shadow:0 1px 4px rgba(0,0,0,0.04);border:1px solid rgba(13,148,136,0.12)}",
    ".takeaway{background:var(--surface);border-radius:2px;padding:48px 56px;text-align:center;margin-top:72px;box-shadow:none;border:2px solid var(--accent)}"
)
html = html.replace(
    ".takeaway h3{font-weight:800;font-size:26px;color:var(--text-heavy);margin-bottom:10px}",
    ".takeaway h3{font-family:var(--font-display);font-weight:800;font-size:28px;color:var(--text-heavy);margin-bottom:12px}"
)
html = html.replace(
    ".takeaway-emblem{width:44px;height:44px;margin:0 auto 22px;color:var(--teal);opacity:0.55}",
    ".takeaway-emblem{width:44px;height:44px;margin:0 auto 22px;color:var(--accent);opacity:0.45}"
)

# ═══════════════════════════════════════════════════════════════════
# 13. SECTION BACKGROUNDS: Cohesive with new palette
# ═══════════════════════════════════════════════════════════════════
html = html.replace(
    ".exhibit-prompt{background:linear-gradient(180deg,var(--bg) 0%,#e8ecf2 100%);padding:100px 40px 100px;text-align:center}",
    ".exhibit-prompt{background:var(--bg);padding:100px 40px 100px;text-align:center}"
)
html = html.replace(
    ".exhibit-prompt{background:linear-gradient(180deg,var(--bg) 0%,#e4eaf2 50%,#e8ecf2 100%);position:relative}",
    ".exhibit-prompt{background:var(--bg);position:relative}"
)
html = html.replace(
    ".exhibit-prompt::before{content:'';position:absolute;top:0;left:10%;right:10%;height:1px;background:linear-gradient(90deg,transparent,rgba(13,148,136,0.15),rgba(37,99,235,0.1),transparent)}",
    ".exhibit-prompt::before{content:'';position:absolute;top:0;left:10%;right:10%;height:1px;background:linear-gradient(90deg,transparent,rgba(0,71,255,0.15),transparent)}"
)
html = html.replace(
    "#matters{padding:100px 40px 100px;background:linear-gradient(180deg,var(--bg) 0%,#e6ebf1 50%,var(--bg) 100%)}",
    "#matters{padding:100px 40px 100px;background:var(--bg)}"
)
html = html.replace(
    "#matters{padding:100px 40px 100px;background:linear-gradient(180deg,var(--bg) 0%,#e4eaf2 25%,#e6ebf1 50%,#e4eaf2 75%,var(--bg) 100%);position:relative}",
    "#matters{padding:100px 40px 100px;background:var(--bg);position:relative}"
)
html = html.replace(
    "#matters::before{content:'';position:absolute;top:0;left:10%;right:10%;height:1px;background:linear-gradient(90deg,transparent,rgba(13,148,136,0.15),rgba(37,99,235,0.1),transparent)}",
    "#matters::before{content:'';position:absolute;top:0;left:10%;right:10%;height:1px;background:linear-gradient(90deg,transparent,rgba(0,71,255,0.15),transparent)}"
)

# ═══════════════════════════════════════════════════════════════════
# 14. HERO WATERMARK: Blue accent
# ═══════════════════════════════════════════════════════════════════
html = html.replace(
    ".hero-watermark{position:absolute;bottom:-60px;right:-60px;width:540px;height:540px;opacity:0.055;color:var(--teal);pointer-events:none;z-index:0}",
    ".hero-watermark{position:absolute;bottom:-60px;right:-60px;width:540px;height:540px;opacity:0.06;color:rgba(0,71,255,0.5);pointer-events:none;z-index:1}"
)

# ═══════════════════════════════════════════════════════════════════
# 15. FADE-UP: More dramatic reveal
# ═══════════════════════════════════════════════════════════════════
html = html.replace(
    ".fade-up{opacity:0;transform:translateY(24px);transition:opacity 0.7s ease,transform 0.7s ease}",
    ".fade-up{opacity:0;transform:translateY(40px);transition:opacity 0.8s cubic-bezier(0.22,0.61,0.36,1),transform 0.8s cubic-bezier(0.22,0.61,0.36,1)}"
)

# ═══════════════════════════════════════════════════════════════════
# 16. ADD HERO CANVAS to HTML (before hero-eyebrow)
# ═══════════════════════════════════════════════════════════════════
html = html.replace(
    '<section class="hero">\n  <svg class="hero-watermark"',
    '<section class="hero">\n  <canvas id="heroCanvas"></canvas>\n  <svg class="hero-watermark"'
)

# ═══════════════════════════════════════════════════════════════════
# 17. ADD HERO CANVAS JS (before closing </script>)
# ═══════════════════════════════════════════════════════════════════
hero_js = '''
/* HERO PARTICLE FIELD */
(function(){
const c=document.getElementById('heroCanvas');if(!c)return;
const ctx=c.getContext('2d');
let W,H,mx=-1,my=-1,particles=[];
const COLS=80,ROWS=50;
// Minimal 2D simplex noise
const F2=0.5*(Math.sqrt(3)-1),G2=(3-Math.sqrt(3))/6;
const perm=new Uint8Array(512);const grad=[[1,1],[-1,1],[1,-1],[-1,-1],[1,0],[-1,0],[0,1],[0,-1]];
(function(){const p=new Uint8Array(256);for(let i=0;i<256;i++)p[i]=i;for(let i=255;i>0;i--){const j=Math.floor(Math.random()*(i+1));[p[i],p[j]]=[p[j],p[i]]}for(let i=0;i<512;i++)perm[i]=p[i&255]})();
function dot2(g,x,y){return g[0]*x+g[1]*y}
function noise2(x,y){const s=(x+y)*F2;const i=Math.floor(x+s),j=Math.floor(y+s);const t=(i+j)*G2;const X0=i-t,Y0=j-t;const x0=x-X0,y0=y-Y0;let i1,j1;if(x0>y0){i1=1;j1=0}else{i1=0;j1=1}const x1=x0-i1+G2,y1=y0-j1+G2;const x2=x0-1+2*G2,y2=y0-1+2*G2;const ii=i&255,jj=j&255;let n0=0,n1=0,n2=0;let t0=0.5-x0*x0-y0*y0;if(t0>0){t0*=t0;n0=t0*t0*dot2(grad[perm[ii+perm[jj]]%8],x0,y0)}let t1=0.5-x1*x1-y1*y1;if(t1>0){t1*=t1;n1=t1*t1*dot2(grad[perm[ii+i1+perm[jj+j1]]%8],x1,y1)}let t2=0.5-x2*x2-y2*y2;if(t2>0){t2*=t2;n2=t2*t2*dot2(grad[perm[ii+1+perm[jj+1]]%8],x2,y2)}return 70*(n0+n1+n2)}
function resize(){W=c.width=c.offsetWidth*devicePixelRatio;H=c.height=c.offsetHeight*devicePixelRatio;ctx.scale(devicePixelRatio,devicePixelRatio);buildGrid()}
function buildGrid(){particles=[];const cw=c.offsetWidth,ch=c.offsetHeight;const sx=cw/(COLS-1),sy=ch/(ROWS-1);for(let r=0;r<ROWS;r++)for(let cl=0;cl<COLS;cl++){particles.push({ox:cl*sx,oy:r*sy,x:cl*sx,y:r*sy,s:1.8})}}
let time=0;
function draw(){
ctx.clearRect(0,0,c.offsetWidth,c.offsetHeight);
time+=0.003;
const cw=c.offsetWidth,ch=c.offsetHeight;
for(let i=0;i<particles.length;i++){
const p=particles[i];
const nx=p.ox/cw*3;const ny=p.oy/ch*3;
const n=noise2(nx+time,ny+time*0.7);
const n2=noise2(nx*2+time*1.5,ny*2+time*0.5);
p.x=p.ox+n*18;
p.y=p.oy+n2*18;
let dist=1e9;
if(mx>=0){const dx=p.x-mx,dy=p.y-my;dist=Math.sqrt(dx*dx+dy*dy);if(dist<180){const f=(1-dist/180)*35;const a=Math.atan2(dy,dx);p.x+=Math.cos(a)*f;p.y+=Math.sin(a)*f}}
const alpha=0.12+Math.abs(n)*0.45;
const sz=1.2+Math.abs(n2)*2.2;
// Color: blue to teal based on noise
const hue=220+n*30;
const sat=70+Math.abs(n2)*30;
ctx.beginPath();
ctx.arc(p.x,p.y,sz,0,Math.PI*2);
ctx.fillStyle=`hsla(${hue},${sat}%,55%,${alpha})`;
ctx.fill();
// Draw connections to nearby particles
if(i%3===0){
for(let j=i+1;j<Math.min(i+COLS+2,particles.length);j++){
const q=particles[j];
const dx=p.x-q.x,dy=p.y-q.y;
const d=dx*dx+dy*dy;
if(d<2500){
const la=0.04*(1-d/2500);
ctx.beginPath();ctx.moveTo(p.x,p.y);ctx.lineTo(q.x,q.y);
ctx.strokeStyle=`hsla(${hue},60%,50%,${la})`;
ctx.lineWidth=0.5;
ctx.stroke()}}}}
requestAnimationFrame(draw)}
function onMouse(e){const r=c.getBoundingClientRect();mx=e.clientX-r.left;my=e.clientY-r.top}
c.addEventListener('mousemove',onMouse);
c.addEventListener('mouseleave',()=>{mx=-1;my=-1});
window.addEventListener('resize',resize);
resize();draw()
})();
'''

html = html.replace('</script>', hero_js + '</script>')

with open('/Users/ming/Downloads/Thesiswebsite/index.html', 'w') as f:
    f.write(html)

print("SUCCESS - All theme changes applied")
PYEOF