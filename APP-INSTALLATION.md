# Die Oberfläche als App auf dem Endgerät installieren

Voraussetzung: Auf **einem** Rechner im Netz läuft der Server
(Windows: `Start-Server.bat` · [Linux](linux/README_LINUX.md) ·
[Mac](mac/README_MAC.md) · [Raspberry Pi](pi/README_PI.md) — Pi und Linux
starten nach der Einrichtung automatisch).

Die Adresse steht im Serverfenster, z. B. `http://192.168.0.108:8710` —
am einfachsten den dort angezeigten **QR-Code mit der Handykamera scannen**.
Wichtig beim Eintippen: **http**, nicht https.

## iPhone / iPad (Safari)

1. Adresse in Safari öffnen (oder QR-Code scannen)
2. Teilen-Symbol (Viereck mit Pfeil) antippen
3. **„Zum Home-Bildschirm"** → Hinzufügen

→ Die App liegt als Symbol auf dem Home-Bildschirm und startet im
Vollbild wie eine normale App.

## Android (Chrome)

1. Adresse in Chrome öffnen (oder QR-Code scannen)
2. Menü (⋮ oben rechts)
3. **„App installieren"** (bei manchen Geräten: „Zum Startbildschirm hinzufügen")

## Windows / Mac / Linux (Chrome oder Edge)

1. Adresse im Browser öffnen
2. In der Adressleiste rechts erscheint ein **Installations-Symbol**
   (Monitor mit Pfeil) — anklicken → **Installieren**

→ Die App bekommt ein eigenes Fenster, ein Symbol im Startmenü/Dock
und lässt sich an die Taskleiste heften.

## Gut zu wissen

- Die „App" ist eine PWA (Progressive Web App): ein Klick auf das Symbol
  öffnet direkt die Übersetzer-Oberfläche — der Server im Netz macht die
  eigentliche Arbeit.
- **Aufträge überleben alles:** Handy gesperrt, App geschlossen, Seite neu
  geladen — beim nächsten Öffnen wird der letzte Auftrag automatisch
  wiedergefunden (läuft er noch, siehst du den Fortschritt; ist er fertig,
  direkt das Ergebnis).
- Erreicht das Gerät den Server nicht („Server antwortet nicht"):
  1. Gleiches WLAN? (Gerät-IP muss zum Servernetz passen, kein Gastnetz)
  2. Router-Einstellung „Geräte dürfen untereinander kommunizieren" aktiv?
  3. Firmen-PC als Server? Sicherheitssoftware blockiert oft eingehende
     Verbindungen → Pi/Mac als Server nutzen ([Details](windows/README_WINDOWS.md))
