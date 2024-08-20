import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants/constants.dart';
import '../../../../themes/themes.dart';
import '../../../../widgets/widgets.dart';

class CartePage extends StatefulWidget {
  const CartePage({super.key});

  @override
  State<CartePage> createState() => _CartePageState();
}

class _CartePageState extends State<CartePage> {
  bool _isSelected = true;
  final _formKeyTrans = GlobalKey<FormState>();

  var carte = TextEditingController();
  var chiffre = TextEditingController();
  var name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Repertoire des cartes"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  tabs: const [
                    Text(
                      "Mes cartes",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Nouvelle carte",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                  labelColor: appOrange,
                  unselectedLabelColor: appGreyBorder,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView(
                        children: [
                          Gap(4.h),
                          Container(
                            decoration: BoxDecoration(
                              color: appWhite,
                              border: Border.all(color: appGreyBorder),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListTile(
                              title: Text(
                                "Théodore YAPI",
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "442225074 | 4657",
                                      style: TextStyle(
                                        color: appColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Actif",
                                      style: TextStyle(
                                        color: appOrange,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        child: Form(
                          key: _formKeyTrans,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Gap(4.h),
                              Row(
                                children: [
                                  Expanded(
                                    child: InputText(
                                      controller: carte,
                                      hintText: "ID carte",
                                      keyboardType: TextInputType.text,
                                      colorFille: appGreySelect.withOpacity(.3),
                                      validatorMessage:
                                      "Saisissez l'ID de la carte",
                                    ),
                                  ),
                                  Gap(2.w),
                                  Expanded(
                                    child: InputText(
                                      controller: chiffre,
                                      hintText: "4 derniers chiffres",
                                      keyboardType: TextInputType.text,
                                      colorFille: appGreySelect.withOpacity(.3),
                                      validatorMessage:
                                      "Saisissez les 4 derniers chiffres",
                                    ),
                                  ),
                                ],
                              ),
                              Gap(2.w),
                              InputText(
                                controller: name,
                                hintText: "Nom et prénom",
                                keyboardType: TextInputType.text,
                                colorFille: appGreySelect.withOpacity(.3),
                                validatorMessage:
                                "Saisissez votre nom & prénom",
                              ),
                              Gap(2.w),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: CheckboxListTile(
                                  controlAffinity:
                                  ListTileControlAffinity.leading,
                                  focusNode: FocusNode(skipTraversal: true),
                                  value: _isSelected,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _isSelected = value!;
                                    });
                                  },
                                  title: Text(
                                    "Actif",
                                    style: TextStyle(
                                      color: appBlack,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                              Gap(2.h),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: SubmitButton(
                                      AppConstants.btnBenef,
                                      onPressed: () {
                                        if (_formKeyTrans.currentState!
                                            .validate()) {}
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: CancelButton(
                                      AppConstants.btnClear,
                                      onPressed: () {
                                        if (_formKeyTrans.currentState!
                                            .validate()) {}
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
      ),
    );
  }
}
