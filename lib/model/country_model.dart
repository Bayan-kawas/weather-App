import 'cities_model.dart';
class CountryModel{
  final String name;
  final String flag;
  List<CitiesModel> cities;
  bool citiesOpened;
  CountryModel({ this.name, this.flag , this.cities ,this.citiesOpened=false,});


}
