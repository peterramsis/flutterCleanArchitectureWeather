import 'package:last_project_clean/Weather/domain/entities/Weather.dart';

abstract class BaseWeatherRepository{
  Future<Weather> getWeatherByCityName(String cityName);
}