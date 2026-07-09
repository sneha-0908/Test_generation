@echo off
setlocal

cd /d "%~dp0\.."

ollama create test-scenario-generator-02 -f Modelfile

endlocal
