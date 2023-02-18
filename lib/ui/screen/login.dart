import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_manager/ui/utils/text_style.dart';
import 'package:task_manager/ui/widgets/app_text_field_widget.dart';
import 'package:task_manager/ui/widgets/screen_background_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get Started With',
              style: screenTitleTextStyle,
            ),
            SizedBox(
              height: 24,
            ),
            AppTextFieldWidget(
                controller: TextEditingController(), hintText: 'Email'),
            const SizedBox(
              height: 16,
            ),
            AppTextFieldWidget(
              obscureText: true,
              hintText: 'Password',
              controller: TextEditingController(),
            ),
          ],
        ),
      ),
    );
  }
}
