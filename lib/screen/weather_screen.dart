import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/Component/app_bar_weather_component.dart';
import 'package:weather_app/Component/drawer_app_component.dart';
import 'package:weather_app/Component/tab_bar_weather_component.dart';
import 'package:weather_app/provider/weather_provider.dart';
import 'package:weather_app/sizes.dart';

class WeatherScreen extends StatelessWidget {

 const WeatherScreen();

  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(builder: (context, viewModel, child) =>

       WillPopScope(
         onWillPop:(){
           return viewModel.backToLastPage();
         },
         child: Scaffold(
          appBar: AppBarWeatherComponent(),
          drawer: DrawerAppComponent(),
          body: Container(


            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/back.jpg'), fit: BoxFit.cover),
            ),
            child:Container(
              color: Colors.white60,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: scaleHeight(context) * 0.03,
                  ),
                 TabBarWeatherComponent(),
                  SizedBox(
                    height: scaleHeight(context) * 0.01,
                  ),
                  Expanded(child: viewModel.getListScreens()[viewModel.currentIndexscreen]),
                ],
              ),
            ),
          ),
      ),
       ),
    );
  }


}
