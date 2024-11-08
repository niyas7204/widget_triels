import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:trywidgets/swipe_buttom/confirmation_page.dart';

class SwipeButtonHomePage extends StatefulWidget {
  const SwipeButtonHomePage({super.key});

  @override
  State<SwipeButtonHomePage> createState() => _SwipeButtonHomePageState();
}

class _SwipeButtonHomePageState extends State<SwipeButtonHomePage> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          child: SwipeableButtonView(
              isFinished: isFinished,
              onFinish: () {
                log("finished");
                Navigator.push(
                    context,
                    PageTransition(
                        child: const ConfirmationPage(),
                        type: PageTransitionType.fade));
                Future.delayed(
                  const Duration(seconds: 1),
                  () {
                    setState(() {
                      isFinished = false;
                    });
                  },
                );
              },
              onWaitingProcess: () {
                log("on waiting");
                Future.delayed(
                  const Duration(seconds: 1),
                  () {
                    log("on waiting1");
                    setState(() {
                      log("on waiting2");
                      isFinished = true;
                    });
                  },
                );
              },
              activeColor: Colors.green,
              buttonWidget: const Icon(Icons.arrow_forward),
              buttonText: "Slide to pay"),
        ),
      ),
    );
  }
}
