import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:weather_app/model/landing_model.dart';
import 'package:weather_app/provider/landing_page_provider.dart';
import 'package:weather_app/sizes.dart';
import 'package:weather_app/widget/custom_button.dart';
import 'package:weather_app/widget/custom_text.dart';
import '../font_styles.dart';
import '../utils.dart';

class ChildLandingPage extends StatefulWidget {
  const ChildLandingPage(
      {Key key,
      this.itemLanding,
      this.currentIndex,
      this.swipeForwardIndex,
      this.isLast,
      this.swipeBackIndex,
      this.pageController})
      : super(key: key);

  final int currentIndex;
  final LandingModel itemLanding;
  final Function swipeForwardIndex;
  final Function swipeBackIndex;
  final bool isLast;
  final PageController pageController;

  @override
  State<ChildLandingPage> createState() => _ChildLandingPageState();
}

class _ChildLandingPageState extends State<ChildLandingPage>
    with TickerProviderStateMixin {
  Animation<Offset> _transitionAnimation;

  AnimationController _controller;

  final fadeFromTheBeginningController = FadeInController();
  AnimationController fadeFromTheMiddleController;

  @override
  void initState() {
    super.initState();
    fadeFromTheBeginningController.fadeIn();
    fadeFromTheMiddleController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    fadeFromTheMiddleController.forward();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 400,
      ),
    );

    // x , y
    _transitionAnimation = Tween<Offset>(
      begin: const Offset(0.3, 0),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceOut,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    fadeFromTheMiddleController.dispose();
    fadeFromTheBeginningController.dispose();
  }

  double transition = 0.3;

  void decreaseIndex() {
    setState(() {
      print(transition);

      double lastTransition = transition;
      if (transition == -0.3) {
        transition = 0;
        print(transition);
      } else {
        transition = 0.3;
      }

      fadeFromTheMiddleController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 200),
      );
      fadeFromTheMiddleController.forward();
      _controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 400),
      );
      _transitionAnimation = Tween<Offset>(
        begin: Offset(lastTransition, 0),
        end: Offset(transition, 0),
      ).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Curves.easeInOut,
        ),
      );
      _controller.forward();
    });
  }

  void increaseIndex() {
    setState(() {
      double lastTransition = transition;
      print(transition);
      if (transition == 0.3) {
        transition = 0.0;
      } else if (transition == 0.0) {
        transition = -0.3;
      }

      fadeFromTheMiddleController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 200),
      );
      fadeFromTheMiddleController.forward();
      _controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 400),
      );
      _transitionAnimation = Tween<Offset>(
        begin: Offset(lastTransition, 0),
        end: Offset(transition, 0),
      ).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Curves.easeInOut,
        ),
      );
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    LandingPageProvider provider =
        Provider.of<LandingPageProvider>(context, listen: false);
    return SimpleGestureDetector(
      behavior: HitTestBehavior.translucent,
      swipeConfig: const SimpleSwipeConfig(
        verticalThreshold: 40,
        horizontalThreshold: 40,
        swipeDetectionBehavior: SwipeDetectionBehavior.continuousDistinct,
      ),
      onHorizontalSwipe: (SwipeDirection direction) {
        if (direction == SwipeDirection.right && widget.currentIndex > 0) {
          widget.swipeBackIndex(widget.currentIndex);
          decreaseIndex();
        } else if (direction == SwipeDirection.left &&
            widget.currentIndex < 2) {
          widget.swipeForwardIndex(widget.currentIndex);
          increaseIndex();
        } else if (direction == SwipeDirection.left && widget.isLast) {
          provider.navigateToWeatherScreen();
        }
      },
      child: SizedBox(
        width: Sizes.screenWidth,
        height: Sizes.screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FadeIn(
              duration: const Duration(seconds: 2),
              controller: fadeFromTheBeginningController,
              child: FadeTransition(
                opacity: fadeFromTheMiddleController,
                child: SlideTransition(
                  position: _transitionAnimation,
                  child: Container(
                      margin: EdgeInsets.only(top: 10.w),
                      height: (Sizes.screenHeight * 0.45),
                      width: (Sizes.screenHeight * 0.45),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              widget.itemLanding.image,
                            ),
                          ))),
                ),
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            SmoothPageIndicator(
                controller: widget.pageController,
                count: landingItemsList.length,
                effect: ExpandingDotsEffect(
                    dotColor: Colors.white10,
                    activeDotColor:
                        Colors.deepPurple.shade800.withOpacity(0.5))),
            SizedBox(
              height: 50.h,
            ),
            CustomText.h6(
              widget.itemLanding.title,
              color: Colors.deepPurple.shade800.withOpacity(0.5),
              weight: FontStyles.fontWeightHigh,
              margin: EdgeInsets.symmetric(horizontal: Sizes.lowMargin),
            ),
            SizedBox(
              height: Sizes.marginMedium,
            ),
            CustomText.h6(
              widget.itemLanding.description,
              textAlign: TextAlign.center,
              color: Colors.white,
              weight: FontStyles.fontWeightMedium,
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              height: 1.2,
            ),
            const Expanded(flex: 1, child: SizedBox()),
            CustomButton(
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              color: Colors.deepPurple.shade800.withOpacity(0.5),
              child: CustomText.h6(
                widget.itemLanding.buttonName,
                color: Colors.white,
              ),
              onPressed: () {
                if (widget.isLast) {
                  provider.navigateToWeatherScreen();
                } else {
                  increaseIndex();
                  widget.swipeForwardIndex(widget.currentIndex);
                }
              },
            ),
            const Expanded(flex: 2, child: SizedBox()),
            // ,width: Sizes.width311,),
          ],
        ),
      ),
    );
  }
}
