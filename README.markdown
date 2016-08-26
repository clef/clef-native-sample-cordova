# Sample Cordova Application for Clef Native

This project provides a barebone Cordova app and shows simple usage of the Clef Native Cordova plugin.

## Quick start for Cordova

This project supports the iOS and Andoid cordova platforms. We've been using a Makefile to do less typing when setting up and tearing down the environment, but if you look in the Makefile, you'll see that it is a very thin wrapper over cordova commands. To get started with the project, you'll first need to install Cordova. From the command line, run:

```
sudo npm install -g cordova
```

You'll also need to install **Xcode** (>= 7.3) and **Android Studio** and the Android SDK (comes with Android Studio). You'll also need to download some additional repositories from Android. From the command line, run:

```
android update sdk --no-ui --all --filter tools,platform-tools,android-24,build-tools-24.0.2,extra-android-m2repository
```

*Note:* if the `android` command is not available, you may need to add the Android SDK tools directory to your shell's `$PATH`. The default location for these tools is `/Users/<USER>/Library/Android/sdk/tools/`. You can add them to your $PATH by typing `export PATH=/Users/<USER>/Library/Android/sdk/tools/android:$PATH` on the command line.

Finally, let's add the iOS and Android platforms to the cordova project: 

```
cordova platform add ios --save
cordova platform add android --save
```

## Installing the Clef Native SDK

Now, we'll add the Clef Native Cordova plugin, which is hosted on npm:

```
cordova plugin add @clef/cordova-plugin-clef --save
```

The plugin installation may take a moment. Once it's complete, we should be able to compile and run both iOS and Android: 

```
cordova run ios --emulator
```

or 

```
cordova run android --device
```

## Updating plugins

If you want to update plugins in bulk, I recommend
[cordova-check-plugins](https://github.com/dpa99c/cordova-check-plugins). You
can interactive step through plugin upgrades or upgrade them all automatically.
