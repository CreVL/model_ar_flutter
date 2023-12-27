import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Model Viewer')),
        body: const ModelViewer(
          src: 'https://jenkins.oits.su/lego_spinner_v2.glb',
          alt: '3D-модель астронавта',
          ar: true,
          autoRotate: true,
          iosSrc: 'https://modelviewer.dev/shared-assets/models/Astronaut.usdz',
          disableZoom: true,
          cameraControls: true,
          cameraOrbit: '10deg 75deg 1.5m',
          cameraTarget: "0m 1.5m -0.5m",
          scale: '0.1',
        ),
      ),
    );
  }
}
