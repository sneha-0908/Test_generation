@echo off
setlocal

cd /d "%~dp0\.."

ollama create test-scenario-generator-final2 -f Modelfile

endlocal
