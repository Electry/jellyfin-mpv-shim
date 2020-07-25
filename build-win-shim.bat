@echo off
rd /s /q __pycache__ dist build
set PATH=%PATH%;%CD%

pyinstaller -wF --add-binary "mpv-1.dll;." --add-data "jellyfin_mpv_shim\systray.png;jellyfin_mpv_shim" --add-data "jellyfin_mpv_shim\display_mirror\index.html;jellyfin_mpv_shim\display_mirror" --add-data "jellyfin_mpv_shim\display_mirror\jellyfin.css;jellyfin_mpv_shim\display_mirror" --add-binary "Microsoft.Toolkit.Forms.UI.Controls.WebView.dll;." --exclude-module cefpython3 --hidden-import pystray._win32 --icon jellyfin.ico run.py
