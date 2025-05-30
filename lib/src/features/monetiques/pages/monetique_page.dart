import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

import '../../../../constants/constants.dart';
import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';
import '../monetique.dart';

class MonetiquePage extends StatefulWidget {
  const MonetiquePage({super.key});

  @override
  State<MonetiquePage> createState() => _MonetiquePageState();
}

const double _bottomPaddingForButton = 150.0;
const double _pagePadding = 16.0;
const double _pageBreakpoint = 768.0;

class _MonetiquePageState extends State<MonetiquePage> {
  bool _obscure = true;
  late bool _hiddenView = false;

  @override
  Widget build(BuildContext context) {
    final pageIndexNotifier = ValueNotifier(0);

    SliverWoltModalSheetPage page1(
        BuildContext modalSheetContext, TextTheme textTheme) {
      return WoltModalSheetPage(
        backgroundColor: appWhite,
        surfaceTintColor: appWhite,
        hasSabGradient: false,
        stickyActionBar: Padding(
          padding: const EdgeInsets.all(_pagePadding),
          child: Row(
            children: [
              Expanded(
                child: CancelButton(
                  AppConstants.btnCancel,
                  onPressed: () => Navigator.of(modalSheetContext).pop(),
                ),
              ),
              Gap(2.w),
              Expanded(
                child: SubmitButton(
                  AppConstants.btnContinue,
                  onPressed: () =>
                  pageIndexNotifier.value = pageIndexNotifier.value + 1,
                ),
              ),
            ],
          ),
        ),
        topBarTitle: Text(
          "Demande de carte",
          style: TextStyle(
            color: appBlack,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            letterSpacing: 15 * 0.03,
          ),
        ),
        isTopBarLayerAlwaysVisible: true,
        trailingNavBarWidget: IconButton(
          padding: const EdgeInsets.all(_pagePadding),
          icon: const Icon(Icons.close),
          onPressed: Navigator.of(modalSheetContext).pop,
        ),
        child: const DemandeCartePage(),
      );
    }

    SliverWoltModalSheetPage page2(
        BuildContext modalSheetContext, TextTheme textTheme) {
      return WoltModalSheetPage(
        backgroundColor: appWhite,
        surfaceTintColor: appWhite,
        hasSabGradient: false,
        stickyActionBar: Padding(
          padding: const EdgeInsets.all(_pagePadding),
          child: Row(
            children: [
              Expanded(
                child: CancelButton(
                  AppConstants.btnBack,
                  onPressed: () =>
                  pageIndexNotifier.value = pageIndexNotifier.value - 1,
                ),
              ),
              Gap(2.w),
              Expanded(
                child: SubmitButton(
                  AppConstants.btnContinue,
                  onPressed: () =>
                  pageIndexNotifier.value = pageIndexNotifier.value + 1,
                ),
              ),
            ],
          ),
        ),
        pageTitle: Padding(
          padding: const EdgeInsets.all(_pagePadding),
          child: Text(
            "Demande de carte",
            style: TextStyle(
              color: appBlack,
              fontSize: 15,
              fontWeight: FontWeight.w500,
              letterSpacing: 15 * 0.03,
            ),
          ),
        ),
        leadingNavBarWidget: IconButton(
          padding: const EdgeInsets.all(_pagePadding),
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () =>
          pageIndexNotifier.value = pageIndexNotifier.value - 1,
        ),
        trailingNavBarWidget: IconButton(
          padding: const EdgeInsets.all(_pagePadding),
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.of(modalSheetContext).pop();
            pageIndexNotifier.value = 0;
          },
        ),
        child: const DemandeCarteDeuxPage(
          pagePadding: _pagePadding,
          bottomPaddingFroButton: _bottomPaddingForButton,
        ),
      );
    }

