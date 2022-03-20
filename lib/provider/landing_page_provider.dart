import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:weather_app/navigation_service.dart';
import 'package:weather_app/screen/weather_screen.dart';

import '../history_manager.dart';

class LandingPageProvider extends ChangeNotifier {
  navigateToWeatherScreen() async {
     await   HistoryManager.instance.savePref(true);
    NavigationService.navigateTo(
        navigationMethod: NavigationMethod.PUSH_REPLACEMENT,
        page: WeatherScreen());
  }
}
