import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/ads_manager.dart';
import 'package:weather_app/provider/weather_provider.dart';
import 'package:weather_app/sizes.dart';

class InfoWeatherBodyComponent extends StatelessWidget {
  Color primaryColor = Color(0xff0E4D92);
  @override
  Widget build(BuildContext context) {
    AdsManager adsManager = Provider.of<AdsManager>(context,listen:true);
    return Consumer<WeatherProvider>(
      builder: (context, viewModel, child) => viewModel.isLoadingWeatherInfo
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Weather Info Now",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: Sizes.fontSizes['h3'],
                              color: Color(0xff1f344c)),
                        )),
                    Container(
                      width: scaleWidth(context),
                      height: scaleHeight(context) * 0.35,
                      child: Stack(
                        //alignment: Alignment.center,
                        //  textDirection: TextDirection.RTL,
                        fit: StackFit.loose,
                        overflow: Overflow.visible,
                        clipBehavior: Clip.hardEdge,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Sizes.buttonRadius['r3']),
                                gradient: LinearGradient(
                                  end: Alignment.topRight,
                                  begin: Alignment.bottomLeft,
                                  colors: [
                                    // Color(0xff1f344c),
                                    Colors.deepPurple.shade800
                                        .withOpacity(0.6),
                                    Color(0xffb3b3dc),
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              height: scaleHeight(context) * 0.32,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8),
                                        child: Text(
                                          '${DateFormat.yMMMEd().format(DateTime.fromMillisecondsSinceEpoch(viewModel.weatherModel.date * 1000))}',
                                          style: TextStyle(
                                              fontSize: Sizes.fontSizes['h7'],
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '${viewModel.weatherModel.temp.toString()}°',
                                          style: TextStyle(
                                              fontFamily:
                                                  'assets/fonts/OpenSansCondensed-Bold.ttf',
                                              fontSize: Sizes.fontSizes['h1'],
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          '${viewModel.weatherModel.statusWeather}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: Sizes.fontSizes['h5']),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_pin,
                                          size: Sizes.iconsSize['iconS2'],
                                          color: primaryColor,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          width: scaleWidth(context) * 0.65,
                                          height: 30,
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: FittedBox(
                                              child: Text(
                                                "${viewModel.weatherModel.cityName}",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: Sizes.fontSizes['h4'],
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Max/Min',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: Sizes.fontSizes['h6']),
                                        ),
                                        Text(
                                          '${viewModel.weatherModel.temp_max.toString()}°/${viewModel.weatherModel.temp_min.toString()}°',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: Sizes.fontSizes['h9'],
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: scaleHeight(context) * 0.20,
                              width: scaleWidth(context) * 0.35,
                              // color: Colors.yellow,
                              child: Column(
                                children: [
                                  Container(
                                    height: scaleHeight(context) * 0.15,
                                    width: scaleWidth(context) * 0.35,
                                    child: Image.asset(
                                      DateTime.now().hour < 12
                                          ? 'assets/images/morning_time.png'
                                          : 'assets/images/night_time.png',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      '${DateFormat('HH:mm a').format(DateTime.fromMillisecondsSinceEpoch(viewModel.weatherModel.date * 1000))}',
                                      style: TextStyle(
                                          fontSize: Sizes.fontSizes['h7'], color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            "Additional info",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: Sizes.fontSizes['h3'],
                                color: Color(0xff1f344c)),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Wind Speed',
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: Sizes.fontSizes['h6'],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '${viewModel.weatherModel.windSpeed} km/h',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Sizes.fontSizes['h7'],
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Pressure',
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: Sizes.fontSizes['h6'],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '${viewModel.weatherModel.pressure} hPa',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Sizes.fontSizes['h7'],
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Humidity',
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: Sizes.fontSizes['h6'],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '${viewModel.weatherModel.humidity} %',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Sizes.fontSizes['h7'],
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Visibility',
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: Sizes.fontSizes['h6'],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '${viewModel.weatherModel.visibility} km',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Sizes.fontSizes['h7'],
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            "Sunrise and Sunset",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: Sizes.fontSizes['h3'],
                                color: Color(0xff1f344c)),
                          ),
                        )),
                    Container(
                      width: scaleWidth(context),
                      height: scaleHeight(context) * 0.20,
                      child: Stack(
                        //alignment: Alignment.center,
                        //  textDirection: TextDirection.RTL,
                        fit: StackFit.loose,
                        overflow: Overflow.visible,

                        clipBehavior: Clip.hardEdge,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Sizes.buttonRadius['r3']),
                                gradient: LinearGradient(
                                  end: Alignment.topRight,
                                  begin: Alignment.bottomLeft,
                                  colors: [
                                    // Color(0xff1f344c),
                                    Colors.deepPurple.shade800
                                        .withOpacity(0.6),
                                    Color(0xffb3b3dc),
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              height: scaleHeight(context) * 0.15,
                              width: scaleWidth(context),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Sunrise',
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontSize: Sizes.fontSizes['h6'],
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '${DateFormat('HH:mm a').format(DateTime.fromMillisecondsSinceEpoch(viewModel.weatherModel.sunrise * 1000))}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: Sizes.fontSizes['h7'],
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Sunset',
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontSize: Sizes.fontSizes['h6'],
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '${DateFormat('HH:mm a').format(DateTime.fromMillisecondsSinceEpoch(viewModel.weatherModel.sunset * 1000))}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: Sizes.fontSizes['h7'],
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: scaleHeight(context) * 0.21,
                              width: scaleWidth(context) * 0.35,
                              // color: Colors.yellow,
                              child: Image.asset(
                                'assets/images/sun.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10
                    ),
                    adsManager.showBannerAd(),
                  ],
                ),
              ),

              // else if (snapshot.hasError) {
              //   return Text("${snapshot.error}");
              // }
            ),
    );
  }
}
