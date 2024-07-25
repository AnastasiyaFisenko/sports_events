import 'package:flutter/material.dart';
import 'package:sports_events/styles.dart';
import 'package:sports_events/widgets/custom_text_form_filed_widget.dart';
import 'package:sports_events/widgets/button_widget.dart';

class RegFormWidget extends StatefulWidget {
  const RegFormWidget({super.key});

  @override
  State<RegFormWidget> createState() => _RegFormWidgetState();
}

class _RegFormWidgetState extends State<RegFormWidget> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Text('ПОЧТА АККАУНТА', style: headersStyle),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(16),
              ),
              child: CustomTextField(
                controller: emailController,
                hintText: 'Введите почту',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: Text(
              'Используйте почту, которая привязана\nк вашему аккаунту, на этот адрес придёт\nссылка для восстановления пароля',
              style: textHintField,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 24),
            child: Column(
              children: [
                ButtonWidget(
                  title: 'Отправить письмо',
                  backgroundColor: Color(0xFFEC4A0A),
                ),
                SizedBox(
                  height: 16,
                ),
                ButtonWidget(
                  title: 'Написать в поддержку',
                  backgroundColor: Color(0XFFF2F4F7),
                  fontColor: Color(0xFFEC4A0A),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
