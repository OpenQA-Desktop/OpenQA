#!/bin/sh

set -eu

REPO="${OPENQA_REPO:-OpenQA-Desktop/OpenQA}"
ASSET_NAME="${OPENQA_ASSET_NAME:-OpenQA.app.tar.gz}"
DOWNLOAD_URL="${OPENQA_DOWNLOAD_URL:-https://github.com/${REPO}/releases/latest/download/${ASSET_NAME}}"
SKIP_OPEN="${OPENQA_SKIP_OPEN:-0}"

log() {
  printf '%s\n' "$*"
}

fail() {
  printf 'OpenQA install failed: %s\n' "$*" >&2
  exit 1
}

require_cmd() {
  command -v "$1" >/dev/null 2>&1 || fail "missing required command: $1"
}

make_temp_dir() {
  if command -v mktemp >/dev/null 2>&1; then
    mktemp -d "${TMPDIR:-/tmp}/openqa-install.XXXXXX" 2>/dev/null && return 0
    mktemp -d -t openqa-install && return 0
  fi
  fail "mktemp is required"
}

OS_NAME="$(uname -s 2>/dev/null || printf '')"
ARCH_NAME="$(uname -m 2>/dev/null || printf '')"

[ "$OS_NAME" = "Darwin" ] || fail "this installer currently supports macOS only"
[ "$ARCH_NAME" = "arm64" ] || fail "the public OpenQA build is currently Apple Silicon only (arm64)"

require_cmd curl
require_cmd tar
require_cmd ditto
require_cmd open

INSTALL_DIR="${OPENQA_INSTALL_DIR:-/Applications}"
if [ "$INSTALL_DIR" = "/Applications" ] && [ ! -w "$INSTALL_DIR" ]; then
  INSTALL_DIR="${HOME}/Applications"
fi

TARGET_APP="${INSTALL_DIR}/OpenQA.app"
TMP_DIR="$(make_temp_dir)"
ARCHIVE_PATH="${TMP_DIR}/${ASSET_NAME}"
STAGE_DIR="${TMP_DIR}/stage"

cleanup() {
  rm -rf "$TMP_DIR"
}

trap cleanup EXIT INT TERM HUP

mkdir -p "$STAGE_DIR" "$INSTALL_DIR"

log "Downloading OpenQA from ${DOWNLOAD_URL}"
curl -fL --progress-bar "$DOWNLOAD_URL" -o "$ARCHIVE_PATH"

log "Extracting archive"
tar -xzf "$ARCHIVE_PATH" -C "$STAGE_DIR"

[ -d "${STAGE_DIR}/OpenQA.app" ] || fail "archive did not contain OpenQA.app"

if [ -e "$TARGET_APP" ]; then
  log "Replacing existing install at ${TARGET_APP}"
  rm -rf "$TARGET_APP"
fi

log "Installing to ${TARGET_APP}"
ditto "${STAGE_DIR}/OpenQA.app" "$TARGET_APP"

if command -v xattr >/dev/null 2>&1; then
  xattr -dr com.apple.quarantine "$TARGET_APP" >/dev/null 2>&1 || true
fi

log "OpenQA installed successfully."
log "App location: ${TARGET_APP}"

if [ "$SKIP_OPEN" != "1" ]; then
  log "Opening OpenQA"
  open "$TARGET_APP"
else
  log "Skipping launch because OPENQA_SKIP_OPEN=1"
fi
