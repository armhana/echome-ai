@echo off
rem Web-Server starten: macht den Uebersetzer fuer alle Geraete im WLAN nutzbar
rem (Windows-Browser, iPhone/Safari, Android/Chrome). Die angezeigte Adresse
rem am Handy oeffnen; ggf. Windows-Firewall-Freigabe beim ersten Start erlauben.
cd /d "%~dp0app"
"%~dp0venv\Scripts\python.exe" web_server.py
pause
