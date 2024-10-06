# Live Feed Guide 📸

A comprehensive Flutter example demonstrating how to implement and use the camera package for creating live camera feeds in your Flutter applications.

🌟 Features

- 📷 Live camera feed display
- 📱 Supports both front and back cameras
- 🚀 Easy integration with Flutter

## 🚀 Getting Started

### Prerequisites

- Flutter SDK
- Android Studio / VS Code
- Basic understanding of Flutter development

### Installation

1. Add the following dependency to your `pubspec.yaml`

   ```yaml
   dependencies
     camera <latest-version>
   ```

2. Run

   ```bash
   flutter pub get
   ```

### ⚙️ Configuration

#### 🤖 Configuring Android

1. Change the minimum Android SDK requirements in `android/app/build.gradle`

   ```gradle
   android {
       compileSdkVersion 34

       defaultConfig {
           minSdkVersion 21
           targetSdkVersion 34
       }
   }
   ```

2. Add required permissions in `android/app/src/main/AndroidManifest.xml`

   ```xml
   <manifest xmlnsandroid="http//schemas.android.com/apk/res/android"
       package="com.example.myapp">
       <uses-permission android:name="android.permission.CAMERA"/>
       <uses-permission android:name="android.permission.RECORD_AUDIO"/>
       ...
   </manifest>
   ```

#### 🍏 Configuring iOS

1. Add usage descriptions in `ios/Runner/Info.plist`

   ```xml
   <key>NSCameraUsageDescription</key>
   <string>Allow access to the camera for live feed.</string>
   <key>NSMicrophoneUsageDescription</key>
   <string>Allow access to the microphone for audio input.</string>
   ```

## 💡 Usage

### Initialization

Make sure to initialize the camera in your `main.dart`

```dart
late List<CameraDescription> cameras;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}
```

### Creating a Live Feed

Set up the `CameraController` in your widget

```dart
class _MyHomePageState extends State<MyHomePage> {
  late CameraController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(cameras[0], ResolutionPreset.max);
    _controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }
}
```

## 🏗️ Project Structure

``` structure
lib/
├── app.dart
├── main.dart
└── home_page.dart
```

## 🛠️ Core Components

### CameraController

A utility class that handles

- Initializing the camera
- Displaying the live camera feed
- Managing camera settings

### MyHomePage

A dedicated widget for displaying

- The live camera feed using `CameraPreview`
- Handling camera initialization and errors

### 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

### 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

### ✨ Acknowledgments

- Special thanks to the camera package maintainers.

### Quote

> "مَن صَلَّى عَلَيَّ واحِدَةً صَلَّى اللَّهُ عليه عَشْرًا."
>
> صحيح مسلم
