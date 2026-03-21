# OpenQA

OpenQA는 자연어 시나리오로 웹 테스트를 실행하는 로컬 QA 데스크톱 앱입니다.

이 저장소는 macOS 배포 채널입니다. 소스 코드는 [OpenQA-Desktop/OpenQA-Desktop](https://github.com/OpenQA-Desktop/OpenQA-Desktop) 에 있습니다.

[![Latest Release](https://img.shields.io/badge/Latest%20Release-OpenQA-111827?style=for-the-badge)](https://github.com/OpenQA-Desktop/OpenQA/releases/latest)
[![Install for macOS](https://img.shields.io/badge/Install-macOS%20via%20shell-0A84FF?style=for-the-badge&logo=apple)](https://raw.githubusercontent.com/OpenQA-Desktop/OpenQA/main/install.sh)

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/OpenQA-Desktop/OpenQA/main/install.sh | sh
```

기본 동작:

- 최신 GitHub 릴리즈의 `OpenQA.app.tar.gz` 다운로드
- `OpenQA.app`를 `/Applications`에 설치
- `/Applications`에 쓸 수 없으면 `~/Applications` 사용
- 설치 후 앱 실행

옵션:

```bash
# 설치만 하고 실행하지 않음
curl -fsSL https://raw.githubusercontent.com/OpenQA-Desktop/OpenQA/main/install.sh | OPENQA_SKIP_OPEN=1 sh

# 설치 경로 지정
curl -fsSL https://raw.githubusercontent.com/OpenQA-Desktop/OpenQA/main/install.sh | OPENQA_INSTALL_DIR="$HOME/Applications" sh
```

현재 공개 빌드는 macOS Apple Silicon(`arm64`) 기준입니다.

## What It Does

- 자연어로 테스트 시나리오를 작성
- 실제 브라우저를 열고 페이지를 탐색하며 액션 수행
- 실행 타임라인, 진단 정보, 원본 실행 데이터 확인
- 반복 실행을 위한 스케줄 구성
- 인증 상태 재사용과 스레드 단위 QA 워크스페이스 운영

## Release Assets

- [latest release](https://github.com/OpenQA-Desktop/OpenQA/releases/latest)
- [install.sh](https://raw.githubusercontent.com/OpenQA-Desktop/OpenQA/main/install.sh)
- [OpenQA.app.tar.gz](https://github.com/OpenQA-Desktop/OpenQA/releases/latest/download/OpenQA.app.tar.gz)
- [latest.json](https://github.com/OpenQA-Desktop/OpenQA/releases/latest/download/latest.json)
- [DMG assets](https://github.com/OpenQA-Desktop/OpenQA/releases/latest)

`OpenQA.app.tar.gz`, `OpenQA.app.tar.gz.sig`, `latest.json`은 앱 업데이트 경로에서 사용됩니다.

## Source

- Source repository: [OpenQA-Desktop/OpenQA-Desktop](https://github.com/OpenQA-Desktop/OpenQA-Desktop)
- Releases: [OpenQA-Desktop/OpenQA](https://github.com/OpenQA-Desktop/OpenQA/releases/latest)

## Notes

- 현재 배포 흐름은 개발자 중심 shell 설치를 우선합니다.
- 일반 사용자용 notarized 배포 UX는 아직 기본 경로가 아닙니다.
