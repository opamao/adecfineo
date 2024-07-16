import 'package:adecfineo/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';
import '../../language/language.dart';
import '../../menus/menus.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isSelected = true;
  final _formkey = GlobalKey<FormState>();
  bool _obscure = true;

  var login = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: const Alignment(-0.3, -1),
              radius: 2.0,
              colors: [appWhite, appColor],
              stops: const [0.2, 1.0],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(4.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset("assets/images/logoblue.png"),
                const Spacer(),
                SingleChildScrollView(
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: InputText(
                                controller: login,
                                hintText: "A1034568",
                                keyboardType: TextInputType.text,
                                validatorMessage: "Saisir code",
                              ),
                            ),
                            Expanded(
                              child: InputPassword(
                                hintText: "Mot de passe",
                                controller: password,
                                validatorMessage: "Mot de passe",
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscure
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscure = !_obscure;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Gap(2.h),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            focusNode: FocusNode(skipTraversal: true),
                            value: _isSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                _isSelected = value!;
                              });
                            },
                            title: Text(
                              "Memoriser login",
                              style: TextStyle(
                                color: appWhiteText,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        Gap(2.h),
                        SubmitButton(
                          AppConstants.btnLogin,
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MenuPage(),
                                ),
                              );
                            }
                          },
                        ),
                        Gap(2.h),
                        Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Mot de passe oublié",
                              style: TextStyle(
                                color: appWhite,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.underline,
                                decorationColor: appWhite,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () => showBarModalBottomSheet(
                    expand: true,
                    context: context,
                    barrierColor: appColor,
                    builder: (context) => const LanguagePage(),
                  ),
                  icon: Icon(
                    Icons.language_outlined,
                    color: appWhite,
                    size: 10.w,
                  ),
                ),
                Gap(2.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
