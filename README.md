Flutter Start 02 - App v.2.8.1
---

[DEMO of Web version](https://flutter-start02.vercel.app)

```
flutter pub get
flutter pub upgrade
flutter pub outdated
flutter run -v
flutter run
flutter run -d chrome
flutter build web
flutter config --enable-web
flutter clean
flutter doctor --android-licenses
flutter create .
flutter pub run flutter_launcher_icons:main
```

Emulator => Wipe data

---------------------

* [Entrypoint](lib/main.dart)
* [Packages](pubspec.yaml)
    - [flutter_launcher_icons: ^0.9.2](https://pub.dev/packages/flutter_launcher_icons) => `flutter pub get`
      => `flutter pub run flutter_launcher_icons:main `
    - [android icons](android/app/src/main/res)
    - [android splash icons](android/app/src/main/res/drawable/splash_icon.png)
    - [android splash icons](android/app/src/main/res/drawable-v21/splash_icon.png)
    - [ios icons](ios/Runner/Assets.xcassets/AppIcon.appiconset)

---------------------

### TODO

* PATH: `C:\Users\XXX\development\sdks` || `D:\flutter\bin`
* flutter_windows_2.8.1-stable => `flutter`
* Android SDK version 30.0.3
* Configure => Virtual Device Manager => Pixel 5 API 32 => Android API.32 => Download
* Configure => SDK Manager => SDK Tools => Android SDK Command-line Tool
* To hot restart changes while running, press in Terminal: "r" or "R".
* Visual Studio Code => `lib\main.dart` => right click => Run Without Debugging

---------------------

## Installation info

* [Get Started](https://docs.flutter.dev/get-started)
* [Windows install](https://docs.flutter.dev/get-started/install/windows)
    * [2.8.1](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_2.8.1-stable.zip)
    * [other](https://docs.flutter.dev/development/tools/sdk/releases
    * Extract the zip file and place the contained flutter in the desired installation location for the Flutter SDK (for
      example, `C:\Users\<your-user-name>\Documents`).
    * Do not install Flutter in a directory like `C:\Program Files\` that requires elevated privileges.
    * From the Start search bar, enter ‘env’ and select Edit environment variables for your account
    * Under User variables check if there is an entry called Path
    * [Install Android Studio](https://developer.android.com/studio)
    * [commandlinetools-win-8092744_latest.zip](https://developer.android.com/studio#:~:text=commandlinetools%2Dwin%2D8092744_latest.zip)
    * Android SDK
    * [Dart SDK archive](https://dart.dev/get-dart/archive)
    * [JDK 17](https://www.oracle.com/java/technologies/downloads/#jdk17-windows)
* [macOS install](https://docs.flutter.dev/get-started/install/macos)
* [Linux install](https://docs.flutter.dev/get-started/install/linux)
* [Android Studio Fix](https://intellij-support.jetbrains.com/hc/en-us/articles/360007568559-Start-Failed-Internal-error-recovering-IDE-to-the-working-state-after-the-critical-startup-error)
  => `netsh winsock reset`
  clear PATHs: `C:\Users\xxx\AppData\Roaming\JetBrains` ||`C:\Users\xxx\AppData\Local\Google`
  || `C:\Users\xxx\AppData\Local\npm-cache`
* Android Studio => Appearance => Path Variables => KOTLIN_BUNDLED C:
  \Users\Dell\AppData\Roaming\Google\AndroidStudio2021.1\plugins\Kotlin\kotlinc
* Android SDK => Optimize Disk Space
* [HEX Colors](https://www.colorhexa.com/84fca6)
* [Free icons](https://www.freepik.com/free-icon/development_14967745.htm#query=progress&position=36&from_view=search)
* [Icons](https://www.flaticon.com/free-icon/development_821501)
* [Pic](https://www.freepik.com/free-vector/tropical-island-early-morning-sea-palms_20955981.htm#query=night%20sky&position=11&from_view=search)

------------------------

## Routing / MaterialAppNavigator

* map based routing - routes (for predefined routes)
* onGenerateRoute callback
    - navigator.pushNamed(context, '/xxx')
    - onGenerateRoute called with '/xxx'
    - parse the route name '/xxx'
    - create instance of MENU_ITEM, pass in '/xxx'

------------------------

## [Flutter elements](https://docs.flutter.dev/development/ui/widgets/material)

* [ListView](https://docs.flutter.dev/cookbook/lists/basic-list)
* [Mixed list](https://docs.flutter.dev/cookbook/lists/mixed-list)
* [ListView class](https://api.flutter.dev/flutter/widgets/ListView-class.html)
* [ListTile class](https://api.flutter.dev/flutter/material/ListTile-class.html)
* [Buttons](https://api.flutter.dev/flutter/material/TextButton-class.html)
* [Material Buttons](https://material.io/components/buttons/flutter#theming-buttons)
* [Article](https://flutteragency.com/add-a-listview-to-a-column/)

### Debugging

* [Standard logging events](https://docs.flutter.dev/development/tools/devtools/logging)
* [Debugging Flutter apps programmatically](https://docs.flutter.dev/testing/code-debugging#logging)

------------------------

## Vercel Deploy Settings

1. Framework Preset: `Other`
2. Build Command: `ls && pwd`
3. Output Directory: `build/web`
4. Install Command:

```shell
if cd flutter; then git pull && cd .. ; else git clone https://github.com/flutter/flutter.git -b stable; fi && ls && cd flutter && git checkout 2.8.1 && cd .. && flutter/bin/flutter doctor && flutter/bin/flutter clean && flutter/bin/flutter build web
```

```shell
if cd flutter; then git pull && cd .. ; else git clone https://github.com/flutter/flutter.git -b stable; fi && ls && cd flutter && git checkout 2.8.1 && cd .. && flutter/bin/flutter clean && flutter/bin/flutter build web --release
```

### Build and Deploy a Flutter Web project on [Vercel](https://vercel.com)

* Framework Preset: `Other`
* Build Command: `flutter/bin/flutter build web --release`
* Build Command: `flutter/bin/flutter build web`
* Output Directory: `build/web`
* Install Command:
* `if cd flutter; then git pull && cd .. ; else git clone https://github.com/flutter/flutter.git; fi && ls && flutter/bin/flutter doctor && flutter/bin/flutter clean && flutter/bin/flutter config --enable-web && flutter/bin/flutter pub get`
* `if cd flutter; then git pull && cd .. ; else git clone https://github.com/flutter/flutter.git; fi && ls && flutter/bin/flutter doctor && flutter/bin/flutter clean && flutter/bin/flutter config --enable-web`

---------------------

## Dart SDK

* [Dart SDK archive](https://dart.dev/get-dart/archive)
* [2.15.1](https://storage.googleapis.com/dart-archive/channels/stable/release/2.15.1/sdk/dartsdk-windows-x64-release.zip)
* [Dart Code](https://dartcode.org/releases/v3-34/)

``` 
dart --version
dart pub get
dart fix --dry-run
dart fix --apply
```

````javascript
environment:
    sdk: '>=2.15.1 <3.0.0'
````

---------------------

## IDEA

* [email](https://www.emailondeck.com/eod.php)


---------------------

## Tutorial

* [Flutter Tutorial – Learn Flutter](https://googleflutter.com/)
