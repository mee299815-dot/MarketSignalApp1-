#!/bin/bash
./gradlew clean

VERSION_NAME="1.0"
DATE=$(date +"%Y-%m-%d_%H-%M")

./gradlew assembleRelease

OUTPUT_DIR="release-apk"
mkdir -p $OUTPUT_DIR

APK_NAME="MarketSignal_v${VERSION_NAME}_${DATE}.apk"
cp app/build/outputs/apk/release/app-release.apk "$OUTPUT_DIR/$APK_NAME"

echo "✅ APK generated: $OUTPUT_DIR/$APK_NAME"
