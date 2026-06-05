# SmartFarmFlask - AI 농장 시뮬레이터 Flask 서버

스마트팜 WinForms 클라이언트([SmartFarmSimulation](https://github.com/yaong832/SmartFarmSimulation))와 연동하는 **농장 전용** Flask 백엔드입니다.

> **식각(Etch) Flask와 별도 프로그램** - 포트 5000 공유 가능하나 **동시 실행 불가**.
> 식각 모니터링: [etchflask](https://github.com/yaong832/etchflask) / `C:\etchflask`

## 로컬 경로

`C:\farmui\farmui`

## 빠른 실행

`C:\farmui\farmui\run_farmui.bat`

## 주요 API

- `GET /api/sensors` - 헬스체크
- `POST /api/sensor-data` - WinForms 센서 수신
- `GET/POST /api/crops` - 작물 설정
- `POST /api/ai/control` - AI 제어 명령

## 연동

| 구성 | 저장소 |
|------|--------|
| WinForms | [SmartFarmSimulation](https://github.com/yaong832/SmartFarmSimulation) |
| Flask | [SmartFarmFlask](https://github.com/yaong832/SmartFarmFlask) |