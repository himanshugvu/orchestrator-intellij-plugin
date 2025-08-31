@echo off
echo ========================================
echo Orchestrator IntelliJ Plugin Builder
echo ========================================
echo.

echo Building Orchestrator IntelliJ Plugin...
echo.

REM Check if Gradle is available
gradle -version >nul 2>&1
if errorlevel 1 (
    echo Error: Gradle is not installed or not in PATH
    echo Please install Gradle and ensure it's in your PATH
    pause
    exit /b 1
)

REM Clean and build the plugin
echo Cleaning previous build...
call gradlew clean

echo Building plugin...
call gradlew buildPlugin

if errorlevel 1 (
    echo.
    echo Build failed! Check the error messages above.
    pause
    exit /b 1
)

echo.
echo Build successful!
echo Plugin files are available in the build/distributions/ directory
echo.

echo To install the plugin in IntelliJ IDEA:
echo 1. Open IntelliJ IDEA
echo 2. Go to File -> Settings -> Plugins
echo 3. Click the gear icon -> Install Plugin from Disk
echo 4. Select the .zip file from build/distributions/
echo.

pause


