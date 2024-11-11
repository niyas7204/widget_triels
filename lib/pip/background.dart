import 'package:flutter/material.dart';

class PipBackground extends StatefulWidget {
  const PipBackground({super.key});

  @override
  State<PipBackground> createState() => _PipBackgroundState();
}

class _PipBackgroundState extends State<PipBackground> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bacground Page'),
      ),
      body: const SafeArea(child: Center(child: Text("Background"))),
    );
  }
}
