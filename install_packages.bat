@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ========================================
echo Flask 서버 패키지 설치
echo ========================================
echo.

REM 이 폴더에 venv가 있으면 그 가상환경에 설치하고, 없으면 PATH의 python에 설치합니다.
REM 가상환경 만들기: python -m venv venv
if exist "venv\Scripts\activate.bat" (
    echo venv 가상환경 활성화 중...
    call venv\Scripts\activate.bat
) else (
    echo venv 폴더가 없어 PATH의 python에 설치합니다.
)

echo.
echo 패키지 설치 중...
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
if errorlevel 1 (
    echo pip 실패. Python 설치와 PATH를 확인하세요.
    pause
    exit /b 1
)

echo.
echo ========================================
echo 패키지 설치 완료!
echo ========================================
echo.
pause
