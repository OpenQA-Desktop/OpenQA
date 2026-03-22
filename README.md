# OpenQA

OpenQA는 자연어 시나리오로 웹 테스트를 실행하는 로컬 QA 데스크톱 앱입니다.

이 저장소는 macOS / Windows 배포 채널입니다. 소스 코드는 [https://github.com/OpenQA-Desktop/OpenQA-Desktop](https://github.com/OpenQA-Desktop/OpenQA-Desktop) 에 있습니다.

[![Latest Release](https://img.shields.io/badge/Latest%20Release-OpenQA-111827?style=for-the-badge)](https://github.com/OpenQA-Desktop/OpenQA/releases/latest)
[![Install for macOS](https://img.shields.io/badge/Install-macOS%20via%20shell-0A84FF?style=for-the-badge&logo=apple)](https://raw.githubusercontent.com/OpenQA-Desktop/OpenQA/main/install.sh)
[![Download for Windows](https://img.shields.io/badge/Download-Windows%20Installer-0078D4?style=for-the-badge&logo=windows)](https://github.com/OpenQA-Desktop/OpenQA/releases/latest/download/OpenQA_0.1.8_x64-setup.exe)

## Install

### macOS

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

### Windows

- 위 Windows 다운로드 버튼 또는 [latest release](https://github.com/OpenQA-Desktop/OpenQA/releases/latest) 에서 `OpenQA_0.1.8_x64-setup.exe`를 받습니다.
- 설치 파일을 실행해 OpenQA를 설치합니다.
- 이후 버전부터는 앱 내부 업데이트로 받을 수 있습니다.

현재 공개 빌드는 macOS shell installer와 Windows x64 installer를 제공합니다.

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
- [OpenQA.app.tar.gz.sig](https://github.com/OpenQA-Desktop/OpenQA/releases/latest/download/OpenQA.app.tar.gz.sig)
- [latest.json](https://github.com/OpenQA-Desktop/OpenQA/releases/latest/download/latest.json)
- [OpenQA_0.1.8_x64-setup.exe](https://github.com/OpenQA-Desktop/OpenQA/releases/latest/download/OpenQA_0.1.8_x64-setup.exe)
- [OpenQA_0.1.8_x64-setup.exe.sig](https://github.com/OpenQA-Desktop/OpenQA/releases/latest/download/OpenQA_0.1.8_x64-setup.exe.sig)

`latest.json`은 macOS와 Windows 앱 내부 업데이트 metadata를 함께 제공합니다. `OpenQA.app.tar.gz`, `OpenQA.app.tar.gz.sig`, `OpenQA_0.1.8_x64-setup.exe`, `OpenQA_0.1.8_x64-setup.exe.sig`은 플랫폼별 업데이트 경로에서 사용됩니다.

## Source

- Source repository: [https://github.com/OpenQA-Desktop/OpenQA-Desktop](https://github.com/OpenQA-Desktop/OpenQA-Desktop)
- Releases: [https://github.com/OpenQA-Desktop/OpenQA/releases/latest](https://github.com/OpenQA-Desktop/OpenQA/releases/latest)

## Notes

- macOS는 shell 설치 경로를 기본으로 유지합니다.
- Windows는 direct download installer를 기본 경로로 제공합니다.
