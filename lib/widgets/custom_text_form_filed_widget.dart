import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final String hintText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType inputType;
  final List<TextInputFormatter>? inputFormatters;
  final int maxLines;
  final TextAlign textAlign;
  final Color hintColor;
  const CustomTextField({
    Key? key,
    required this.controller,
    this.focusNode,
    this.hintText = '',
    this.onChanged,
    this.onFieldSubmitted,
    this.obscureText = false,
    this.validator,
    this.inputType = TextInputType.text,
    this.inputFormatters,
    this.maxLines = 1,
    this.textAlign = TextAlign.start,
    this.hintColor = const Color(0xFF667085),
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    if (!_focusNode.hasFocus && widget.onFieldSubmitted != null) {
      widget.onFieldSubmitted!(widget.controller.text);
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: widget.textAlign,
      maxLines: widget.maxLines,
      textAlignVertical: TextAlignVertical.center,
      validator: widget.validator,
      controller: widget.controller,
      focusNode: _focusNode,
      cursorColor: Color.fromRGBO(16, 24, 40, 1),
      cursorHeight: 20,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontSize: 16,
          color: widget.hintColor,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.3,
        ),
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(left: 16, top: 10, bottom: 10),
        isDense: true,
        errorStyle: const TextStyle(
          fontSize: 12,
          color: Colors.red,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.3,
        ),
      ),
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      style: const TextStyle(
        fontSize: 16,
        color: Color.fromRGBO(16, 24, 40, 1),
        fontWeight: FontWeight.w400,
        letterSpacing: -0.3,
      ),
      keyboardType: widget.inputType,
      inputFormatters: widget.inputFormatters,
    );
  }
}
