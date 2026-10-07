@echo off
REM Startup script for Smart AI Resume Analyzer (Windows)
cd /d "%~dp0"

echo ========================================================
echo          Starting Smart AI Resume Analyzer...
echo ========================================================

REM Activate virtual environment if present
if exist "venv\Scripts\activate.bat" (
    call "venv\Scripts\activate.bat"
)

REM Start the application using python -m streamlit
if exist "venv\Scripts\streamlit.exe" (
    venv\Scripts\streamlit.exe run app.py
) else (
    streamlit run app.py
)

pause 