class WeatherModel {
  int temp;
  int temp_max;
  int temp_min;
  String cityName;
  String iconWeather;
  String statusWeather;
  int windSpeed;
  int humidity;
  int pressure;
  double visibility;
  int date;
  int sunrise;
  int sunset;
  WeatherModel(
      {this.statusWeather,
        this.cityName,
        this.temp,
        this.iconWeather,
        this.temp_max,
        this.temp_min,
        this.windSpeed,
        this.humidity,
        this.pressure,
        this.visibility,
        this.date,
        this.sunrise,
        this.sunset
      });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      //set the path in json
      cityName: json['name'],
      statusWeather: json['weather'][0]['main'],
      iconWeather: json['weather'][0]['icon'],
      temp: json['main']['temp'].toInt(),
      temp_max: json['main']['temp_max'].toInt(),
      temp_min: json['main']['temp_min'].toInt(),
      windSpeed: (json['wind']['speed']*3.6).round(),
      humidity: json['main']['humidity'].toInt(),
      pressure:json['main']['pressure'].toInt(),
      visibility:json['visibility']/1000,
      date:json['dt'],
      sunrise: json['sys']['sunrise'],
      sunset: json['sys']['sunset'],
    );
  }
}
