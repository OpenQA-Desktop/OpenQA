# OpenQA

OpenQA는 자연어 시나리오로 웹 테스트를 실행하는 로컬 QA 데스크톱 앱입니다.

이 저장소는 macOS 배포 채널입니다. 소스 코드는 [https://github.com/OpenQA-Desktop/OpenQA-Desktop](https://github.com/OpenQA-Desktop/OpenQA-Desktop) 에 있습니다.

[![Latest Release](https://img.shields.io/badge/Latest%20Release-OpenQA-111827?style=for-the-badge)](https://github.com/OpenQA-Desktop/OpenQA/releases/latest)
[![Install for macOS](https://img.shields.io/badge/Install-macOS%20via%20shell-0A84FF?style=for-the-badge&logo=apple)](https://raw.githubusercontent.com/OpenQA-Desktop/OpenQA/main/install.sh)

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

현재 공개 빌드는 macOS shell installer를 제공합니다.

## Getting Started

처음 실행한 뒤에는 보통 아래 순서로 사용합니다.

1. LLM 제공자를 연결합니다. 현재 앱에는 `OpenAI`, `Claude (Anthropic)`, `Google Gemini`, `Z.AI GLM`, `xAI (Grok)`, `DeepSeek`, `OpenRouter`, `Together AI`, `Groq`, `Fireworks AI`, `Cerebras`, `Baseten`, `Ollama (Local)`, `LM Studio (Local)`, `Custom (OpenAI-Compatible)`가 있습니다.
2. 처음 설정이 목적이면 `OpenAI`, `Ollama`, `Custom (OpenAI-Compatible)`부터 시작하는 편이 가장 단순합니다.
3. 워크스페이스에서 새 테스트를 만들고 대상 URL과 자연어 시나리오를 입력합니다.
4. 실행을 시작하면 OpenQA가 실제 브라우저를 열고 페이지를 관찰하면서 필요한 액션을 순차적으로 수행합니다.
5. 실행이 끝나면 타임라인, 스크린샷, 진단 정보, `run_report.json`으로 결과를 확인합니다.
6. 반복 확인이 필요하면 스냅샷 재사용이나 interval 스케줄을 설정해 같은 흐름을 자동으로 다시 실행합니다.

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

`latest.json`, `OpenQA.app.tar.gz`, `OpenQA.app.tar.gz.sig`은 macOS 앱 내부 업데이트 경로에서 사용됩니다.

## Source

- Source repository: [https://github.com/OpenQA-Desktop/OpenQA-Desktop](https://github.com/OpenQA-Desktop/OpenQA-Desktop)
- Releases: [https://github.com/OpenQA-Desktop/OpenQA/releases/latest](https://github.com/OpenQA-Desktop/OpenQA/releases/latest)

## Notes

- macOS는 shell 설치 경로를 기본으로 유지합니다.
