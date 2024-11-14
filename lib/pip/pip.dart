import 'package:flutter/material.dart';
import 'package:pip_view/pip_view.dart';
import 'package:trywidgets/ar/ar_home.dart';
import 'package:trywidgets/pip/background.dart';

class PipViewPage extends StatefulWidget {
  const PipViewPage({super.key});

  @override
  State<PipViewPage> createState() => _PipViewPageState();
}

class _PipViewPageState extends State<PipViewPage> {
  @override
  Widget build(BuildContext context) {
    return PIPView(
      builder: (context, isFloating) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('test pip'),
          ),
          body: SafeArea(
              child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ArHome(),
                      ));
                  // PIPView.of(context)?.presentBelow(const PipBackground());
                },
                child: const Text("PIP view")),
          )),
        );
      },
    );
  }
}
