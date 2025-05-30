import 'package:adecfineo/src/themes/themes.dart';
import 'package:flutter/material.dart';

import 'input_text.dart';

class InputPasswordForm extends StatefulWidget {
  final TextEditingController controller;
  final String validatorMessage;
  final String? hintText;
  final Widget? prefixIcon;

  const InputPasswordForm({
    super.key,
    required this.controller,
    required this.validatorMessage,
    this.hintText,
    this.prefixIcon,
    required IconButton suffixIcon,
  });

  @override
  State<InputPasswordForm> createState() => _InputPasswordFormState();
}

class _InputPasswordFormState extends State<InputPasswordForm> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return InputText(
      controller: widget.controller,
      validatorMessage: widget.validatorMessage,
      obscureText: _obscure,
      prefixIcon: widget.prefixIcon,
      hintText: widget.hintText,
      colorFille: appGrey,
      suffixIcon: IconButton(
        icon: Icon(_obscure ? Icons.visibility_off : Icons.visibility),
        onPressed: () {
          setState(
                () {
              _obscure = !_obscure;
            },
          );
        },
      ),
    );
  }
}
