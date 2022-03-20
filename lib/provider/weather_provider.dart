import 'package:flutter/cupertino.dart';
import 'package:weather_app/Component/home_body_component.dart';
import 'package:weather_app/Repos/weatherRepo.dart';
import 'package:weather_app/model/continent_model.dart';
import 'package:weather_app/model/country_model.dart';
import 'package:weather_app/model/weather_current_location_model.dart';
import 'package:weather_app/services/location_services.dart';
import 'package:weather_app/utils.dart';
import 'package:weather_app/Component/info_weather_body_component.dart';
import 'package:weather_app/Component/my_location_body_component.dart';
import 'package:weather_app/Component/search_body_component.dart';
import '../enums_app.dart';

class WeatherProvider with ChangeNotifier {
  //Constructor
  // WeatherProvider() {
  //   initialization();
  // }

//Data
  List<ContinentModel> continents = continentsList;
  List<String> searchListCountry = [
    "Algeria",
    "Bahrain",
    "Comoros",
    "Djibouti",
    "Iraq",
    "Jordan",
    "Kuwait",
    "Lebanon",
    "Libya",
    "Mauritania",
    "Morocco",
    "Oman",
    'Qatar',
    "Saudi Arabia",
    "Somalia",
    "Sudan",
    "Syria",
    "Tunisia",
    "United Arab Emirates",
    "Yemen",
  ];
  List<String> searchListCity = [
    "cairo",
    "Alexandria",
    "Damascus",
    "Dubai",
  ];
  WeatherModel weatherModel;

  //variable checkers
  String currentLocation;
  int currentCountryIndex;
  int currentContinentIndex;
  int currentIndexscreen = 0;
  int previousIndexPage = 0;
  bool poppedBack = false;
  int itemIndex;
  bool isPermissionTook = false;
  bool isLoadingWeatherInfo = false;
  bool isSelectMyLocationButton = false;

//TextEditingController
  TextEditingController searchController = TextEditingController();

  //getListScreens
  List<Widget> getListScreens() {
    return [
      HomeBodyComponent(),
      SearchBodyComponent(),
      isPermissionTook==true||currentLocation!=null?InfoWeatherBodyComponent():MyLocationBodyComponent(),
    ];
  }

//check if Country opened or continent opened
  void checkIsOpened(
      {CountryModel countryModel,
      ContinentModel continentModel,
      modelOpen modelopen}) {
    if (modelopen == modelOpen.countryModel)
      countryModel.citiesOpened = !countryModel.citiesOpened;
    if (modelopen == modelOpen.continentsModel)
      continentModel.continentOpened = !continentModel.continentOpened;
    notifyListeners();
  }

