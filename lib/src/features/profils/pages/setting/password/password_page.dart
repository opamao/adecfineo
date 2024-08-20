import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../constants/constants.dart';
import '../../../../../themes/themes.dart';
import '../../../../../widgets/widgets.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  final _formKeyPass = GlobalKey<FormState>();
  bool _obscure = true;

  var login = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Changement de mot de passe"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: SingleChildScrollView(
            child: Form(
              key: _formKeyPass,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InputPasswordForm(
                    hintText: "Ancien mot de passe",
                    controller: password,
                    validatorMessage: "Mot de passe",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscure ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscure = !_obscure;
                        });
                      },
                    ),
                  ),
                  Gap(2.h),
                  InputPasswordForm(
                    hintText: "Nouveau mot de passe",
                    controller: password,
                    validatorMessage: "Mot de passe",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscure ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscure = !_obscure;
                        });
                      },
                    ),
                  ),
                  Gap(2.h),
                  InputPasswordForm(
                    hintText: "Confirmer",
                    controller: password,
                    validatorMessage: "Mot de passe",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscure ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscure = !_obscure;
                        });
                      },
                    ),
                  ),
                  Gap(4.h),
                  SubmitButton(
                    AppConstants.btnValid,
                    onPressed: () {
                      if (_formKeyPass.currentState!.validate()) {}
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
