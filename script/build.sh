#!/bin/bash
set -e

cd "$(dirname "$0")/../MiraiBot"

./gradlew clean shadowJar