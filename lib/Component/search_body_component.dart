import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/Component/header_search_component.dart';
import 'package:weather_app/provider/weather_provider.dart';
import 'package:weather_app/sizes.dart';
import 'package:weather_app/Component/search_result_component.dart';
import '../sizes.dart';
class SearchBodyComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(
      builder: (context, viewModel, child) => Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: scaleHeight(context) * 0.03,
          ),
          HeaderSearchComponent(),
          SizedBox(
            height: Sizes.heightSizeBoxes['boxS4'],
          ),
          if (viewModel.searchListCountry != null &&
              viewModel.searchListCountry.length > 0)
            Expanded(
              flex: 1,
              child: SearchResultComponent(
                label: "Country",
                list: viewModel.searchListCountry,
              ),
            ),
          if (viewModel.searchListCity != null &&
              viewModel.searchListCity.length > 0)
            Expanded(
              child: Column(
                children: [
                  if (viewModel.searchListCountry != null &&
                      viewModel.searchListCountry.length > 0)
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Sizes.paddingHorizontally['p1']),
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                  Expanded(
                    flex: 1,
                    child: SearchResultComponent(
                      label: "City",
                      list: viewModel.searchListCity,
                      //height: MediaQuery.of(context).size.height * 0.22,
                    ),
                  ),
                ],
              ),
            ),
          if (viewModel.searchListCountry.length == 0 &&
              viewModel.searchListCity.length == 0 &&
              viewModel.searchController.text.length > 0)
            Expanded(
              child: Container(
                height: 300,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  "There are no results with this name",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurple.shade800.withOpacity(0.5)),
                  textAlign: TextAlign.center,
                ),
              ),
            )
        ],
      ),
    );
  }
}


