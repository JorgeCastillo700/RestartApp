#!/usr/bin/env bash
#
# Download the latest state (`develop` branch) of the iOS SDK https://github.com/Microsoft/AppCenter-SDK-Apple
# And overwrite the files in the respective location of the Xcode project.

if [ "$APPCENTER_BRANCH" == "develop" ];
then
    cd $APPCENTER_SOURCE_DIRECTORY/Pods/AppCenter/
    curl -O https://mobilecentersdkdev.blob.core.windows.net/sdk/AppCenter-SDK-Apple.zip
    unzip -o AppCenter-SDK-Apple.zip
fi

VERSION_CODE=$((VERSION_CODE_SHIFT + APPCENTER_BUILD_ID))
plutil -replace CFBundleVersion -string "$VERSION_CODE"
$APPCENTER_SOURCE_DIRECTORY/Restart/Info.plist