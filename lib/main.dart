import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/ads_manager.dart';
import 'package:weather_app/provider/weather_provider.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/screen/start_point_screen.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  // getPref();// To turn off landscape mode
  runApp(
      MyApp(),
  );
}
class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    return MultiProvider(providers: [

      ChangeNotifierProvider(create: (_) => WeatherProvider()),

      ChangeNotifierProvider(create: (_)=>AdsManager(),)
    ],
      child:ScreenUtilInit(
        builder:()=> GetMaterialApp(
        title: 'Splash Screen',
        theme: ThemeData(

          primarySwatch: Colors.cyan,
        ),
        home: StartPoint(),
        debugShowCheckedModeBanner: false,
    ),
      ),
    );
  }
}


