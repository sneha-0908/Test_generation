@echo off
setlocal

cd /d "%~dp0\.."

ollama create FID-test-scenario-generator -f Modelfile

endlocal
