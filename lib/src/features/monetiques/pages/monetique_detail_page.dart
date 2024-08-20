import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/themes.dart';

class MonetiqueDetailPage extends StatefulWidget {
  const MonetiqueDetailPage({super.key});

  @override
  State<MonetiqueDetailPage> createState() => _MonetiqueDetailPageState();
}

class _MonetiqueDetailPageState extends State<MonetiqueDetailPage> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Monétique"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                surfaceTintColor: appColor,
                color: appColor,
                child: Padding(
                  padding: EdgeInsets.all(4.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "VISA",
                        style: TextStyle(
                          color: appWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 16 * 0.03,
                        ),
                      ),
                      Gap(8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "0",
                            style: TextStyle(
                              color: appWhite,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 24 * 0.03,
                            ),
                          ),
                          Text(
                            "Fcfa",
                            style: TextStyle(
                              color: appWhite,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 24 * 0.03,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _obscure
                                ? "***************1234 | ***"
                                : "029329328731234 | 123",
                            style: TextStyle(
                              color: appWhite,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 12 * 0.03,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              _obscure
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: appWhite,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscure = !_obscure;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 5,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              color: appWhite,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              "assets/images/condition.png",
                              width: 70,
                              height: 70,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Copier le numéro",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: appBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 12 * 0.03,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 5,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              color: appWhite,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              "assets/images/password.png",
                              width: 70,
                              height: 70,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Code de validation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: appBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 12 * 0.03,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 5,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              color: appWhite,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              "assets/images/bloque.png",
                              width: 70,
                              height: 70,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Bloquer ma carte",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: appBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 12 * 0.03,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Gap(4.h),
              Text(
                "Plafond de rechargement",
                style: TextStyle(
                  color: appBlack,
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  letterSpacing: 12 * 0.15,
                ),
              ),
              Gap(1.h),
              LinearProgressIndicator(
                value: 0.1,
                color: appOrange,
                backgroundColor: appGreyBorder,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _obscure
                        ? "Restant: *************** Fcfa"
                        : "Restant: 25 000 Fcfa",
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 12 * 0.03,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.info_outline,
                      color: appColor,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
