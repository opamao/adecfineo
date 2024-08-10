import 'package:adecfineo/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';

import '../../comptes/comptes.dart';
import '../../credits/credits.dart';
import '../../home/home.dart';
import '../../monetiques/monetique.dart';
import '../../profils/profils.dart';
import '../menus.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int currentPageIndex = 0;

  final Widget _home = const HomePage();
  final Widget _compte = const ComptePage();
  final Widget _monetique = const MonetiquePage();
  final Widget _credit = const CreditPage();
  final Widget _others = const ProfilPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: currentPageIndex == 0 ? appColor : appWhite,
        leading: Padding(
          padding: EdgeInsets.all(2.w),
          child: Image.asset(
            currentPageIndex == 0
                ? "assets/images/logowhite.png"
                : "assets/images/logoblue.png",
          ),
        ),
        actions: [
          Builder(builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.menu_outlined,
                color: currentPageIndex == 0 ? appWhite : appColor,
              ),
              onPressed: () => showBarModalBottomSheet(
                expand: true,
                enableDrag: false,
                context: context,
                barrierColor: appColor,
                builder: (context) =>
                const MenuAutrePage(),
              ),
            );
          }),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: appWhite,
        surfaceTintColor: appWhite,
        indicatorColor: appOrange.withOpacity(.11),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            icon: Icon(
              Icons.home_outlined,
              color: currentPageIndex == 0 ? appOrange : appBlack,
            ),
            label: "Accueil",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.account_balance_outlined,
              color: currentPageIndex == 1 ? appOrange : appBlack,
            ),
            label: "Compte",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.monetization_on_outlined,
              color: currentPageIndex == 2 ? appOrange : appBlack,
            ),
            label: "Monétique",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.payments_outlined,
              color: currentPageIndex == 3 ? appOrange : appBlack,
            ),
            label: "Crédit",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person_outlined,
              color: currentPageIndex == 4 ? appOrange : appBlack,
            ),
            label: "Profil",
          ),
        ],
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    if (currentPageIndex == 0) {
      return _home;
    } else if (currentPageIndex == 1) {
      return _compte;
    } else if (currentPageIndex == 2) {
      return _monetique;
    } else if (currentPageIndex == 3) {
      return _credit;
    } else {
      return _others;
    }
  }
}
