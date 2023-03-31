import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flashchat/components/register_widget.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  'Flash Chat',
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ],
              isRepeatingAnimation: true,
            ),
            SizedBox(
              height: 40,
            ),
            RegisterWidget(
              title: 'Sign In',
              onTap: () {
                context.go('/sign_in_page');
              },
            ),
            SizedBox(
              height: 20,
            ),
            RegisterWidget(
              title: 'Sign Up',
              containerColor: Color(0xff2571B6),
              onTap: () {
                context.go('/sign_up_page');
              },
            ),
          ],
        ),
      ),
    );
  }
}
