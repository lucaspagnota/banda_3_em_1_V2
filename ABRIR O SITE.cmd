@echo off
rem Abre a versao nova do site por um endereco local (http://localhost),
rem para os videos do YouTube tocarem dentro do site.
rem Aberto direto pelo arquivo index.html o YouTube bloqueia o player (erro 153).
title Banda 3 em 1 - versao nova do site
cd /d "%~dp0"
set PORTA=5577
set PY=python
where python >nul 2>nul || set PY=py
echo.
echo   Abrindo a versao nova do site em http://localhost:%PORTA%/
echo   Deixe esta janela aberta enquanto usa o site.
echo   Para encerrar, e so fechar esta janela.
echo.
start "" powershell -NoProfile -WindowStyle Hidden -Command "Start-Sleep -Seconds 2; Start-Process 'http://localhost:%PORTA%/'"
%PY% -m http.server %PORTA% --bind 127.0.0.1
