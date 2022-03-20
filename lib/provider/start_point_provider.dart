import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:weather_app/history_manager.dart';
import 'package:weather_app/screen/landing_Screen.dart';
import 'package:weather_app/screen/weather_screen.dart';

class StartPointProvider with ChangeNotifier {
  //constructor
  StartPointProvider(context) {
    initialization(context);
  }

  void initialization(context) async {
    try {
      bool isSawLandingScreen = await HistoryManager.instance.getPref();
      getConnectivityStatus();
      var navigationScreen =
          isSawLandingScreen ? WeatherScreen() : LandingScreen();
      navigateToStartUp(context: context, navigationScreen: navigationScreen);
    } catch (e) {
      print(e);
    }
  }

  //get Connectivity Status
  void getConnectivityStatus() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (!(result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile)) {
        print("not exist Internet");
        //show dialog
        showAlertDialog();
      } else {
        print(" exist ");
      }
    });
  }

//show Alert Dialog
  void showAlertDialog() {
    showDialog(
        barrierDismissible: false,
        context: Get.context,
        builder: (_) => WillPopScope(
              onWillPop: () async {
                exitFromApp();
                return false;
              },
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                content: Stack(
                  overflow: Overflow.visible,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                        child: Column(
                          children: [
                           const Text(
                              'No Internet !!!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('check your data connection'),
                            SizedBox(
                              height: 20,
                            ),
                            RaisedButton(
                              color:
                                  Colors.deepPurple.shade800.withOpacity(0.5),
                              child: Text('Okay',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  )),
                              onPressed: () async {
                              checkIfOpenConnectivity();
                              },
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -60,
                      child: CircleAvatar(
                        radius: 55,
                        backgroundColor:
                            Colors.deepPurple.shade800.withOpacity(0.5),
                        child: Icon(
                          Icons.wifi,
                          color: Colors.white,
                          size: 65,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
  //check If Open Internet
  checkIfOpenConnectivity()async{
    var connectivityResult =
    await (Connectivity().checkConnectivity());
    if (connectivityResult ==
        ConnectivityResult.wifi ||
        connectivityResult ==
            ConnectivityResult.mobile) {
      Navigator.pop(Get.context);
    } else {
      exitFromApp();
    }
  }

  //Exit From App
  void exitFromApp(){
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');

  }


//navigate To landingPage Or WeatherPage
  void navigateToStartUp({BuildContext context, navigationScreen}) {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => navigationScreen));
  }

}
