import 'dart:developer';

import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

class ArHome extends StatefulWidget {
  const ArHome({super.key});

  @override
  State<ArHome> createState() => _ArHomeState();
}

class _ArHomeState extends State<ArHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ARKitSceneView(
          onARKitViewCreated: (controller) async {
            try {
              return await arView(controller);
            } catch (e) {
              log("error ====== $e");
            }
          },
        ),
      ),
    );
  }
}

Future<void> arView(ARKitController controller) async {
  final nodeAr = ARKitNode(
      geometry: ARKitSphere(materials: [
        ARKitMaterial(
            diffuse: const ARKitMaterialImage("assets/images_ar/ft_ar.jpg"),
            doubleSided: true),
      ], radius: 1),
      position: Vector3(0, 0, 0));
  await controller.add(nodeAr);
}
