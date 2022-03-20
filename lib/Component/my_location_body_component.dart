import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/ads_manager.dart';
import 'package:weather_app/provider/weather_provider.dart';
import '../sizes.dart';

class MyLocationBodyComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // myBanner.load();
    AdsManager adsManager=Provider.of<AdsManager>(context,listen:true);
    return Consumer<WeatherProvider>(builder: (context, viewModel, child) =>
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Text(
              "Weather now for my location",
              style: TextStyle(
                  fontSize: Sizes.fontSizes['h5'],
                  color: Colors.deepPurple.shade800.withOpacity(0.9)),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          viewModel.isSelectMyLocationButton? CircularProgressIndicator():
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              child:ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  elevation: 5,
                  fixedSize: Size(double.infinity, Sizes.heightSizeBoxes['boxS6']),
                ),
                onPressed: () async{
                    viewModel.openMyLocation();
                },
                child: Text(
                  'Weather For My Location',
                  style: TextStyle(fontSize: Sizes.fontSizes['h7']),
                ),
              ),
            ),
          ),
          SizedBox(height: Sizes.heightSizeBoxes['boxS4'],),
          adsManager.showBannerAd(),
        ],
      ),
    );
  }
}
