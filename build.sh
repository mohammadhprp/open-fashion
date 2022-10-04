#! /bin/bash

read -p "App version: " version;

appName="open_fashion0.0"
directory="outputs"
release="$directory/$appName.$version"

if [ ! -d "$directory" ];
then 
	mkdir outputs;
fi

if [ -d "$release" ];
then
	rm -rf $release;
fi

flutter clean;
flutter build apk --split-per-abi --release; cp build/app/outputs/flutter-apk/app-armeabi-v7a-release.apk $directory/;
flutter build appbundle --release; cp build/app/outputs/bundle/release/app-release.aab $directory/;
flutter build web --release; cp -r build/web $directory/;

mkdir $release; mv $directory/app-armeabi-v7a-release.apk $directory/app-release.aab $directory/web $release;

mv $release/app-armeabi-v7a-release.apk $release/$appName.$version.apk;
mv $release/app-release.aab $release/$appName.$version.aab;

zip -r $release/web.zip $release/web;