import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weather_provider.dart';
import 'package:weather_app/sizes.dart';
import 'package:weather_app/widget/taps_widget.dart';

class TabBarWeatherComponent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(builder: (context, viewModel, child) =>  Container(
      height: scaleHeight(context) * 0.06,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TapsWidget(
              text: "Home",
              indexItem: 0,
              indexScreen: viewModel.currentIndexscreen,
              ),
          SizedBox(
            width: Sizes.widthSizeBox,
          ),
          TapsWidget(
              text: "Search",
              indexItem: 1,
              indexScreen: viewModel.currentIndexscreen,
              ),
          SizedBox(
            width: Sizes.widthSizeBox,
          ),
          TapsWidget(
              text: "My location",
              indexItem:2,
              indexScreen:viewModel.currentIndexscreen,
),
        ],
      ),
    ),);
  }
}