    SliverWoltModalSheetPage page3(
        BuildContext modalSheetContext, TextTheme textTheme) {
      return WoltModalSheetPage(
        backgroundColor: appWhite,
        surfaceTintColor: appWhite,
        hasSabGradient: false,
        stickyActionBar: Padding(
          padding: const EdgeInsets.all(_pagePadding),
          child: Row(
            children: [
              Expanded(
                child: CancelButton(
                  AppConstants.btnBack,
                  onPressed: () =>
                  pageIndexNotifier.value = pageIndexNotifier.value - 1,
                ),
              ),
              Gap(2.w),
              Expanded(
                child: SubmitButton(
                  AppConstants.btnContinue,
                  onPressed: () =>
                  pageIndexNotifier.value = pageIndexNotifier.value + 1,
                ),
              ),
            ],
          ),
        ),
        pageTitle: Padding(
          padding: const EdgeInsets.all(_pagePadding),
          child: Text(
            "Demande de carte",
            style: TextStyle(
              color: appBlack,
              fontSize: 15,
              fontWeight: FontWeight.w500,
              letterSpacing: 15 * 0.03,
            ),
          ),
        ),
        leadingNavBarWidget: IconButton(
          padding: const EdgeInsets.all(_pagePadding),
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () =>
          pageIndexNotifier.value = pageIndexNotifier.value - 1,
        ),
        trailingNavBarWidget: IconButton(
          padding: const EdgeInsets.all(_pagePadding),
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.of(modalSheetContext).pop();
            pageIndexNotifier.value = 0;
          },
        ),
        child: const DemandeCarteTroisPage(
          pagePadding: _pagePadding,
          bottomPaddingFroButton: _bottomPaddingForButton,
        ),
      );
    }

    SliverWoltModalSheetPage page4(
        BuildContext modalSheetContext, TextTheme textTheme) {
      return WoltModalSheetPage(
        backgroundColor: appWhite,
        surfaceTintColor: appWhite,
        hasSabGradient: false,
        stickyActionBar: Padding(
          padding: const EdgeInsets.all(_pagePadding),
          child: SubmitButton(
            AppConstants.btnValid,
            onPressed: () {
              Navigator.of(modalSheetContext).pop();
              pageIndexNotifier.value = 0;
            },
          ),
        ),
        pageTitle: Padding(
          padding: const EdgeInsets.all(_pagePadding),
          child: Text(
            "Demande de carte",
            style: TextStyle(
              color: appBlack,
              fontSize: 15,
              fontWeight: FontWeight.w500,
              letterSpacing: 15 * 0.03,
            ),
          ),
        ),
        leadingNavBarWidget: IconButton(
          padding: const EdgeInsets.all(_pagePadding),
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () =>
          pageIndexNotifier.value = pageIndexNotifier.value - 1,
        ),
        trailingNavBarWidget: IconButton(
          padding: const EdgeInsets.all(_pagePadding),
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.of(modalSheetContext).pop();
            pageIndexNotifier.value = 0;
          },
        ),
        child: const DemandeCarteQuatrePage(
          pagePadding: _pagePadding,
          bottomPaddingFroButton: _bottomPaddingForButton,
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if(_hiddenView)
              Card(
                surfaceTintColor: appColor,
                color: appColor,
                child: InkWell(
                  onTap: () => showBarModalBottomSheet(
                    expand: true,
                    context: context,
                    barrierColor: appColor,
                    builder: (context) => const MonetiqueDetailPage(),
                  ),
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
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
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
              ),
              if(_hiddenView)
              Gap(3.h),
              if(_hiddenView)
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
                          onTap: () => showBarModalBottomSheet(
                            expand: true,
                            context: context,
                            barrierColor: appColor,
                            builder: (context) => const RechargeCartePage(),
                          ),
                          child: Container(
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              color: appWhite,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              "assets/images/recharge.png",
                              width: 70,
                              height: 70,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Recharger votre \ncompte",
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
                          onTap: () {

                          },
                          child: Container(
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              color: appWhite,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              "assets/images/transfertb.png",
                              width: 70,
                              height: 70,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Transfert de \nl'argent",
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
                              "assets/images/phone.png",
                              width: 70,
                              height: 70,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "GAB ou point \nXpress ECOBANK",
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
              if(!_hiddenView)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 5,
                          child: GestureDetector(
                            onTap: () {
                              WoltModalSheet.show<void>(
                                pageIndexNotifier: pageIndexNotifier,
                                context: context,
                                pageListBuilder: (modalSheetContext) {
                                  final textTheme = Theme.of(context).textTheme;
                                  return [
                                    page1(modalSheetContext, textTheme),
                                    page2(modalSheetContext, textTheme),
                                    page3(modalSheetContext, textTheme),
                                    page4(modalSheetContext, textTheme),
                                  ];
                                },
                                modalTypeBuilder: (context) {
                                  final size = MediaQuery.of(context).size.width;
                                  if (size < _pageBreakpoint) {
                                    return WoltModalType.bottomSheet();
                                  } else {
                                    return WoltModalType.dialog();
                                  }
                                },
                                onModalDismissedWithBarrierTap: () {
                                  debugPrint('Closed modal sheet with barrier tap');
                                  Navigator.of(context).pop();
                                  pageIndexNotifier.value = 0;
                                },
                              );
                            },

                            child: Container(
                              width: 169,
                              height: 125,
                              decoration: BoxDecoration(
                                color: appWhite,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                "assets/images/demande-carte.png",
                                width: 70,
                                height: 70,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Demande de carte",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 15 * 0.03,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 5,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _hiddenView = true;
                              });
                            },
                            child: Container(
                              width: 169,
                              height: 125,
                              decoration: BoxDecoration(
                                color: appWhite,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                "assets/images/carte-bleu.png",
                                width: 70,
                                height: 70,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Activer carte",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 15 * 0.03,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dernière transactions",
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 14 * 0.14,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Afficher plus",
                      style: TextStyle(
                        color: appColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 10 * 0.10,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(2.h),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: appWhite,
                          child: Image.asset("assets/images/orange.png"),
                        ),
                        title: Text(
                          "Orange",
                          style: TextStyle(
                            color: appBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        subtitle: Text(
                          "Dépôt",
                          style: TextStyle(
                            color: appBlack,
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        trailing: Text(
                          "+15 000 F.CFA",
                          style: TextStyle(
                            color: appColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                      ),
                    ),
                    Gap(1.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: appWhite,
                          child: Image.asset("assets/images/moov.png"),
                        ),
                        title: Text(
                          "Moov",
                          style: TextStyle(
                            color: appBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        subtitle: Text(
                          "Dépôt",
                          style: TextStyle(
                            color: appBlack,
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        trailing: Text(
                          "+15 000 F.CFA",
                          style: TextStyle(
                            color: appColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                      ),
                    ),
                    Gap(1.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: appWhite,
                          child: Image.asset("assets/images/mtn.png"),
                        ),
                        title: Text(
                          "MTN",
                          style: TextStyle(
                            color: appBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        subtitle: Text(
                          "Dépôt",
                          style: TextStyle(
                            color: appBlack,
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        trailing: Text(
                          "+15 000 F.CFA",
                          style: TextStyle(
                            color: appColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                      ),
                    ),
                    Gap(1.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGreyBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: appWhite,
                          child: Image.asset("assets/images/wave.png"),
                        ),
                        title: Text(
                          "Wave",
                          style: TextStyle(
                            color: appBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        subtitle: Text(
                          "Dépôt",
                          style: TextStyle(
                            color: appBlack,
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            letterSpacing: 12 * 0.03,
                          ),
                        ),
                        trailing: Text(
                          "+15 000 F.CFA",
                          style: TextStyle(
                            color: appColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            letterSpacing: 12 * 0.03,
                          ),
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
