import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:object_detection/main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CameraImage imgCamera;
  CameraController cameraController;
  String result = "";
  bool isWorking = false;

  initiCamera() {
    cameraController = CameraController(cameras[0], ResolutionPreset.medium);
    cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }

      setState(() {
        cameraController.startImageStream((imageFromStream) => {
        if (!isWorking) {
          isWorking = true,
          imgCamera = imageFromStream,
        }
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
