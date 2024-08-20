import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../themes/themes.dart';
import '../../../../widgets/widgets.dart';

class DepotFormOnePage extends StatefulWidget {
  final double? pagePadding;
  final double? bottomPaddingFroButton;

  const DepotFormOnePage({
    super.key,
    this.pagePadding,
    this.bottomPaddingFroButton,
  });

  @override
  State<DepotFormOnePage> createState() => _DepotFormOnePageState();
}

class _DepotFormOnePageState extends State<DepotFormOnePage> {
  String? selectedValue;

  var emeteur = TextEditingController();
  var number = TextEditingController();
  var name = TextEditingController();
  var numberBank = TextEditingController();
  var money = TextEditingController();
  var depot = TextEditingController();
  var intitule = TextEditingController();
  final _formKeyOne = GlobalKey<FormState>();

  final List<String> genderItems = [
    "COMPTE EPARGNE CLASSIQUE DONI DONI",
  ];

  @override
  Widget build(BuildContext context) {
    double pagePadding = widget.pagePadding ?? 0;
    double bottomPaddingForButton = widget.bottomPaddingFroButton ?? 0;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        pagePadding,
        pagePadding,
        pagePadding,
        bottomPaddingForButton,
      ),
      child: Form(
        key: _formKeyOne,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: appGreySelect.withOpacity(.3),
                border: Border.all(color: appGreyBorder),
                borderRadius: BorderRadius.circular(20),
              ),
              child: InputText(
                controller: emeteur,
                keyboardType: TextInputType.text,
                validatorMessage: "Saisir le nom de l'émetteur",
                colorFille: appGreySelect.withOpacity(.3),
                hintText: "Nom de l'émetteur",
              ),
            ),
            Gap(2.h),
            Container(
              decoration: BoxDecoration(
                color: appGreySelect.withOpacity(.3),
                border: Border.all(color: appGreyBorder),
                borderRadius: BorderRadius.circular(20),
              ),
              child: InputText(
                controller: number,
                keyboardType: TextInputType.text,
                validatorMessage: "Saisir le numéro de client ADEC",
                colorFille: appGreySelect.withOpacity(.3),
                hintText: "Numéro de client ADEC",
              ),
            ),
            Gap(2.h),
            Container(
              decoration: BoxDecoration(
                color: appGreySelect.withOpacity(.3),
                border: Border.all(color: appGreyBorder),
                borderRadius: BorderRadius.circular(20),
              ),
              child: InputText(
                controller: name,
                keyboardType: TextInputType.text,
                validatorMessage: "Saisir le nom de la banque ADEC",
                colorFille: appGreySelect.withOpacity(.3),
                hintText: "Nom de la banque d'ADEC",
              ),
            ),
            Gap(2.h),
            Container(
              decoration: BoxDecoration(
                color: appGreySelect.withOpacity(.3),
                border: Border.all(color: appGreyBorder),
                borderRadius: BorderRadius.circular(20),
              ),
              child: InputText(
                controller: numberBank,
                keyboardType: TextInputType.text,
                validatorMessage: "Saisir le numéro de compte bancaire d'ADEC",
                colorFille: appGreySelect.withOpacity(.3),
                hintText: "Numéro de compte bancaire d'ADEC",
              ),
            ),
            Gap(2.h),
            Container(
              decoration: BoxDecoration(
                color: appGreySelect.withOpacity(.3),
                border: Border.all(color: appGreyBorder),
                borderRadius: BorderRadius.circular(20),
              ),
              child: InputText(
                controller: money,
                keyboardType: TextInputType.text,
                validatorMessage: "Saisir le montant",
                colorFille: appGreySelect.withOpacity(.3),
                hintText: "Montant (F.CFA)",
              ),
            ),
            Gap(2.h),
            Container(
              decoration: BoxDecoration(
                color: appGreySelect.withOpacity(.3),
                border: Border.all(color: appGreyBorder),
                borderRadius: BorderRadius.circular(20),
              ),
              child: InputText(
                controller: depot,
                keyboardType: TextInputType.text,
                validatorMessage: "Saisir compte destinataire",
                colorFille: appGreySelect.withOpacity(.3),
                hintText: "Compte destinataire du dépôt déplacé",
              ),
            ),
            Gap(2.h),
            Container(
              decoration: BoxDecoration(
                color: appGreySelect.withOpacity(.3),
                border: Border.all(color: appGreyBorder),
                borderRadius: BorderRadius.circular(20),
              ),
              child: InputText(
                controller: intitule,
                keyboardType: TextInputType.text,
                validatorMessage: "Saisir l'intitulé du compte",
                colorFille: appGreySelect.withOpacity(.3),
                hintText: "Intitulé du compte",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
