import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sports_events/styles.dart';
import 'package:sports_events/widgets/button_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class LetterSendScreen extends StatelessWidget {
  const LetterSendScreen({super.key});

  Future<void> launchTelegram() async {
    var url = Uri.parse("https://t.me/fatum113");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF2F4F7),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 64,
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Image.asset(
                      'assets/Background Pattern & Mask.png',
                      width: 280,
                      height: 280,
                    ),
                    Image.asset(
                      'assets/Frame 2087325780.png',
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Письмо отправлено',
                  style: sendLetterHeader,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'На указанную почту было отправлено\nписьмо, в нём содержится ссылка для\nсмены пароля.',
                  style: sendLetterTextBlack,
                ),
                SizedBox(
                  height: 12,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Обычно письмо приходит сразу же.\nЕсли письмо долго не приходит, проверьте\nпапку «Спам» или ',
                        style: sendLetterTextGray,
                      ),
                      TextSpan(
                        text: 'напишите в поддержку',
                        style: textLink,
                        recognizer: TapGestureRecognizer()
                          ..onTap = launchTelegram,
                      ),
                      TextSpan(text: '.', style: sendLetterTextGray),
                    ],
                  ),
                ),
                Spacer(),
                ButtonWidget(
                  title: 'Понял, проверю почту',
                ),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
