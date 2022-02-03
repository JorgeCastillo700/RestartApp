#!/usr/bin/env bash

# Updating Info.plist

echo "Updating Info.plist"

PLIST=$BUILD_REPOSITORY_LOCALPATH/Restart/Info.plist

echo "VERSION_CODE_SHIFT : $.{VERSION_CODE_SHIFT}"
echo "APPCENTER_BUILD_ID: $.{APPCENTER_BUILD_ID}"

VERSION_CODE=$((VERSION_CODE_SHIFT + APPCENTER_BUILD_ID))

echo "VERSION CODE : $.{VERSION_CODE}"

#/usr/libexec/PlistBuddy -c "Set :CFBundleShortVersionString 1.0.${VERSION_CODE}" $PLIST

# Print out file for reference
cat $PLIST

echo "Updated info.plist!"
