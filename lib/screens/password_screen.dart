import 'package:flutter/material.dart';
import 'package:sports_events/styles.dart';
import 'package:sports_events/widgets/form_widget.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF2F4F7),
        appBar: AppBar(
          toolbarHeight: 76,
          backgroundColor: Color(0xFFF2F4F7),
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Восстановление\nпароля',
              style: mainHeader,
            ),
          ),
        ),
        body: RegFormWidget(),
      ),
    );
  }
}
