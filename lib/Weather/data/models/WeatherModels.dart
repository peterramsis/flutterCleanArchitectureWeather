import 'package:last_project_clean/Weather/domain/entities/Weather.dart';

class WeatherModel extends Weather
{
  WeatherModel(super.id, super.cityName, super.description, super.main, super.pressure);
  factory WeatherModel.fromJson(Map<String,dynamic> json)=> WeatherModel(json['id'], json['name'], json['weather'][0]['description'], json['weather'][0]['main'], json['main']['pressure']);
}