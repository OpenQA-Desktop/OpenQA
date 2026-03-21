# OpenQA

OpenQA는 자연어 한 문장으로 웹 테스트를 실행하는 로컬 AI QA 데스크톱 앱입니다.

테스트 시나리오를 문장으로 입력하면 OpenQA가 실제 브라우저를 직접 조작해 페이지를 탐색하고, 필요한 액션을 수행한 뒤 결과를 수집합니다. 실행이 끝나면 타임라인, 진단 정보, 원본 실행 데이터까지 하나의 워크스페이스에서 바로 이어서 확인할 수 있습니다.

[![Latest Release](https://img.shields.io/badge/Latest%20Release-OpenQA-111827?style=for-the-badge)](https://github.com/OpenQA-Desktop/OpenQA/releases/latest)
[![Install for macOS](https://img.shields.io/badge/Install-macOS%20via%20shell-0A84FF?style=for-the-badge&logo=apple)](https://raw.githubusercontent.com/OpenQA-Desktop/OpenQA/main/install.sh)

## 설치

개발자 전용 배포 기준으로 가장 간단한 설치 방법은 아래 한 줄입니다.

```bash
curl -fsSL https://raw.githubusercontent.com/OpenQA-Desktop/OpenQA/main/install.sh | sh
```

이 스크립트는 최신 GitHub 릴리즈의 `OpenQA.app.tar.gz`를 내려받아 기본적으로 `OpenQA.app`를 `/Applications`에 설치하고 실행합니다. `/Applications`에 쓸 수 없으면 자동으로 `~/Applications`를 사용합니다.

옵션:

```bash
# 설치만 하고 실행은 생략
curl -fsSL https://raw.githubusercontent.com/OpenQA-Desktop/OpenQA/main/install.sh | OPENQA_SKIP_OPEN=1 sh

# 설치 위치를 명시적으로 지정
curl -fsSL https://raw.githubusercontent.com/OpenQA-Desktop/OpenQA/main/install.sh | OPENQA_INSTALL_DIR="$HOME/Applications" sh
```

제약:

- 현재 공개 빌드는 macOS Apple Silicon(`arm64`) 기준입니다.
- 일반 사용자용 notarized DMG 배포가 아니라 개발자용 shell 설치 흐름입니다.

## 왜 OpenQA인가

- 테스트 케이스를 코드가 아니라 자연어로 작성할 수 있습니다.
- 실제 브라우저를 사용해 사용자가 겪는 흐름에 가까운 검증을 수행합니다.
- 실행 결과를 로그가 아니라 타임라인과 진단 중심으로 확인할 수 있습니다.
- 반복 테스트를 스케줄로 등록해 운영 흐름까지 이어갈 수 있습니다.

## 핵심 경험

- 자연어 기반 테스트 케이스 작성
- 브라우저 자동 탐색과 액션 수행
- 실행 타임라인과 진단 결과 확인
- 원본 실행 데이터와 아티팩트 검토
- 반복 실행을 위한 스케줄 운영

## 다운로드

- 최신 릴리즈 보기: [OpenQA Releases](https://github.com/OpenQA-Desktop/OpenQA/releases/latest)
- shell 설치 스크립트: [install.sh](https://raw.githubusercontent.com/OpenQA-Desktop/OpenQA/main/install.sh)
- macOS 앱 아카이브: [OpenQA.app.tar.gz](https://github.com/OpenQA-Desktop/OpenQA/releases/latest/download/OpenQA.app.tar.gz)
- macOS DMG 직접 다운로드: [latest DMG](https://github.com/OpenQA-Desktop/OpenQA/releases/latest)
