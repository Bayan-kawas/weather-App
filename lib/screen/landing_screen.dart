import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/landing_page_provider.dart';
import '../utils.dart';
import 'child_landing_page.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({
    Key key,
  }) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  PageController pageController =
      PageController(initialPage: 0, keepPage: true);

  int currentIndex = 0;

  @override

  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void swipeForwardIndex(page) {
    setState(() {
      page++;
      currentIndex = page;
      pageController =
          PageController(initialPage: currentIndex, keepPage: true);
    });
  }

  void swipeBackIndex(page) {
    setState(() {
      page--;
      currentIndex = page;
      pageController =
          PageController(initialPage: currentIndex, keepPage: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.deepPurple,systemNavigationBarColor: Colors.white // status bar color
    ));
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade400,
              Colors.transparent,
            ],
          ),
          ),
          child: ChangeNotifierProvider(
            create: (context) => LandingPageProvider(),
            child: ChildLandingPage(
              swipeBackIndex: swipeBackIndex,
              swipeForwardIndex: swipeForwardIndex,
              pageController: pageController,
              currentIndex: currentIndex,
              isLast: ((landingItemsList.length - 1) == currentIndex),
              itemLanding: landingItemsList[currentIndex],
            ),
          ),
        ),
      ),
    );
  }
}

