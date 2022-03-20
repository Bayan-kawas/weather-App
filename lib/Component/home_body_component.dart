import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/sizes.dart';
import 'package:weather_app/provider/weather_provider.dart';
import 'package:weather_app/widget/title_home_widget.dart';
import 'continents_card_component.dart';
import '../widget/custom_card_widget.dart';

class HomeBodyComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Consumer<WeatherProvider>(
      builder: (context, viewModel, child) => Column(
        children: [
          SizedBox(
            height: scaleHeight(context) * 0.02,
          ),
          TitleHomeWidget(
            title: 'Continents',
            fontWeight: FontWeight.w700,
            fontSize: Sizes.fontSizes['h7'],
          ),
          SizedBox(
            height: scaleHeight(context) * 0.02,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: viewModel.continents.length,
              itemBuilder: (context, continentIndex) {
                return Column(
                  children: [
                    ContinentsCardComponent(continentIndex),
                    SizedBox(
                      height: scaleHeight(context) * 0.02,
                    ),
                    if (viewModel.continents[continentIndex].continentOpened &&
                        (viewModel.continents[continentIndex].countryList !=
                                null ||
                            viewModel.continents[continentIndex].countryList
                                    .length >
                                0))
                      Column(
                        children: [
                          TitleHomeWidget(
                            title: 'Countries',
                            fontWeight: FontWeight.w700,
                            fontSize: Sizes.fontSizes['h8'],
                          ),
                          SizedBox(
                            height: scaleHeight(context) * 0.01,
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, bottom: 10),
                                    child: Container(
                                      height: customHeight(context, 0.12),
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: viewModel
                                            .continents[continentIndex]
                                            .countryList
                                            .length,
                                        itemBuilder: (context, countryIndex) {
                                          return Column(
                                            children: [
                                              InkWell(
                                                  onTap: () async {
                                                    viewModel.onPressedCountry(
                                                        contryList: viewModel
                                                            .continents[
                                                                continentIndex]
                                                            .countryList,
                                                        countryIndex:
                                                            countryIndex);
                                                  },
                                                  child: CustomCard(
                                                    isOpened: viewModel
                                                        .continents[
                                                            continentIndex]
                                                        .countryList[
                                                            countryIndex]
                                                        .citiesOpened,
                                                    name: viewModel
                                                        .continents[
                                                            continentIndex]
                                                        .countryList[
                                                            countryIndex]
                                                        .name,
                                                    color: viewModel
                                                            .continents[
                                                                continentIndex]
                                                            .countryList[
                                                                countryIndex]
                                                            .citiesOpened
                                                        ? Colors.white
                                                        : Colors
                                                            .deepPurple.shade800
                                                            .withOpacity(
                                                                0.5), //Color(0xffebf1f6),
                                                  )),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  if (viewModel.currentCountryIndex != null &&
                                      viewModel
                                          .continents[continentIndex]
                                          .countryList[
                                              viewModel.currentCountryIndex]
                                          .citiesOpened &&
                                      viewModel
                                              .continents[continentIndex]
                                              .countryList[
                                                  viewModel.currentCountryIndex]
                                              .cities !=
                                          null &&
                                      viewModel
                                              .continents[continentIndex]
                                              .countryList[
                                                  viewModel.currentCountryIndex]
                                              .cities
                                              .length >
                                          0)
                                    Column(
                                      children: [
                                        TitleHomeWidget(
                                          title: 'Cities',
                                          fontWeight: FontWeight.w700,
                                          fontSize: Sizes.fontSizes['h10'],
                                        ),
                                        SizedBox(
                                          height: scaleHeight(context) * 0.01,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                            left: 15,
                                          ),
                                          height: customHeight(context, 0.12),
                                          width: scaleWidth(context),
                                          child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: viewModel
                                                .continents[continentIndex]
                                                .countryList[viewModel
                                                    .currentCountryIndex]
                                                .cities
                                                .length,
                                            itemBuilder:
                                                (context, citiesIndex) {
                                              print(viewModel
                                                  .continents[continentIndex]
                                                  .countryList[viewModel
                                                      .currentCountryIndex]
                                                  .cities[citiesIndex]
                                                  .name);
                                              return InkWell(
                                                onTap: () {
                                                  viewModel.navigateToInfoCard(
                                                      viewModel
                                                          .continents[
                                                              continentIndex]
                                                          .countryList[viewModel
                                                              .currentCountryIndex]
                                                          .cities[citiesIndex]
                                                          .name);
                                                },
                                                child: CustomCard(
                                                  isOpened: false,
                                                  name: viewModel
                                                      .continents[
                                                          continentIndex]
                                                      .countryList[viewModel
                                                          .currentCountryIndex]
                                                      .cities[citiesIndex]
                                                      .name,
                                                  color: Colors
                                                      .deepPurple.shade800
                                                      .withOpacity(
                                                          0.5), //Color(0xffebf1f6),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  SizedBox(
                                    height: scaleHeight(context) * 0.02,
                                  ),
                                ],
                              ))
                        ],
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
