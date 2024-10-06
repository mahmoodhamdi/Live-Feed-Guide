import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:live_feed/app.dart';

late List<CameraDescription> cameras;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}
