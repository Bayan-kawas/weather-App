import 'package:weather_app/model/country_model.dart';

class ContinentModel{
  String name;
  String flag;
  bool continentOpened;
  // ignore: non_constant_identifier_names
 final List<CountryModel> countryList;


  // ignore: non_constant_identifier_names
  ContinentModel({this.name,this.flag,this.continentOpened=false,
  this.countryList});

}