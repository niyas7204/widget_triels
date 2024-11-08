import 'package:flutter/material.dart';

class ImplAnmHome extends StatefulWidget {
  const ImplAnmHome({super.key});

  @override
  State<ImplAnmHome> createState() => _ImplAnmHomeState();
}

class _ImplAnmHomeState extends State<ImplAnmHome> {
  double angle = 0.0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              top: -size.width / 2,
              child: AnimatedRotation(
                turns: angle,
                duration: const Duration(seconds: 1),
                child: CircleAvatar(
                  radius: size.width / 2,
                  backgroundColor: Colors.black.withOpacity(.5),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        bottom: -80,
                        left: (size.width / 2) - 80,
                        child: const CircleAvatar(
                          radius: 80,
                          backgroundColor: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            angle -= 1;
          });
        },
      ),
    );
  }
}
