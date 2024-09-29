import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';

class DemandeCarteQuatrePage extends StatefulWidget {
  final double? pagePadding;
  final double? bottomPaddingFroButton;

  const DemandeCarteQuatrePage({
    super.key,
    this.pagePadding,
    this.bottomPaddingFroButton,
  });

  @override
  State<DemandeCarteQuatrePage> createState() => _DemandeCarteQuatrePageState();
}

class _DemandeCarteQuatrePageState extends State<DemandeCarteQuatrePage> {
  String? selectedValue;
  String? selectedCivil;

  final List<String> paysItems = [
    "Oui",
    "Non",
  ];
  final List<String> villeItems = [
    "Abidjan",
    "Yamoussoukro",
  ];

  var email = TextEditingController();
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
                controller: email,
                keyboardType: TextInputType.text,
                validatorMessage: "Saisir",
                colorFille: appGreySelect.withOpacity(.3),
                hintText: "E-mail",
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
                  "Livraison de la carte (OUI/NON)",
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
                  "Ville de livraison (Abj 2000 FCFA, Int...)",
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
          ],
        ),
      ),
    );
  }
}
