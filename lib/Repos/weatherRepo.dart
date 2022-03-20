import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/model/weather_current_location_model.dart';
import 'package:http/http.dart' as http;



class WeatherRepo{
  WeatherRepo._();
 static final instance =WeatherRepo._();
  String key ='af11b78f76a913211d71120bc7db72c0';


  Future<WeatherModel> fetchWeatherReport(location)async{
    Uri url=Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$location&units=metric&appid=$key');

   var response = await http.get(url);
    print(response.body);
    if(response.statusCode==200){
      return WeatherModel.fromJson(jsonDecode(response.body),);
    }
    else{
      throw Exception("City Name Not Found Check Spelling");
    }

  }

  Future<WeatherModel> getCurrentLocation() async {
     Position position=await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
     Uri url=Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&units=metric&appid=$key');
     var response = await http.get(url);
     print(response.body);
     if(response.statusCode==200){
       return WeatherModel.fromJson(jsonDecode(response.body),);
     }
     else{
       throw Exception("City Name Not Found Check Spelling");
     }

  }




}



