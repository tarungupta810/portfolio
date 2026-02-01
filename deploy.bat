@echo off
REM Portfolio Website Deployment Script for Windows
REM This script helps you deploy your portfolio to various platforms

echo.
echo ========================================
echo   Portfolio Website Deployment Script
echo ========================================
echo.

REM Check if required files exist
if not exist "index.html" (
    echo [ERROR] Required files not found!
    echo   Make sure index.html, script.js, and styles.css are in the current directory.
    pause
    exit /b 1
)

if not exist "script.js" (
    echo [ERROR] Required files not found!
    echo   Make sure index.html, script.js, and styles.css are in the current directory.
    pause
    exit /b 1
)

if not exist "styles.css" (
    echo [ERROR] Required files not found!
    echo   Make sure index.html, script.js, and styles.css are in the current directory.
    pause
    exit /b 1
)

echo [OK] All required files found!
echo.

REM Display deployment options
echo Choose a deployment platform:
echo.
echo 1) Netlify (Easiest - Drag ^& Drop)
echo 2) GitHub Pages (Free - Requires GitHub)
echo 3) Vercel (Fast - Requires Node.js)
echo 4) Test Locally
echo 5) Exit
echo.
set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" goto netlify
if "%choice%"=="2" goto github
if "%choice%"=="3" goto vercel
if "%choice%"=="4" goto local
if "%choice%"=="5" goto exit
goto invalid

:netlify
echo.
echo ========================================
echo   Netlify Deployment Instructions
echo ========================================
echo.
echo 1. Create a folder named 'portfolio' on your desktop
echo 2. Copy these files into that folder:
echo    - index.html
echo    - script.js
echo    - styles.css
echo.
echo 3. Go to https://app.netlify.com/drop
echo 4. Drag and drop the 'portfolio' folder onto the page
echo 5. Your website will be live in seconds!
echo.
echo Your website URL will be: https://random-name.netlify.app
echo.
echo [TIP] You can change the site name in Netlify dashboard
echo.
goto end

:github
echo.
echo ========================================
echo   GitHub Pages Deployment Instructions
echo ========================================
echo.
echo 1. Go to https://github.com and sign in
echo 2. Click '+' -^> 'New repository'
echo 3. Name it 'portfolio' (or your preferred name)
echo 4. Make it 'Public' (required for GitHub Pages)
echo 5. Click 'Create repository'
echo.
echo 6. Upload your files:
echo    - Click 'uploading an existing file'
echo    - Drag and drop: index.html, script.js, styles.css
echo    - Add commit message: 'Initial portfolio upload'
echo    - Click 'Commit changes'
echo.
echo 7. Enable GitHub Pages:
echo    - Go to repository -^> Settings -^> Pages
echo    - Under 'Build and deployment', select 'Deploy from a branch'
echo    - Select 'main' branch and '/ (root)' folder
echo    - Click 'Save'
echo.
echo Your website will be at: https://yourusername.github.io/repository-name/
echo.
echo [INFO] Wait 1-2 minutes for deployment to complete
echo.
goto end

:vercel
echo.
echo ========================================
echo   Vercel Deployment Instructions
echo ========================================
echo.

REM Check if Node.js is installed
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not installed!
    echo   Please install Node.js from https://nodejs.org
    pause
    exit /b 1
)

REM Check if Vercel CLI is installed
where vercel >nul 2>nul
if %errorlevel% neq 0 (
    echo [INFO] Installing Vercel CLI...
    call npm install -g vercel
)

echo [INFO] Deploying to Vercel...
echo.
call vercel
goto end

:local
echo.
echo ========================================
echo   Testing Locally
echo ========================================
echo.

REM Check if Python is available
where python >nul 2>nul
if %errorlevel% equ 0 (
    echo [INFO] Starting local server on http://localhost:8000
    echo   Press Ctrl+C to stop
    echo.
    python -m http.server 8000
    goto end
)

REM If Python not available, open in browser
echo [INFO] Opening index.html in default browser...
start index.html
goto end

:invalid
echo.
echo [ERROR] Invalid choice. Please run the script again.
echo.
pause
exit /b 1

:exit
echo.
echo Goodbye!
echo.
exit /b 0

:end
echo.
echo [INFO] For detailed deployment instructions, see DEPLOYMENT_GUIDE.md
echo.
pause
