#!/bin/bash
set -e

cd "$(dirname "$0")/../MiraiBot"

cd backend
thrift --out ./ --gen py ../src/main/thrift/backend.thrift
cd ..
./gradlew clean shadowJar