  //Asked permission Location
  Future<void> askForPermission() async {
    isPermissionTook = await LocationServices.instance.handlePermission();
    notifyListeners();
  }

//open  Country content or Country content
  void onPressedCountry({List<CountryModel> contryList, int countryIndex}) {
    if (contryList[countryIndex].citiesOpened) {
      checkIsOpened(
          countryModel: contryList[countryIndex],
          modelopen: modelOpen.countryModel);

      currentCountryIndex = null;
    } else {
      if (currentCountryIndex != null) {
        checkIsOpened(
            countryModel: contryList[currentCountryIndex],
            modelopen: modelOpen.countryModel);
      }
      currentCountryIndex = countryIndex;
      checkIsOpened(
          countryModel: contryList[countryIndex],
          modelopen: modelOpen.countryModel);
    }
    notifyListeners();
  }

//open  Continents content or Continents content
  void onPressedContinents(
      {List<ContinentModel> ContinenList, int ContinenIndex}) {
    if (ContinenList[ContinenIndex].continentOpened) {
      if (currentCountryIndex != null) {
        checkIsOpened(
            countryModel:
                ContinenList[ContinenIndex].countryList[currentCountryIndex],
            modelopen: modelOpen.countryModel);

        currentCountryIndex = null;
      }

      checkIsOpened(
          continentModel: continents[ContinenIndex],
          modelopen: modelOpen.continentsModel);
      currentContinentIndex = null;
    } else {
      if (currentContinentIndex != null) {
        checkIsOpened(
            continentModel: continents[currentContinentIndex],
            modelopen: modelOpen.continentsModel);
      }
      print(ContinenList[ContinenIndex].name);

      if (currentCountryIndex != null) {
        checkIsOpened(
            countryModel: ContinenList[currentContinentIndex]
                .countryList[currentCountryIndex],
            modelopen: modelOpen.countryModel);
        currentCountryIndex = null;
      }

      currentContinentIndex = ContinenIndex;
      checkIsOpened(
          continentModel: continents[ContinenIndex],
          modelopen: modelOpen.continentsModel);
    }

    notifyListeners();
  }

// get weather api
  Future<WeatherModel> getWeather({location}) async {

    isLoadingWeatherInfo = true;
    try {
      weatherModel = await WeatherRepo.instance.fetchWeatherReport(location);
    } catch (e) {
    }
    isLoadingWeatherInfo = false;
    notifyListeners();
  }

//change Current Screen
 void changeCurrentScreen(index) async {
    currentIndexscreen = index;
    if(currentIndexscreen==2){
      //ToDo ask for permission
       openMyLocation();
    }
    notifyListeners();
  }

  //navigate drawer
  drawerNavigator(index, context) {
    changeCurrentScreen(index);
    Navigator.pop(context);
    notifyListeners();
  }

// on search
  void fillGrideView() {
    if (searchController.text.trim().isNotEmpty) {
      searchListCountry.clear();
      searchListCity.clear();
      searchByCityOrCountry(searchController.text.trim());
      print(searchListCity);
      print(searchListCountry);

      notifyListeners();
    }
  }

//search char By City Or Country
  void searchByCityOrCountry(searchWord) {
    continents.forEach((element) {
      element.countryList.forEach((element) {
        if (element.name.contains(searchWord)) {
          searchListCountry.add(element.name);
        }
        if (element.cities != null && element.cities.length > 0) {
          element.cities.forEach((element) {
            if (element.name.contains(searchWord)) {
              searchListCity.add(element.name);
            }
          });
        }
      });
    });
  }

  //return Number Of City In Continents
  String getNumberOfCityInContinents(ContinentModel continent) {
    var lengthOfCity = 0;
    continent.countryList.forEach((element) {
      if (element.cities != null && element.cities.length > 0)
        lengthOfCity = lengthOfCity + element.cities.length;
    });
    return lengthOfCity.toString();
  }

  void openMyLocation()  async{

    await askForPermission();
    if(isPermissionTook==true){
      getCurrentLocation();
    }


   // if (isPermissionTook==false) {
    //  await askForPermission();
    //   getCurrentLocation();
    // }else{
    //   getCurrentLocation();
    // }
    notifyListeners();
  }

  void getCurrentLocation()async{

    isSelectMyLocationButton = true;
    isLoadingWeatherInfo = true;
    notifyListeners();
    try {
      weatherModel = await WeatherRepo.instance.getCurrentLocation();
      currentIndexscreen = 2;
      isLoadingWeatherInfo = false;
      isSelectMyLocationButton = false;
      notifyListeners();
    } catch (e) {
      print("error");
    }
  }

  void clearSearchController() {
    searchController.clear();
    notifyListeners();
  }

//change index to Information Card
  navigateToInfoCard(location) async {
    currentLocation=location;
    getWeather(location: location);
    currentIndexscreen = 2;
    notifyListeners();
  }

//control on back device button
 backToLastPage(){
  if (poppedBack == false) {
    poppedBack =!poppedBack;
    changeCurrentScreen(previousIndexPage);
  }else{
    poppedBack = !poppedBack;
    changeCurrentScreen(0);
  }
}

}

