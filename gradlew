#!/bin/sh
# Gradle launcher for VerityAndroid. Uses a locally installed Gradle if available.
set -e
if command -v gradle >/dev/null 2>&1; then
  exec gradle "$@"
fi
echo "Gradle is not installed. Install Gradle 8.8 (or provide the Gradle distribution) and run this command again." >&2
exit 1
