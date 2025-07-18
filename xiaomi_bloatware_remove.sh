# Xiaomi Bloatware Remover

Ein sicheres ADB‑Shell‑Skript zum Entfernen (für den Nutzer deaktivieren) von Xiaomi‑Werbe‑ und Tracking‑Apps unter MIUI, ohne Root.

## 📋 Inhalte

- `xiaomi_bloatware_remove.sh`: Liste bewährter Paketnamen für einfache ADB-Deinstallation
- Entfernt apps wie Analytics, MSA, Mi Browser, Mi Music/Video, Amazon, Facebook, TikTok u.v.m.
- Deinstallation erfolgt nur für **User 0**, das System bleibt erhalten

## ⚠️ Warnhinweise

- **Lesen & anpassen**: Paketliste nach Bedarf ergänzen oder entfernen
- Entfernt keine **systemkritischen oder sicherheitsrelevanten Apps**
- Nicht für unveränderte MIUI‑Systeme – nur mit aktiviertem USB‑Debugging verwendet
- Manche Apps können nach OTA‑Updates zurückkommen

## 🚀 Nutzung

```bash
chmod +x xiaomi_bloatware_remove.sh
./xiaomi_bloatware_remove.sh