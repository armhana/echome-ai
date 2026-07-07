# Schritt für Schritt: Die iOS-App auf dein iPhone bringen

Diese Anleitung setzt **keine Xcode-Erfahrung** voraus. Dauer beim ersten Mal:
ca. 45–60 Minuten (inkl. Downloads).

## Was du brauchst

- Einen **Mac** (macOS 14 „Sonoma" oder neuer; geliehen reicht — der Mac ist
  nur zum Bauen nötig, danach läuft alles auf dem iPhone)
- Dein **iPhone mit iOS 18** + Ladekabel
- Eine **Apple-ID** (deine normale reicht — kostenlos; nur für den App Store
  bräuchte man das 99-€-Entwicklerprogramm)

## Teil 1: Vorbereitung am iPhone (10 Min., schon heute möglich)

1. **Personal Voice erstellen** (dein Stimmklon, einmalig ~15 Min. Sprechen):
   *Einstellungen → Bedienungshilfen → Personal Voice → Personal Voice
   erstellen* — dem Assistenten folgen, Sätze vorlesen. Die Stimme wird
   über Nacht auf dem iPhone fertig berechnet.
2. Dort außerdem aktivieren: **„Apps dürfen Zugriff anfordern"**.
3. **Entwicklermodus** einschalten: *Einstellungen → Datenschutz &
   Sicherheit → Entwicklermodus* → an → iPhone neu starten.
   (Falls der Punkt fehlt: erscheint erst, nachdem Xcode einmal versucht
   hat, die App zu installieren — dann später nachholen.)

## Teil 2: Am Mac (einmalig)

1. **Xcode installieren**: App Store → „Xcode" (kostenlos, ~10 GB — Geduld).
   Beim ersten Start Lizenz bestätigen und Komponenten installieren lassen.
2. **Projekt anlegen**:
   - Xcode → *Create New Project* → **iOS → App** → Next
   - Product Name: `LiveUebersetzer` · Interface: **SwiftUI** ·
     Language: **Swift** → Next → Speicherort wählen → Create
3. **Unseren Code hineinnehmen**:
   - Dieses Repository laden: Terminal öffnen und
     `git clone https://github.com/armhana/translate.git`
     (oder auf GitHub: *Code → Download ZIP*)
   - Im Finder den Ordner `translate/ios/LiveUebersetzer/` öffnen und
     **alle fünf .swift-Dateien** in den Xcode-Projektnavigator ziehen
     (linke Spalte, auf den gelben Ordner `LiveUebersetzer`).
     Im Dialog: „Copy items if needed" ✓ → Finish.
   - Die von Xcode selbst erzeugten `ContentView.swift` und
     `LiveUebersetzerApp.swift` **löschen** (Rechtsklick → Delete →
     Move to Trash), unsere ersetzen sie.
4. **Berechtigungs-Texte eintragen** (Pflicht, sonst stürzt die App ab):
   - Projektnavigator: oberster blauer Eintrag `LiveUebersetzer` →
     Target `LiveUebersetzer` → Reiter **Info** → unter „Custom iOS Target
     Properties" per ➕ zwei Einträge anlegen:
     | Key | Wert |
     |---|---|
     | `Privacy - Speech Recognition Usage Description` | Transkribiert Ihre Videos lokal auf dem Gerät. |
     | `Privacy - Photo Library Usage Description` | Wählt das zu übersetzende Video aus Ihrer Mediathek. |
5. **Signieren**: Reiter **Signing & Capabilities** →
   „Automatically manage signing" ✓ → bei *Team* → „Add an Account…" →
   mit deiner Apple-ID anmelden → dein „(Personal Team)" auswählen.
   Falls ein Fehler zum *Bundle Identifier* kommt: einen eindeutigen Namen
   eintragen, z. B. `de.areum.liveuebersetzer`.

## Teil 3: Auf das iPhone bringen

1. iPhone per **Kabel** an den Mac. Am iPhone „Diesem Computer vertrauen?"
   → Vertrauen.
2. In Xcode oben in der Gerätewahl (neben dem Schema-Namen) **dein iPhone**
   auswählen (nicht „Simulator").
3. **▶-Knopf** (Run) drücken. Erster Build dauert ein paar Minuten.
4. Beim ersten Start meldet iOS „Nicht vertrauenswürdiger Entwickler":
   *Einstellungen → Allgemein → VPN & Geräteverwaltung → deine Apple-ID →
   Vertrauen*. Danach App normal starten.
5. Beim ersten App-Start Berechtigungen erlauben: Spracherkennung,
   Fotos-Zugriff, **Personal-Voice-Zugriff**.

## Wichtig zu wissen

- **Kostenlose Apple-ID**: Die App läuft 7 Tage, dann einmal neu aus Xcode
  installieren (▶ drücken genügt). Mit Entwicklerprogramm (99 €/Jahr):
  1 Jahr gültig + App-Store-Verteilung möglich.
- **Sprachpakete**: Beim ersten Übersetzen fragt iOS einmalig, ob es das
  Sprachpaket (z. B. Deutsch↔Englisch) laden darf — zustimmen, danach
  ist auch das offline.
- **Personal Voice** klingt am natürlichsten in der Sprache, in der du sie
  trainiert hast (Deutsch). Für den Anwendungsfall „Akzent entfernen"
  (Deutsch→Deutsch) ist sie ideal.
- Der Code ist ein **ungetestetes Grundgerüst** — auf einem Windows-PC
  geschrieben. Wenn Xcode beim Bauen Fehler zeigt: Fehlermeldung kopieren
  und mir schicken, ich liefere die Korrektur.

## Wenn etwas hakt — die drei häufigsten Stolpersteine

| Meldung | Lösung |
|---|---|
| „Signing for … requires a development team" | Teil 2, Schritt 5: Apple-ID als Team hinterlegen |
| „Could not launch … untrusted developer" | Teil 3, Schritt 4: Entwickler vertrauen |
| App startet, stürzt bei Videoauswahl ab | Teil 2, Schritt 4: die zwei Privacy-Einträge fehlen |
