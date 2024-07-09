import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/themes.dart';
import '../comptes.dart';

class ComptePage extends StatefulWidget {
  const ComptePage({super.key});

  @override
  State<ComptePage> createState() => _ComptePageState();
}

class _ComptePageState extends State<ComptePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  "Mes comptes",
                  style: TextStyle(
                    color: appBlack,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 26 * 0.14,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ConsultationPage(),
                            ),
                          );
                        },
                        leading: Image.asset("assets/images/solde.png"),
                        title: Text(
                          "Consulter solde",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                    Gap(2.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        onTap: () {},
                        leading: Image.asset("assets/images/releve.png"),
                        title: Text(
                          "Relevé de compte",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                    Gap(2.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        onTap: () {},
                        leading: Image.asset("assets/images/nouvelle.png"),
                        title: Text(
                          "Nouvelle souscription",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                    Gap(2.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        onTap: () {},
                        leading: Image.asset("assets/images/mise.png"),
                        title: Text(
                          "Mise à disposition de fond en agence",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                    Gap(2.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        onTap: () {},
                        leading: Image.asset("assets/images/depot.png"),
                        title: Text(
                          "Dépôt déplacé",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                    Gap(2.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        onTap: () {},
                        leading: Image.asset("assets/images/cheque.png"),
                        title: Text(
                          "Chèque déplacé",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
