@echo off
setlocal

cd /d "%~dp0\.."

ollama run test-scenario-generator < examples\sample_input.txt

endlocal
