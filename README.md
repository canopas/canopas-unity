## Unity - Flutter Application

Unity is cross-platform Leave Management application written in dart using Flutter.

## Download App

<img src="https://github.com/canopas/canopas-unity/blob/update-doc/screenshots/app-store-dl.png" width="200">   <img src="https://github.com/canopas/canopas-unity/blob/update-doc/screenshots/google-playstore-dl.png" width="200">

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Getting started
* Project setup instructions:

#### 1. [Flutter Environment Setup](https://docs.flutter.dev/get-started/install)
> **Note**: Flutter sdk vesion `3.3.7` is recommended to run project.

#### 2. Clone the repo
```sh
$ git clone https://github.com/canopas/canopas-unity.git
```
#### 3. Setup the firebase app

1. You'll need to create a Firebase instance. Follow the instructions at https://console.firebase.google.com/
2. Once your Firebase instance is created, you'll need to be enable Google authentication.

* Go to Firebase console for your new instance.
* Click "Authentication" in the left-hand menu
* Click the "sign-in method" tab
* Click the "Google" and enable it.

3. Enable the Firebase Database
* Go to the Firebase Console
* Click "Firestore Database" in the left-hand menu
* Click the "Create Database" button
* It will prompt you to set up, rules, for the sake of simplicity, let us choose test mode, for now.
* On the next screen, select any of the locations you prefer.

4. Add Flutter App in Firebase
* In the Firebase console, in the settings of your project
* Click on the Flutter Icon to add Flutter app
* Follow the instruction to add Flutter app
![]
* It will create firebase_options.dart file in the lib folder.

5. Get Google ClientId for app
* Go to Google Cloud Console: https://console.cloud.google.com/
* On the top, Choose your project from drop down menu if selected default project is not your current project.
* Click on the "API APIs and services".
* On the left side menu, Select "Credentials".
* Click on the "Web client(auto created by Google Service)".
* Copy **"Client Id"** and **"Client Secret"** and replace it with below.

5. Create Local file 
* Add a new dart file named desktop_credentials in the lib folder.
* Add the Following Code in the file
`const String googleClientId =
  "YOUR_GOOGLE_CLIENT_ID";
  const String authClientSecret = "YOUR AUTH_CLIENT_SECRET";`

