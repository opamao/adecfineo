import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants/constants.dart';
import '../../../../themes/themes.dart';
import '../../../../widgets/widgets.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({super.key});

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mise à jour des informations"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appWhite,
                    border: Border.all(color: appGreyBorder),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListTile(
                    title: Text(
                      "Mes comptes",
                      style: TextStyle(
                        color: appBlack,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                        color: appGrey,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Mettez vos comptes et solde de compte à jour",
                        style: TextStyle(
                          color: appBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    trailing: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                          color: appOrange,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          AppConstants.btnUp,
                          style: TextStyle(
                            color: appWhite,
                            fontSize: 7,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
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
                    title: Text(
                      "Identification",
                      style: TextStyle(
                        color: appBlack,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                        color: appGrey,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Mettez vos informations personnelles à jour",
                        style: TextStyle(
                          color: appBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    trailing: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                          color: appOrange,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          AppConstants.btnUp,
                          style: TextStyle(
                            color: appWhite,
                            fontSize: 7,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
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
                    title: Text(
                      "Crédit",
                      style: TextStyle(
                        color: appBlack,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                        color: appGrey,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Mettez vos informations de crédit à jour",
                        style: TextStyle(
                          color: appBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    trailing: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                          color: appOrange,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          AppConstants.btnUp,
                          style: TextStyle(
                            color: appWhite,
                            fontSize: 7,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
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
                    title: Text(
                      "Carte / Répertoire",
                      style: TextStyle(
                        color: appBlack,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                        color: appGrey,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Mettez vos informations sur les cartes monétique et "
                        "vos répertoire (Carte, Transfert, Numéro, Wallet...)",
                        style: TextStyle(
                          color: appBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    trailing: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                          color: appOrange,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          AppConstants.btnUp,
                          style: TextStyle(
                            color: appWhite,
                            fontSize: 7,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Gap(4.h),
                SubmitButton(
                  AppConstants.btnUpdate,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
