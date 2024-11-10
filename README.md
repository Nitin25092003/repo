# makers_seller_app

Mobile application designed for vendors to manage products and seamlessly engage
with customers for business growth.

* [Installation](#installation)
* [Dev Setup](#dev-setup)
* [Overview](#overview)
* [Scripts](#scripts)


<a name="installation"></a>
## Installation
Simply clone the repository.

```bash
git clone git@github.com:Updatus-Inc/makers-seller-app.git makers_seller_app
cd makers_seller_app
```

<a name="dev-setup"></a>
## Dev setup

#### Setup Git Hooks

To set up pre-commit hooks, run:

```bash
cd .git/hooks
touch pre-commit
```

Add the following script to the `pre-commit` file:

```bash
#!/bin/sh
# Run dart format
echo "Running dart format..."
dart format .
# Include changes to commit
git add .
# Run flutter analyze
echo "Running flutter analyze..."
flutter analyze
# Check for errors
if [ $? -ne 0 ]; then
  echo "Pre-commit checks failed. Please fix the issues before committing."
  exit 1
fi
```

And make it executable:

```bash
chmod +x pre-commit
```

<a name="overview"></a>
## Overview

This project is a Flutter application.
A few resources to get you started:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

#### Running via CLI / VS Code

Create android emulator, use below command at project root to create / list available emulators.

```bash
cd makers_seller_app
flutter emulators
```

To run an emulator, run
```bash
flutter emulators --launch <emulator id>
```

To create a new emulator, run
```bash
flutter emulators --create [--name xyz]
```

Post emulator launch, run
```bash
flutter run
```

#### Running via Android Studio
- [Running from Android Studio](https://docs.flutter.dev/tools/android-studio#running-and-debugging)

<a name="scripts"></a>
## Scripts

- `flutter create . --platforms=android` - Generate android directory