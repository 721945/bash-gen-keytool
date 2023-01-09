#!/bin/bash
# Need to set before using 
# 
# [Mac] 
# export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/Contents/Home"
# export PATH="$PATH:$JAVA_HOME/bin"
# 
# Ask the user for their config
read -p "What's your path [Current]? " kpath
read -p "What's your keytool file name ? " kname
read -p "What's your keytool alias name ? " kalias

kpath=${kpath:-"."}
genkey() {
    keytool -genkey -v -keystore "$kpath/$kname.jks" -keyalg RSA -keysize 2048 -validity 10000 -alias "$kalias"
}

genkey