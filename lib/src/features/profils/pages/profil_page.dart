import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/themes.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
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
                  "Profils",
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
                        onTap: () {},
                        leading: Image.asset("assets/images/update.png"),
                        title: Text(
                          "Mise à jour des informations",
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
                        leading: Image.asset("assets/images/password.png"),
                        title: Text(
                          "Changement de mot de passe",
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
                        leading: Image.asset("assets/images/password.png"),
                        title: Text(
                          "Changement de Pin",
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
                        leading: Image.asset("assets/images/condition.png"),
                        title: Text(
                          "Condition d'utilisation",
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
                        leading: Image.asset("assets/images/carte.png"),
                        title: Text(
                          "Répertoire des cartes",
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
                        leading: Image.asset("assets/images/phone.png"),
                        title: Text(
                          "Répertoire des numéros",
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
                        leading: Image.asset("assets/images/transfert.png"),
                        title: Text(
                          "Répertoire des transferts",
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
                        leading: Image.asset("assets/images/wallet.png"),
                        title: Text(
                          "Compte principal",
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
                        leading: Image.asset("assets/images/parametre.png"),
                        title: Text(
                          "Paramètres",
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
