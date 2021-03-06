#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/AndroidTools/adb devices

$DIR/AndroidTools/adb shell setprop debug.mono.trace E:all

$DIR/AndroidTools/aapt dump badging $DIR/app.web.v1.apk

$DIR/AndroidTools/adb install -r $DIR/app.web.v1.apk

$DIR/AndroidTools/adb shell am start -a android.intent.action.MAIN -n app.web.v1/app.web.WebViewActivity

