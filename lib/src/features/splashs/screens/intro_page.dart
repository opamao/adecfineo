import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';
import '../../login/login.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  final int _maxPage = 3;
  Timer? _timer;
  final int _progressSteps = 100;
  int _currentStep = 0;

  @override
  void initState() {
    super.initState();
    startAutoPageChange();
  }

  void startAutoPageChange() {
    const totalDurationSeconds = 5;
    const duration = Duration(seconds: totalDurationSeconds);

    _timer = Timer.periodic(duration ~/ _progressSteps, (timer) {
      setState(() {
        if (_currentStep < _progressSteps) {
          _currentStep++;
        } else {
          if (_currentPage < _maxPage) {
            _currentPage++;
            _currentStep = 0;
            _pageController.animateToPage(
              _currentPage,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {
            _currentPage = 0;
            _currentStep = 0;
            _pageController.jumpToPage(0);
          }
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  final List<Map<String, dynamic>> pageData = [
    {
      'titre': "Prix abordable à votre service",
      'description': "Notre prix de trajet est abordable pour le service",
      'assets': 'assets/images/abordable.jpg',
    },
    {
      'titre': "Ramassage à la porte",
      'description':
          "Nous viendrons vous chercher en moins de temps à votre emplacement exact",
      'assets': 'assets/images/pickup.jpg',
    },
    {
      'titre': "Des conducteurs",
      'description':
          "Soyez détendu car nos conducteurs sont hautement formés et conduisent en toute sécurité",
      'assets': 'assets/images/chauffeur.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  _handleTap();
                },
                child: PageView(
                  controller: _pageController,
                  children: pageData.map((page) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              // color: appColor,
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                  page['assets'],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Gap(2.h),
                        Text(
                          page['titre'],
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: appWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          ),
                        ),
                        Gap(1.h),
                        Text(
                          page['description'],
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: appWhite,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Gap(2.h),
                      ],
                    );
                  }).toList(),
                  onPageChanged: (index) {
                    _currentPage = index;
                    setState(() {});
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: LinearProgressIndicator(
                      value: _currentPage == 0
                          ? _currentStep / _progressSteps.toDouble()
                          : _currentPage > 0
                              ? 1.0
                              : 0.0,
                      backgroundColor: Colors.grey,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                  Gap(1.w),
                  Expanded(
                    child: LinearProgressIndicator(
                      value: _currentPage == 1
                          ? _currentStep / _progressSteps.toDouble()
                          : _currentPage > 1
                              ? 1.0
                              : 0.0,
                      backgroundColor: Colors.grey,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                  Gap(1.w),
                  Expanded(
                    child: LinearProgressIndicator(
                      value: _currentPage == 2
                          ? _currentStep / _progressSteps.toDouble()
                          : 0.0,
                      backgroundColor: Colors.grey,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SubmitButton(
              "Constants.btnNext",
              couleur: appWhite,
              textcouleur: appColor,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _handleTap() {
    if (_currentPage < _maxPage) {
      _currentPage++;
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _currentPage = 0;
      _pageController.jumpToPage(0);
    }
  }
}
