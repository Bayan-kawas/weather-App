import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weather_provider.dart';

import '../sizes.dart';

class TapsWidget extends StatelessWidget {
  final String  text;
  final int indexItem,indexScreen;

  TapsWidget({this.text, this.indexItem, this.indexScreen,});

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(builder: (context, viewModel, child) =>
        GestureDetector(
          onTap: () async{
            if (viewModel.currentIndexscreen == 0) {
              viewModel.previousIndexPage = 0;
              viewModel.changeCurrentScreen(indexItem);
            } else {
              viewModel.previousIndexPage =
                  viewModel.currentIndexscreen;
              viewModel.changeCurrentScreen(indexItem);
            }
          },
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal:Sizes.paddingHorizontally['p3'], vertical: Sizes.paddingVertically),
            decoration: BoxDecoration(
              color: indexItem == indexScreen
                  ? Colors.deepPurple.shade800.withOpacity(0.5)
                  : Colors.white,
              borderRadius: BorderRadius.circular(Sizes.buttonRadius['r1']),
              border: Border.all(
                  color: indexItem == indexScreen
                      ? Colors.deepPurple.shade800.withOpacity(0.5)
                      : Colors.grey.shade900,
                  width: 1),
            ),
            child: FittedBox(
              child: Text(
                text,
                style: TextStyle(
                    color: indexItem == indexScreen ? Colors.white : Colors
                        .black,
                    fontSize: Sizes.fontSizes['h7'],
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),);
  }
}
