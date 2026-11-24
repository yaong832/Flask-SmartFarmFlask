# Flask 서버 패키지 설치 스크립트
# 이 폴더에 venv가 있으면 그 가상환경에 설치하고, 없으면 PATH의 python에 설치합니다.
# 가상환경 만들기: python -m venv venv

Set-Location $PSScriptRoot

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Flask 서버 패키지 설치" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$activate = Join-Path $PSScriptRoot "venv\Scripts\Activate.ps1"
if (Test-Path $activate) {
    Write-Host "venv 가상환경 활성화 중..." -ForegroundColor Green
    & $activate
} else {
    Write-Host "venv 폴더가 없어 PATH의 python에 설치합니다." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "패키지 설치 중..." -ForegroundColor Green
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
if ($LASTEXITCODE -ne 0) {
    Write-Host "pip 실패. Python 설치와 PATH를 확인하세요." -ForegroundColor Red
    Read-Host "계속하려면 Enter를 누르세요"
    exit 1
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "패키지 설치 완료!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Read-Host "계속하려면 Enter를 누르세요"
