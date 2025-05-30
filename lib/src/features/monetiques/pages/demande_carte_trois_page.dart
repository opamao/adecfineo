import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';

class DemandeCarteTroisPage extends StatefulWidget {
  final double? pagePadding;
  final double? bottomPaddingFroButton;

  const DemandeCarteTroisPage({
    super.key,
    this.pagePadding,
    this.bottomPaddingFroButton,
  });

  @override
  State<DemandeCarteTroisPage> createState() => _DemandeCarteTroisPageState();
}

class _DemandeCarteTroisPageState extends State<DemandeCarteTroisPage> {
  String? selectedValue;
  String? selectedCivil;

  final List<String> pieceItems = [
    "CNI",
    "Passport",
    "Autres",
  ];
  final List<String> paysItems = [
    "Côte d'ivoire",
    "France",
  ];
  final List<String> villeItems = [
    "Abidjan",
    "Yamoussoukro",
  ];

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
                validatorMessage: "Saisir",
                colorFille: appGreySelect.withOpacity(.3),
                hintText: "Nationalité",
              ),
            ),
            Gap(2.h),
            Container(
              color: appGreySelect.withOpacity(.3),
              child: DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                hint: const Text(
                  "Type de pièce d'identité",
                  style: TextStyle(fontSize: 14),
                ),
                items: pieceItems
                    .map(
                      (item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                )
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return "Veuillez sélectionner";
                  }
                  return null;
                },
                onChanged: (value) {},
                onSaved: (value) {
                  selectedValue = value.toString();
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.only(right: 8),
                ),
                iconStyleData: IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: appBlack,
                  ),
                  iconSize: 24,
                ),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.w),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                ),
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
                validatorMessage: "Saisir",
                colorFille: appGreySelect.withOpacity(.3),
                hintText: "Numéro de pièce d'identité",
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
                validatorMessage: "Saisir",
                colorFille: appGreySelect.withOpacity(.3),
                hintText: "Profession",
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
                validatorMessage: "Saisir",
                colorFille: appGreySelect.withOpacity(.3),
                hintText: "Adresse",
              ),
            ),
            Gap(2.h),
            Container(
              color: appGreySelect.withOpacity(.3),
              child: DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                hint: const Text(
                  "Pays",
                  style: TextStyle(fontSize: 14),
                ),
                items: paysItems
                    .map(
                      (item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                )
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return "Veuillez sélectionner";
                  }
                  return null;
                },
                onChanged: (value) {},
                onSaved: (value) {
                  selectedValue = value.toString();
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.only(right: 8),
                ),
                iconStyleData: IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: appBlack,
                  ),
                  iconSize: 24,
                ),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.w),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
            Gap(2.h),
            Container(
              color: appGreySelect.withOpacity(.3),
              child: DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                hint: const Text(
                  "Ville",
                  style: TextStyle(fontSize: 14),
                ),
                items: villeItems
                    .map(
                      (item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                )
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return "Veuillez sélectionner";
                  }
                  return null;
                },
                onChanged: (value) {},
                onSaved: (value) {
                  selectedValue = value.toString();
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.only(right: 8),
                ),
                iconStyleData: IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: appBlack,
                  ),
                  iconSize: 24,
                ),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.w),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                ),
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
                validatorMessage: "Saisir",
                colorFille: appGreySelect.withOpacity(.3),
                hintText: "Téléphone",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
